param(
    [string]$Raiz = (Split-Path -Parent $PSScriptRoot),
    # Rutas relativas exactas, solo sin seguimiento. No cambia .gitignore ni el staging.
    # Mantienen controles de enlaces, formato, secretos y exclusion; los tipos
    # auxiliares no soportados se informan sin validar su estructura interna.
    [string[]]$ArchivosLocalesNoPublicables = @()
)

# Validador local de lectura. No instala, publica ni modifica archivos.
$ErrorActionPreference = 'Stop'
$raizProyecto = (Resolve-Path -LiteralPath $Raiz).Path
$incidencias = [System.Collections.Generic.List[string]]::new()
$enlaces = 0
$raizBoveda = [IO.Path]::GetFullPath((Join-Path $raizProyecto 'cerebro'))

function Test-RutaBoveda([string]$Destino, [string]$Origen) {
    try { $rutaDestino = [IO.Path]::GetFullPath((Join-Path $raizBoveda $Destino)) }
    catch { $incidencias.Add("Ruta de boveda invalida en $Origen"); return $false }
    if ([IO.Path]::IsPathRooted($Destino) -or
        -not $rutaDestino.StartsWith($raizBoveda + [IO.Path]::DirectorySeparatorChar, [StringComparison]::OrdinalIgnoreCase)) {
        $incidencias.Add("Ruta fuera de la boveda en $Origen"); return $false
    }
    return $true
}

function Test-EnlacesLocales([string]$Contenido, [string]$Directorio, [string]$Origen) {
    # Los ejemplos dentro de bloques de codigo no son enlaces navegables.
    $texto = [regex]::Replace($Contenido, '(?ms)^```[^\r\n]*\r?\n.*?^```[^\r\n]*$', '')
    foreach ($coincidencia in [regex]::Matches($texto, '\[[^\]\r\n]+\]\(([^)]+)\)')) {
        $destino = $coincidencia.Groups[1].Value.Trim().Trim('<', '>')
        if ($destino -match '^[a-zA-Z][a-zA-Z0-9+.-]*:|^#') { continue }
        $destino = [uri]::UnescapeDataString(($destino -split '#')[0])
        $script:enlaces++
        if (-not (Test-Path -LiteralPath (Join-Path $Directorio $destino))) {
            $incidencias.Add("Enlace ausente en ${Origen}: $destino")
        }
    }
    foreach ($coincidencia in [regex]::Matches($texto, '\[\[([^\]|]+)(?:\|[^\]]+)?\]\]')) {
        $destino = ($coincidencia.Groups[1].Value -split '#')[0]
        if (-not [IO.Path]::GetExtension($destino)) { $destino += '.md' }
        $script:enlaces++
        if (-not (Test-RutaBoveda $destino $Origen)) { continue }
        if (-not (Test-Path -LiteralPath (Join-Path (Join-Path $raizProyecto 'cerebro') $destino))) {
            $incidencias.Add("Enlace Obsidian ausente en ${Origen}: $destino")
        }
    }
}

function Test-CamposTexto($Objeto, [string[]]$Obligatorios, [string[]]$Opcionales, [string]$Origen) {
    foreach ($campo in $Obligatorios) {
        if ($Objeto.PSObject.Properties.Name -cnotcontains $campo -or $Objeto.$campo -isnot [string]) {
            $incidencias.Add("Canvas: campo requerido $campo debe existir y ser texto en $Origen")
        }
    }
    foreach ($campo in $Opcionales) {
        if ($Objeto.PSObject.Properties.Name -ccontains $campo -and $Objeto.$campo -isnot [string]) {
            $incidencias.Add("Canvas: campo opcional $campo debe ser texto en $Origen")
        }
    }
}

