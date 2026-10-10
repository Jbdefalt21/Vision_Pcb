param(
    [string]$Raiz = (Split-Path -Parent $PSScriptRoot)
)

# Validador local de lectura. No instala, publica ni modifica archivos.
$ErrorActionPreference = 'Stop'
$raizProyecto = (Resolve-Path -LiteralPath $Raiz).Path
$incidencias = [System.Collections.Generic.List[string]]::new()
$archivos = @(Get-Item -LiteralPath (Join-Path $raizProyecto 'README.md'),
    (Join-Path $raizProyecto 'AGENTS.md'), (Join-Path $raizProyecto 'GEMINI.md'),
    (Join-Path $raizProyecto 'CLAUDE.md'))
$archivos += @(Get-ChildItem -LiteralPath (Join-Path $raizProyecto 'docs'),
    (Join-Path $raizProyecto 'cerebro') -Recurse -File -Filter '*.md' |
    Where-Object { $_.FullName -notmatch '[\\/](\.obsidian|\.trash)[\\/]' })
$enlaces = 0

foreach ($archivo in $archivos) {
    $contenido = Get-Content -LiteralPath $archivo.FullName -Raw -Encoding UTF8
    # Los ejemplos dentro de bloques de código no son enlaces navegables.
    $texto = [regex]::Replace($contenido, '(?ms)^```[^\r\n]*\r?\n.*?^```[^\r\n]*$', '')
    foreach ($coincidencia in [regex]::Matches($texto, '\[[^\]\r\n]+\]\(([^)]+)\)')) {
        $destino = $coincidencia.Groups[1].Value.Trim().Trim('<', '>')
        if ($destino -match '^[a-zA-Z][a-zA-Z0-9+.-]*:|^#') { continue }
        $destino = [uri]::UnescapeDataString(($destino -split '#')[0])
        $enlaces++
        if (-not (Test-Path -LiteralPath (Join-Path $archivo.DirectoryName $destino))) {
            $incidencias.Add("Enlace ausente en $($archivo.Name): $destino")
        }
    }
    foreach ($coincidencia in [regex]::Matches($texto, '\[\[([^\]|]+)(?:\|[^\]]+)?\]\]')) {
        $destino = ($coincidencia.Groups[1].Value -split '#')[0]
        if (-not $destino.EndsWith('.md')) { $destino += '.md' }
        $enlaces++
        if (-not (Test-Path -LiteralPath (Join-Path (Join-Path $raizProyecto 'cerebro') $destino))) {
            $incidencias.Add("Enlace Obsidian ausente en $($archivo.Name): $destino")
        }
    }
}

$indiceBitacora = Get-Content -LiteralPath (Join-Path $raizProyecto 'cerebro/03_Bitacora/Indice.md') -Raw -Encoding UTF8
foreach ($nota in Get-ChildItem -LiteralPath (Join-Path $raizProyecto 'cerebro/03_Bitacora') -File -Filter '*.md') {
    if ($nota.BaseName -notin @('Indice', 'Plantilla') -and
        -not $indiceBitacora.Contains("03_Bitacora/$($nota.BaseName)")) {
        $incidencias.Add("Bitacora sin indexar: $($nota.Name)")
    }
}
$indiceManuales = Get-Content -LiteralPath (Join-Path $raizProyecto 'cerebro/08_Manuales/00_INDICE_GENERAL.md') -Raw -Encoding UTF8
foreach ($nota in Get-ChildItem -LiteralPath (Join-Path $raizProyecto 'cerebro/08_Manuales') -File -Filter '*.md') {
    if ($nota.BaseName -ne '00_INDICE_GENERAL' -and -not $indiceManuales.Contains("08_Manuales/$($nota.BaseName)")) {
        $incidencias.Add("Manual sin indexar: $($nota.Name)")
    }
}

$nuevos = @(& git -C $raizProyecto ls-files --others --exclude-standard)
if ($LASTEXITCODE -ne 0) { throw 'No se pudo obtener lista de archivos nuevos.' }
$modificados = @(& git -C $raizProyecto diff --name-only --diff-filter=ACM)
if ($LASTEXITCODE -ne 0) { throw 'No se pudo obtener lista de cambios.' }
$afectados = @(@($nuevos) + @($modificados) | Sort-Object -Unique)
foreach ($ruta in $afectados) {
    if ($ruta -notmatch '\.(md|ps1)$') {
        $incidencias.Add("Archivo afectado fuera del alcance documental esperado: $ruta")
        continue
    }
    $contenido = Get-Content -LiteralPath (Join-Path $raizProyecto $ruta) -Raw -Encoding UTF8
    if ($contenido -match '(?m)[ \t]+\r?$|^(<<<<<<<|=======|>>>>>>>)') {
        $incidencias.Add("Espacios finales o marcadores de conflicto: $ruta")
    }
    if ($contenido -match '-----BEGIN (?:RSA |OPENSSH |EC )?PRIVATE KEY-----|gh[pousr]_[A-Za-z0-9]{20,}|AKIA[0-9A-Z]{16}') {
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

Write-Output "Markdown: $($archivos.Count); enlaces locales: $enlaces; nuevos: $($nuevos.Count); afectados revisados: $($afectados.Count); patrones de exclusion: $($debenIgnorarse.Count + $debenConservarse.Count); incidencias: $($incidencias.Count)"
Write-Output 'Limites: no valida anchors, enlaces externos, render visual, carga de clientes IA ni todos los formatos de secretos.'
if ($incidencias.Count -gt 0) {
    $incidencias | Write-Output
    exit 1
}
exit 0
