# Instalación desde cero en Windows

Guía de reconstrucción para una fase autorizada. No se instaló ni descargó nada durante esta intervención. La ayuda local verificó sintaxis Git; no verificó acceso al repositorio privado ni instalación en otra computadora. Python no tiene versión acordada y el lanzador local no encontró un Python predeterminado.

## 1. Preparar accesos y versiones

Pedir al administrador URL oficial del repositorio, permiso de colaborador, rama de incorporación y política de revisión. Cada integrante utiliza su propia cuenta; no compartir contraseña, token o sesión. Registrar Windows, Git, editor y clientes utilizados cuando se comprueben. No asumir que los tres necesitan suscripción idéntica ni que las herramientas están permitidas por la universidad.

Fuentes oficiales para consultar en una fase con red autorizada: git-scm.com (Git), code.visualstudio.com (VS Code), python.org (Python), obsidian.md (Obsidian), docs.github.com (autenticación). Para IA ver [[08_Manuales/05_GUIA_CODEX_GEMINI_CLAUDE|Asistentes]]. No fueron consultadas ahora; los requisitos e instaladores actuales quedan por verificar. Evitar scripts de descarga automática sin revisión.

## 2. Git y editor

Instalar desde fuentes oficiales mediante sus instaladores vigentes, revisar opciones y abrir una terminal nueva. En PowerShell:

```powershell
Get-Command git,code -ErrorAction SilentlyContinue
git --version
```

Get-Command comprueba resolución en PATH; no garantiza que la aplicación gráfica funcione. En la auditoría Git respondió 2.53.0.windows.2 y code.cmd fue localizable, sin prueba de apertura de VS Code. Para abrir el proyecto, usar Archivo → Abrir carpeta; `code .` es una opción solo si el comando está disponible.

## 3. Autenticación y clonado privado

Elegir HTTPS con el mecanismo autorizado de credenciales o SSH con clave personal según política del equipo y documentación vigente. Identidad de commit y autenticación son distintas. No incluir token en URL, comando, .env.example o notas. La verificación real de permisos requiere red autorizada.

```powershell
# EJEMPLO REMOTO: no ejecutado aquí. Sustituir URL sin incluir secretos.
# El destino debe ser una carpeta nueva, no una copia existente con cambios.
git clone 'URL_DEL_REPOSITORIO' 'C:\vision-pcb\Vision_Pcb'
Set-Location 'C:\vision-pcb\Vision_Pcb'
git status --short
git branch --show-current
```

Si clone falla, leer mensaje antes de repetir; no cambiar a repositorio público por conveniencia. Clonar no entrega cambios locales aún no publicados. Confirmar con el administrador qué commit contiene manuales y procedimientos.

## 4. Identidad Git

Desde el clon, comprobar valores existentes. Configurar únicamente datos confirmados, preferiblemente por repositorio si hay identidades distintas:

```powershell
git config --get user.name
git config --get user.email
# ESCRITURA LOCAL: sustituir valores y ejecutar solo cuando esté autorizado.
git config --local user.name 'NOMBRE_CONFIRMADO'
git config --local user.email 'CORREO_CONFIRMADO'
```

Los textos en mayúsculas son marcadores, no valores a guardar. No inventar un correo para superar un error. Si se necesita privacidad, verificar el correo de privacidad válido de la cuenta. No modificar autoría de commits anteriores sin acuerdo.

## 5. Rama de trabajo

El administrador debe publicar primero los cambios aprobados. Si feature/sistema-skills no aparece en una copia actualizada, no crear otra rama vacía con ese nombre para «recibir» el trabajo. Con árbol limpio y red autorizada, fetch puede actualizar referencias; comprobar con `git branch -a`. Si existe origin/feature/sistema-skills y no la local, `git switch --track origin/feature/sistema-skills` es un ejemplo de cambio local autorizado. En esta intervención está prohibido cambiar la rama activa.

## 6. Python y entorno virtual: condicionado

El equipo debe acordar versión y dependencias antes de instalar. El proyecto no tiene requirements ni pyproject. `Get-Command python,py -ErrorAction SilentlyContinue` y `py --version` permiten diagnosticar disponibilidad; aquí py existe pero respondió «Can't find a default Python» con salida 1. No confundir lanzador con intérprete.

Después de instalar y verificar una versión acordada, la sintaxis convencional a confirmar con ese intérprete es:

```powershell
# EJEMPLO PENDIENTE: requiere Python utilizable y autorización.
py -m venv .venv
.\.venv\Scripts\python.exe --version
```

Estos comandos de venv no se ejecutaron ni validaron funcionalmente aquí. Usar directamente el Python del entorno evita depender de activación o modificar políticas de ejecución de PowerShell. Seleccionarlo en VS Code cuando corresponda. No ejecutar pip install hasta tener dependencias acordadas y autorización. .venv está ignorado.

## 7. Obsidian y asistentes

Abrir cerebro/ como bóveda existente y verificar el Dashboard; no crear una carpeta anidada. Configuración personal no se comparte por Git. Instalar cada cliente IA únicamente desde documentación oficial verificada de su modalidad, con credenciales propias y permisos mínimos necesarios. No se incluyen comandos npm u otros instaladores no comprobados.

Usar los adaptadores manuales y realizar primero la prueba sin escritura. Registrar qué cliente puede leer archivos y ejecutar Git. No marcar aceptación completa por haber instalado una extensión.

## 8. Cierre verificable

Completar [[08_Manuales/08_INCORPORACION_DE_INTEGRANTES|checklist de incorporación]]: herramientas, clon correcto, rama, lectura y simulación. Cada casilla requiere evidencia local del integrante. La reconstrucción no queda terminada mientras falten versiones, autenticación, publicación o pruebas de cliente.