function Test-Canvas([string]$Contenido, [string]$Ruta) {
    # JSON Canvas 1.0: https://jsoncanvas.org/spec/1.0/ . nodes y edges son opcionales.
    try { $canvas = ConvertFrom-Json -InputObject $Contenido -ErrorAction Stop }
    catch { $incidencias.Add("Canvas: JSON invalido en $Ruta"); return }
    if (-not $Contenido.TrimStart().StartsWith('{') -or $canvas -isnot [pscustomobject]) {
        $incidencias.Add("Canvas: la raiz debe ser un objeto JSON en $Ruta"); return
    }
    foreach ($campo in @('nodes', 'edges')) {
        if ($canvas.PSObject.Properties.Name -ccontains $campo -and $canvas.$campo -isnot [array]) {
            $incidencias.Add("Canvas: $campo debe ser un array en $Ruta"); return
        }
    }
    $idsNodos = [Collections.Generic.HashSet[string]]::new([StringComparer]::Ordinal)
    $idsAristas = [Collections.Generic.HashSet[string]]::new([StringComparer]::Ordinal)
    foreach ($nodo in $canvas.nodes) {
        if ($nodo -isnot [pscustomobject]) { $incidencias.Add("Canvas: nodo debe ser objeto en $Ruta"); continue }
        Test-CamposTexto $nodo @('id', 'type') @('color') $Ruta
        if ([string]::IsNullOrWhiteSpace($nodo.id) -or -not $idsNodos.Add([string]$nodo.id)) {
            $incidencias.Add("Canvas: ID de nodo vacio o repetido en $Ruta")
        }
        foreach ($campo in @('x', 'y', 'width', 'height')) {
            if ($nodo.PSObject.Properties.Name -cnotcontains $campo -or
                ($nodo.$campo -isnot [int] -and $nodo.$campo -isnot [long])) {
                $incidencias.Add("Canvas: $campo debe ser entero en $Ruta")
            }
        }
        foreach ($campo in @('width', 'height')) {
            if (($nodo.$campo -is [int] -or $nodo.$campo -is [long]) -and $nodo.$campo -le 0) {
                $incidencias.Add("Canvas: $campo debe ser positivo en $Ruta")
            }
        }
        if ($nodo.PSObject.Properties.Name -ccontains 'color' -and $nodo.color -cnotmatch '^(#[0-9A-Fa-f]{6}|[1-6])$') {
            $incidencias.Add("Canvas: color invalido en $Ruta")
        }
        switch -CaseSensitive ($nodo.type) {
            'text' {
                Test-CamposTexto $nodo @('text') @() $Ruta
                if ($nodo.text -is [string]) {
                    Test-EnlacesLocales $nodo.text (Split-Path -Parent (Join-Path $raizProyecto $Ruta)) "$Ruta (tarjeta)"
                }
            }
            'file' {
                Test-CamposTexto $nodo @('file') @('subpath') $Ruta
                if ($nodo.PSObject.Properties.Name -ccontains 'subpath' -and $nodo.subpath -notlike '#*') {
                    $incidencias.Add("Canvas: subpath debe empezar con # en $Ruta")
                }
            }
            'link' { Test-CamposTexto $nodo @('url') @() $Ruta }
            'group' {
                Test-CamposTexto $nodo @() @('label', 'background', 'backgroundStyle') $Ruta
                if ($nodo.PSObject.Properties.Name -ccontains 'backgroundStyle' -and
                    $nodo.backgroundStyle -cnotin @('cover', 'ratio', 'repeat')) {
                    $incidencias.Add("Canvas: backgroundStyle invalido en $Ruta")
                }
            }
            default { $incidencias.Add("Canvas: tipo de nodo desconocido en $Ruta") }
        }
        foreach ($campo in @('file', 'background')) {
            if ($nodo.PSObject.Properties.Name -ccontains $campo -and $nodo.$campo -is [string]) {
                if (-not (Test-RutaBoveda $nodo.$campo $Ruta)) { continue }
                $enlaceArchivo = Join-Path (Join-Path $raizProyecto 'cerebro') $nodo.$campo
                if (-not (Test-Path -LiteralPath $enlaceArchivo -PathType Leaf)) {
                    $incidencias.Add("Canvas: archivo local ausente en $Ruta (campo $campo)")
                }
            }
        }
    }
    foreach ($arista in $canvas.edges) {
        if ($arista -isnot [pscustomobject]) { $incidencias.Add("Canvas: arista debe ser objeto en $Ruta"); continue }
        Test-CamposTexto $arista @('id', 'fromNode', 'toNode') @('fromSide', 'toSide', 'fromEnd', 'toEnd', 'color', 'label') $Ruta
        if ([string]::IsNullOrWhiteSpace($arista.id) -or -not $idsAristas.Add([string]$arista.id)) {
            $incidencias.Add("Canvas: ID de arista vacio o repetido en $Ruta")
        }
        foreach ($campo in @('fromNode', 'toNode')) {
            if (-not $idsNodos.Contains([string]$arista.$campo)) { $incidencias.Add("Canvas: $campo no existe en $Ruta") }
        }
        foreach ($campo in @('fromSide', 'toSide')) {
            if ($arista.PSObject.Properties.Name -ccontains $campo -and $arista.$campo -cnotin @('top', 'right', 'bottom', 'left')) {
                $incidencias.Add("Canvas: $campo invalido en $Ruta")
            }
        }
        foreach ($campo in @('fromEnd', 'toEnd')) {
            if ($arista.PSObject.Properties.Name -ccontains $campo -and $arista.$campo -cnotin @('none', 'arrow')) {
                $incidencias.Add("Canvas: $campo invalido en $Ruta")
            }
        }
        if ($arista.PSObject.Properties.Name -ccontains 'color' -and $arista.color -cnotmatch '^(#[0-9A-Fa-f]{6}|[1-6])$') {
            $incidencias.Add("Canvas: color de arista invalido en $Ruta")
        }
    }
}

