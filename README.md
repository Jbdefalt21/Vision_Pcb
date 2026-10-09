# Vision_Pcb

Proyecto universitario de inspección visual de placas PCB, desarrollado por tres integrantes. Esta etapa prepara el entorno de colaboración; todavía no implementa funciones de visión artificial.

## Primeros pasos

1. Abre `C:\vision-pcb\Vision_Pcb` mediante **Archivo > Abrir carpeta** en VS Code. Si tienes su comando disponible, también puedes ejecutar `code .` desde esa carpeta.
2. Comprueba la rama con `git branch --show-current`. La preparación inicial se realiza en `setup/entorno-colaborativo`.
3. En Obsidian, selecciona **Abrir carpeta como bóveda** y elige `C:\vision-pcb\Vision_Pcb\cerebro`. Abre `00_Inicio/Dashboard.md`.
4. Lee `cerebro/01_Proyecto/Contexto.md` y `docs/REGLAS_COMPARTIDAS.md` antes de editar.

## Organización

- `cerebro/`: notas Markdown compartidas, contexto, módulos, bitácora, decisiones, errores, pendientes e investigación.
- `docs/`: reglas compartidas del equipo.
- `src/`: código futuro.
- `tests/`: pruebas futuras.
- `config/`: configuración futura del proyecto.
- `scripts/`: scripts futuros de apoyo.
- `data/samples/`: muestras pequeñas que el equipo acuerde compartir; los datos se ignoran inicialmente.
- `AGENTS.md`, `GEMINI.md` y `CLAUDE.md`: instrucciones de entrada para Codex, Gemini CLI y Claude Code, respectivamente.

## Colaboración

El equipo utiliza GitHub para compartir el repositorio, VS Code para editar y Obsidian para las notas. Antes de comenzar, consulta el estado de Git y acuerda el alcance del trabajo con los otros integrantes. Revisa los cambios con `git diff` antes de incorporarlos al historial.

Las reglas comunes están en [docs/REGLAS_COMPARTIDAS.md](docs/REGLAS_COMPARTIDAS.md). Cada asistente tiene su propio archivo de instrucciones; no se presupone compatibilidad de Skills entre proveedores y todavía no se configura ninguna.

## Entorno y estado inicial

No se han definido dependencias, versiones de Python, comandos de ejecución ni pruebas automatizadas. No hay paquetes instalados por esta preparación. El `.gitignore` contempla un posible entorno Python y `.venv`, sin establecer requisitos técnicos.

`.env.example` es una plantilla sin credenciales ni variables definidas. Si posteriormente se necesitan variables locales, copia su contenido a `.env` y documenta las variables acordadas; nunca publiques secretos.

Los requisitos, el alcance de inspección, las muestras y los criterios de aceptación están pendientes de acordar. Registra los acuerdos en `cerebro/04_Decisiones/` y el trabajo realizado en `cerebro/03_Bitacora/`.
