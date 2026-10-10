# Registro de trabajo — orden de la vista gráfica de Obsidian

- Fecha: 2026-10-09.
- Hora y zona horaria: hora no registrada; America/Ciudad_Juarez. Se omite la hora del nombre de archivo.
- Integrante / autor humano: pendiente de confirmar.
- IA utilizada: Codex.
- Rama: feature/estructura-cerebro.
- Tarea: simplificar la navegación y la presentación del grafo.
- Módulo: entorno de colaboración, bóveda cerebro/.
- Estado: ajustes aplicados y vista general comprobada en Obsidian 1.14.4.

## Objetivo

Atender la solicitud de un grafo limpio y legible, con Dashboard como entrada, conservando la documentación y las relaciones útiles.

## Cambios realizados y archivos afectados

- `cerebro/00_Inicio/Dashboard.md`: orientar el recorrido desde los índices; retirar cuatro conexiones directas redundantes a plantillas, Estado y Checklist. Sus destinos permanecen disponibles desde los índices.
- `cerebro/08_Manuales/04_GUIA_OBSIDIAN.md`: presentar tres ejemplos de sintaxis de enlaces como código, para que no generen conexiones por demostración.
- `cerebro/.obsidian/graph.json`: preferencia local ignorada por Git. Filtro `path:"00_Inicio/" OR path:"01_Proyecto/" OR file:"Indice"`; nueve grupos de color por carpeta; ocultar destinos fuera de la bóveda, adjuntos, etiquetas y huérfanos; flechas activadas, líneas más finas y fuerzas ajustadas. Umbral de texto -3 y zoom ajustado en la interfaz para mantener legibles las etiquetas.
- Esta nota y `cerebro/03_Bitacora/Indice.md`: registrar la sesión y enlazarla sin modificar registros anteriores.

No se renombraron notas ni se modificaron bitácoras históricas. Las cuatro áreas estructurales y sus 23 archivos .gitkeep de la intervención anterior se conservaron.

## Comprobaciones ejecutadas y resultados

- Lectura inicial: reglas compartidas, Contexto, Dashboard, router, flujo, procedimientos de desarrollo, pruebas y bitácora, índices pertinentes, guía de Obsidian y configuración local.
- `git branch --show-current` y `git status --short`: rama autorizada; al inicio estaban únicamente los .gitkeep sin seguimiento de la tarea anterior.
- Auditoría automatizada de enlaces, excluyendo bloques y fragmentos de código: antes de añadir esta bitácora, las 29 notas existentes siguen alcanzables desde Dashboard; cero destinos wiki ausentes. Las conexiones únicas entre notas pasan de 81 a 75; las seis retiradas corresponden a cuatro accesos redundantes y dos ejemplos.
- Selección de rutas del filtro: nueve notas y ocho conexiones, todas desde Dashboard. JSON parseable y nueve grupos de color válidos.
- Comparación SHA-256 de los 74 archivos iniciales versionados o sin seguimiento, antes de crear esta nota: solo cambian Dashboard y la guía de Obsidian; los 28 .gitkeep existentes en todo el repositorio conservan su contenido vacío.
- `git diff --check`: código de salida 0, antes de crear esta nota.
- `scripts/Validar-Documentacion.ps1`: al inicio devuelve código 1 por 23 .gitkeep fuera de su alcance admitido; después devuelve código 1 por esos mismos archivos y un lienzo nuevo `cerebro/Sin título.canvas`, ajeno a las ediciones de esta intervención. Los 170 enlaces locales revisados y los 13 patrones de exclusión no presentan incidencias de rutas ni exclusión. El validador no admite .gitkeep ni .canvas; no se modificó para ampliar esta tarea.
- Validación manual mediante control de aplicaciones: cerrar y reabrir Obsidian para cargar las preferencias; comprobar nueve nodos en estrella, colores por área y etiquetas sin solapamiento; ajustar el encuadre y dejar visible la leyenda de grupos.
- El intento de usar Obsidian CLI informó que no podía encontrar la aplicación. Se completó la comprobación con la interfaz; no se habilitó ni instaló la CLI.
- Verificación después de crear esta nota e indexarla: el validador revisó 43 Markdown y 173 enlaces locales; conserva únicamente las 24 incidencias de formatos no admitidos descritas arriba (código 1). `git diff --check` devuelve 0. SHA-256 confirma 71 de los 74 archivos originales intactos; solo cambian Dashboard, la guía y el índice de bitácora. Los 28 .gitkeep originales permanecen vacíos e idénticos.

## Hechos comprobados y límites

La configuración del grafo es personal, permanece ignorada y no se comparte mediante Git. El filtro muestra los índices; conserva las notas restantes para consultarlas mediante navegación. Los seis nombres Indice siguen siendo iguales: se distinguen por color y carpeta en la leyenda. Las posiciones se calculan mediante fuerzas, no son un árbol de coordenadas fijas. Las carpetas nuevas vacías no generan nodos.

El lienzo `Sin título.canvas` apareció durante la sesión y se conservó sin editarlo ni atribuir su creación. No se hicieron git add, commit, push ni merge; no se instalaron dependencias ni se desarrolló inspección PCB.

## Decisiones relacionadas

Preferencias visuales solicitadas para esta instalación; no constituyen un acuerdo técnico del equipo ni alteran las reglas compartidas.

## Pendientes y siguiente acción

Revisión humana del aspecto. Para inspeccionar todas las relaciones, retirar temporalmente el filtro en los ajustes del grafo. No se amplía el diseño de las áreas vacías.

## Referencias existentes

Sin Issue, PR o commit de esta intervención. Navegación: [[00_Inicio/Dashboard|Dashboard]], [[08_Manuales/04_GUIA_OBSIDIAN|Guía de Obsidian]].
