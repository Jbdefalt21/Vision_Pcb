# Manual maestro de Vision_Pcb

Base documental auditada el 2026-10-09. Este manual explica el entorno de colaboración; no describe un detector PCB implementado. Está dirigido a tres estudiantes que comienzan con Git y asistentes de IA, y debe servir también para reconstruir el entorno en otro equipo.

## Cómo interpretar la evidencia

**Comprobado** significa observado en archivos, salidas locales o historia Git durante la auditoría. **Registro histórico** significa narrado en una bitácora, con sus límites. **Reportado por el usuario** no equivale a reproducido. **Recomendación** es una práctica propuesta. **Pendiente** requiere acuerdo, instalación o prueba. La fecha de esta auditoría no convierte el estado en permanente.

Los comandos son ejemplos para ejecutar cuando sus precondiciones y permisos se cumplan. No fueron todos ejecutados durante la elaboración. Los que escriben configuración, ramas o historial y los que acceden a GitHub están expresamente separados. No copies todos los bloques como un único script.

## Orden de lectura

1. [[08_Manuales/12_ESTADO_ACTUAL_Y_PENDIENTES|Estado real y pendientes]]: empezar sabiendo qué existe.
2. [[08_Manuales/02_ARQUITECTURA_DEL_ENTORNO|Arquitectura del entorno]] y [[08_Manuales/11_GLOSARIO|Glosario]]: entender las piezas.
3. [[08_Manuales/03_GUIA_GIT_Y_GITHUB|Git y GitHub]] y [[08_Manuales/04_GUIA_OBSIDIAN|Obsidian]]: aprender colaboración y notas.
4. [[08_Manuales/05_GUIA_CODEX_GEMINI_CLAUDE|Asistentes]] y [[08_Manuales/06_GUIA_SKILLS_Y_AGENTES|Skills y agentes]]: contexto, permisos y evidencia.
5. [[08_Manuales/07_INSTALACION_DESDE_CERO|Instalación]] y [[08_Manuales/08_INCORPORACION_DE_INTEGRANTES|Incorporación]]: preparar cada computadora.
6. [[08_Manuales/09_FLUJO_DE_TRABAJO_DIARIO|Trabajo diario]]: practicar una sesión pequeña.
7. [[08_Manuales/01_HISTORIA_DEL_PROYECTO|Historia]], [[08_Manuales/10_PROBLEMAS_Y_SOLUCIONES|Problemas]] y [[08_Manuales/13_GUIA_DE_MANTENIMIENTO|Mantenimiento]]: comprender y conservar el entorno.

## Rutas según la necesidad

- Administrador que debe publicar: Estado → Git → Incorporación → Mantenimiento. Revisar todo el diff, incluidos archivos nuevos, antes de cualquier commit.
- Integrante nuevo: Arquitectura → Git → Obsidian → Instalación → checklist de Incorporación → Trabajo diario.
- Asistente en una tarea concreta: [reglas](../../docs/REGLAS_COMPARTIDAS.md) → [router](../../docs/colaboracion/ROUTER_CONTEXTO.md) → [catálogo](../../docs/colaboracion/CATALOGO_PROCEDIMIENTOS.md). No necesita leer todos los manuales cada vez.
- Diagnóstico: Problemas → procedimiento de pruebas/diagnóstico → bitácora con evidencia real.

## Convenciones y alcance

La raíz habitual es `C:\vision-pcb\Vision_Pcb`; otra computadora puede usar otra ruta. `docs/` y `cerebro/` escritos como texto parten de esa raíz. Los enlaces Markdown relativos parten del archivo que los contiene. Los enlaces internos Obsidian parten de la bóveda `cerebro/`.

La autoridad normativa del proyecto sigue en `docs/REGLAS_COMPARTIDAS.md`. Los manuales enseñan y enlazan procedimientos; no sustituyen permisos del usuario ni decisiones del equipo. No hay porcentaje de avance del detector: faltan requisitos y criterios técnicos.

Estos manuales y los procedimientos añadidos son cambios locales pendientes de revisión/publicación. Un compañero que clone hoy el historial conocido no recibirá archivos que aún no tengan commit publicado. Para límites de compatibilidad ver el manual de asistentes.