$archivos = @(Get-Item -LiteralPath (Join-Path $raizProyecto 'README.md'),
    (Join-Path $raizProyecto 'AGENTS.md'), (Join-Path $raizProyecto 'GEMINI.md'),
    (Join-Path $raizProyecto 'CLAUDE.md'))
$archivos += @(Get-ChildItem -LiteralPath (Join-Path $raizProyecto 'docs'),
    (Join-Path $raizProyecto 'cerebro') -Recurse -File -Filter '*.md' |
    Where-Object { $_.FullName -notmatch '[\\/](\.obsidian|\.trash)[\\/]' })
foreach ($archivo in $archivos) {
    $contenido = [IO.File]::ReadAllText($archivo.FullName)
    Test-EnlacesLocales $contenido $archivo.DirectoryName $archivo.Name
}

$indiceBitacora = [IO.File]::ReadAllText((Join-Path $raizProyecto 'cerebro/03_Bitacora/Indice.md'))
foreach ($nota in Get-ChildItem -LiteralPath (Join-Path $raizProyecto 'cerebro/03_Bitacora') -File -Filter '*.md') {
    if ($nota.BaseName -notin @('Indice', 'Plantilla') -and
        -not $indiceBitacora.Contains("03_Bitacora/$($nota.BaseName)")) {
        $incidencias.Add("Bitacora sin indexar: $($nota.Name)")
    }
}
$indiceManuales = [IO.File]::ReadAllText((Join-Path $raizProyecto 'cerebro/08_Manuales/00_INDICE_GENERAL.md'))
foreach ($nota in Get-ChildItem -LiteralPath (Join-Path $raizProyecto 'cerebro/08_Manuales') -File -Filter '*.md') {
    if ($nota.BaseName -ne '00_INDICE_GENERAL' -and -not $indiceManuales.Contains("08_Manuales/$($nota.BaseName)")) {
        $incidencias.Add("Manual sin indexar: $($nota.Name)")
    }
}

