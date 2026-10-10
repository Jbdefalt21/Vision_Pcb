# Guía de Obsidian

Una bóveda es una carpeta de notas que Obsidian abre como conjunto. En este proyecto la carpeta acordada es `cerebro/`, dentro del repositorio. Los Markdown son archivos de texto: VS Code y Git pueden leerlos sin Obsidian. No se verificó aquí la interfaz gráfica ni una instalación funcional de Obsidian.

## Abrir la bóveda correcta

En Obsidian, elegir abrir una carpeta existente como bóveda y seleccionar `C:\vision-pcb\Vision_Pcb\cerebro`, adaptando la ruta en otro equipo. Abrir después 00_Inicio/Dashboard.md. No crear una bóveda nueva dentro de cerebro/ si se pretende trabajar sobre las notas existentes.

Comprobación manual: el panel de archivos debe mostrar 00_Inicio, 01_Proyecto, 03_Bitacora y 08_Manuales. Si solo aparece una nota Bienvenido, puede ser otra carpeta; comprobar la ruta antes de mover o borrar nada. En la bitácora histórica hubo una carpeta cerebro/Vision_pcb; actualmente no existe en la ruta comprobada. No se conoce aquí su proceso de retirada.

## Organización

| Área | Contenido |
| --- | --- |
| 00_Inicio | Dashboard como navegación y resumen |
| 01_Proyecto | Contexto del equipo y alcance |
| 02_Modulos | Contratos y notas de módulos cuando se definan |
| 03_Bitacora | Registros independientes y plantilla |
| 04_Decisiones | Propuestas y acuerdos con estado de aprobación |
| 05_Errores | Fallos con reproducción y evidencia |
| 06_Pendientes | Asuntos todavía por acordar o ejecutar |
| 07_Investigacion | Preguntas y fuentes, sin convertirlas en decisiones |
| 08_Manuales | Aprendizaje, reconstrucción y mantenimiento |

El Dashboard no es un registro acumulativo de cada comando. La bitácora guarda sesiones y evidencia; los índices permiten encontrarlas. Nuevas notas deben enlazarse cuando sea apropiado y autorizado, coordinando archivos compartidos.

## Markdown y enlaces

`# Título` crea un encabezado; `- elemento` una lista; `- [ ]` una casilla; comillas invertidas delimitan código. Un bloque con tres comillas invertidas conserva comandos como texto y no los ejecuta.

Enlaces reales de ejemplo:

- [[01_Proyecto/Contexto|Contexto del proyecto]]: enlace interno con etiqueta distinta del nombre del archivo.
- [[03_Bitacora/Plantilla|Plantilla de registro]]: destino dentro de la bóveda.
- [Reglas compartidas](../../docs/REGLAS_COMPARTIDAS.md): destino relativo desde este manual, fuera de la bóveda.

Los enlaces internos se expresan desde la raíz de cerebro/ y suelen omitir .md. Los Markdown relativos se calculan desde el archivo fuente. Los destinos externos a la bóveda pueden abrirse de forma distinta según el cliente y permisos; si Obsidian no los abre, usar VS Code desde la raíz. La comprobación automática de existencia no prueba la experiencia visual ni Mermaid.

## Sincronización con Git

Obsidian guarda archivos localmente; Git comparte versiones cuando se crean y publican commits autorizados. No hay plugin de sincronización configurado por esta tarea. Un compañero recibe notas publicadas al actualizar su copia, no cuando el administrador simplemente las edita.

`.obsidian/` está ignorado: preferencias y estado de ventanas son personales. `.trash/` también. No agregar configuración personal por accidente. Cada integrante puede usar temas o atajos distintos sin alterar los procedimientos comunes.

Antes de actualizar desde Git, guardar las notas abiertas y consultar status. Si otro integrante trabaja sobre el mismo índice, coordinar. Para conflictos, revisar ambas contribuciones; no borrar la bóveda para «sincronizarla». Una copia de seguridad no sustituye un historial revisado.

Relacionado: [[08_Manuales/03_GUIA_GIT_Y_GITHUB|Git]], [[08_Manuales/08_INCORPORACION_DE_INTEGRANTES|Incorporación]] y [[08_Manuales/13_GUIA_DE_MANTENIMIENTO|Mantenimiento]].