$nuevos = @(& git -c core.quotepath=false -C $raizProyecto ls-files --others --exclude-standard)
if ($LASTEXITCODE -ne 0) { throw 'No se pudo obtener lista de archivos nuevos.' }
$modificados = @(& git -c core.quotepath=false -C $raizProyecto diff --name-only --diff-filter=ACM)
if ($LASTEXITCODE -ne 0) { throw 'No se pudo obtener lista de cambios.' }
$preparados = @(& git -c core.quotepath=false -C $raizProyecto diff --cached --name-only --diff-filter=ACM)
if ($LASTEXITCODE -ne 0) { throw 'No se pudo obtener lista de archivos preparados.' }
$locales = @($ArchivosLocalesNoPublicables | Sort-Object -Unique)
foreach ($ruta in $locales) {
    if ($ruta -cnotin $nuevos) {
        $incidencias.Add("Archivo local no publicable debe existir sin seguimiento: $ruta")
    }
}
$afectados = @(@($nuevos) + @($modificados) + @($preparados) | Sort-Object -Unique)
$marcadores = 0
$lienzos = 0
$auxiliaresSinEstructura = [Collections.Generic.List[string]]::new()
foreach ($ruta in $afectados) {
    $rutaCompleta = Join-Path $raizProyecto $ruta
    $contenido = [IO.File]::ReadAllText($rutaCompleta)
    if ([IO.Path]::GetFileName($ruta) -ceq '.gitkeep') {
        $marcadores++
        if ((Get-Item -LiteralPath $rutaCompleta).Length -ne 0) { $incidencias.Add("Marcador .gitkeep no vacio: $ruta") }
    }
    elseif ([IO.Path]::GetExtension($ruta) -ieq '.canvas') {
        $lienzos++
        Test-Canvas $contenido $ruta
    }
    elseif ($ruta -notmatch '\.(md|ps1)$') {
        if ($ruta -cin $locales -and $ruta -cin $nuevos) { $auxiliaresSinEstructura.Add($ruta) }
        else { $incidencias.Add("Archivo afectado fuera del alcance documental esperado: $ruta") }
    }
    if ($contenido -match '(?m)[ \t]+\r?$|^(<<<<<<<|=======|>>>>>>>)') {
        $incidencias.Add("Espacios finales o marcadores de conflicto: $ruta")
    }
    if ($contenido -match '-----BEGIN (?:RSA |OPENSSH |EC )?PRIVATE KEY-----|gh[pousr]_[A-Za-z0-9]{20,}|github_pat_[A-Za-z0-9_]{20,}|AKIA[0-9A-Z]{16}') {
        $incidencias.Add("Posible secreto; revisar sin imprimir su valor: $ruta")
    }
    & git -C $raizProyecto check-ignore --no-index -q -- $ruta
    if ($LASTEXITCODE -eq 0) { $incidencias.Add("Archivo documental afectado ignorado: $ruta") }
    elseif ($LASTEXITCODE -ne 1) { throw "Error consultando exclusion: $ruta" }
}

# Rutas hipotéticas: no se crean archivos de credenciales ni de prueba.
$debenIgnorarse = @('.env', '.env.local', '.venv/prueba.txt', 'credentials.json',
    'cerebro/.obsidian/workspace.json', '.vscode/settings.json', 'data/samples/prueba.png', 'prueba.mp4')
$debenConservarse = @('.env.example', 'data/samples/.gitkeep', 'README.md',
    'docs/colaboracion/CATALOGO_PROCEDIMIENTOS.md', 'cerebro/08_Manuales/00_INDICE_GENERAL.md')
foreach ($ruta in $debenIgnorarse + $debenConservarse) {
    & git -C $raizProyecto check-ignore --no-index -q -- $ruta
    $codigo = $LASTEXITCODE
    if ($codigo -notin @(0, 1)) { throw "Error consultando patrón: $ruta" }
    if (($ruta -in $debenIgnorarse -and $codigo -ne 0) -or
        ($ruta -in $debenConservarse -and $codigo -ne 1)) {
        $incidencias.Add("Exclusion inesperada: $ruta")
    }
}
& git -C $raizProyecto diff --check
if ($LASTEXITCODE -ne 0) { $incidencias.Add('git diff --check informó errores.') }
& git -C $raizProyecto diff --cached --check
if ($LASTEXITCODE -ne 0) { $incidencias.Add('git diff --cached --check informo errores.') }

Write-Output "Markdown: $($archivos.Count); enlaces locales: $enlaces; nuevos: $($nuevos.Count); afectados revisados: $($afectados.Count); patrones de exclusion: $($debenIgnorarse.Count + $debenConservarse.Count); incidencias: $($incidencias.Count)"
Write-Output "Auxiliares: .gitkeep revisados: $marcadores; Canvas revisados: $lienzos; preparados incluidos en revision: $($preparados.Count)."
Write-Output "Locales no publicables declarados: $($locales.Count). Se conservan y no se ocultan; este script no prepara archivos."
$locales | ForEach-Object { Write-Output "Local no publicable: $_" }
$auxiliaresSinEstructura | ForEach-Object { Write-Output "Auxiliar local sin validacion estructural: $_" }
Write-Output 'Limites: enlaces comprobados por expresiones regulares; no valida anchors, enlaces externos, render visual, carga de clientes IA ni todos los formatos de secretos. Canvas: estructura basica JSON Canvas 1.0, IDs, referencias y rutas locales; no extensiones de plugins ni disposicion visual. Los tipos auxiliares locales declarados no soportados solo reciben controles de formato, secretos y exclusion. Se revisan contenidos del disco; comparar exactamente staging y disco antes de publicar.'
if ($incidencias.Count -gt 0) {
    $incidencias | Write-Output
    exit 1
}
exit 0
