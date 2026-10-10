# Registro de trabajo — Política conversacional compartida

- Fecha: 2026-10-10.
- Hora de referencia comprobada: 2026-10-10 18:16:08 +00:00; zona UTC, fuente: reloj consultado durante esta intervención. No corresponde a un inicio de sesión personal registrado.
- Solicitante humano: Uriel [REPORTADO], mediante la declaración «soy uriel» en la consulta anterior de esta conversación.
- IA responsable de la redacción y comprobaciones: Codex. No se atribuyen estas comprobaciones al solicitante humano.
- Rama: `docs/manual-exhaustivo`.
- Tarea y módulo: política compartida de estilo conversacional y acompañamiento pedagógico.
- Estado: implementación documental revisada; publicación condicionada a la revisión exacta del staging.

## Objetivo y alcance autorizado

**[REPORTADO]** El usuario autorizó crear una política central de conversación, integrarla mínimamente en los cuatro documentos indicados y publicarla después de verificarla. Solicitó preservar ocho documentos con cambios previos y los archivos personales de Obsidian. No autorizó modificar `main`, crear Pull Requests, fusionar ramas ni desarrollar el detector PCB.

La política complementa la norma editorial local. Los documentos formales conservan su redacción técnica y las conversaciones adoptan un tono cercano, paciente y proporcionado a la experiencia de la persona. No se modifican las reglas de seguridad ni se crean automatizaciones.

## Archivos afectados

- Nuevo `docs/colaboracion/ESTILO_CONVERSACIONAL_IA.md`, con las reglas centrales y diez ejemplos comparativos [DIDÁCTICO].
- Integración mínima mediante referencias en `docs/skills/interaccion-sesiones/PROCEDIMIENTO.md`, `docs/colaboracion/ROUTER_CONTEXTO.md`, `docs/colaboracion/COMANDOS_INTERACCION.md` y `cerebro/11_Colaboracion/00_Panel/Guia_de_Interaccion.md`.
- Esta nota nueva y su referencia en `cerebro/03_Bitacora/Indice.md`, necesaria para conservar el registro de la intervención y superar el control existente de bitácoras indexadas.

No se duplican las reglas completas en cada integración. Se distingue la selección de información que se presenta a la persona de las comprobaciones que siguen siendo obligatorias. Las autorizaciones vigentes conservan su alcance y no se solicita de nuevo la misma confirmación.

## Comprobaciones ejecutadas y resultados

**[CONFIRMADO]** La inspección inicial mediante Git observó `docs/manual-exhaustivo`, HEAD `0fd74cffb3601844823ebbfbf9b10e4f6fac3fa1` y staging vacío. Las cinco rutas existentes que se amplían no tenían cambios locales previos. Se registraron hashes SHA-256 de 106 archivos existentes, incluidas las preferencias personales, para comparar su preservación.

**[CONFIRMADO]** Se consultaron los tres archivos de entrada, las reglas compartidas, Contexto, Dashboard, router, procedimiento de interacción, catálogo, guía y norma editorial. La consulta remota previa observó `docs/manual-exhaustivo` en el mismo HEAD y `main` en `8aa926a8f975b40469176d38650cf6e500c97143`.

**[CONFIRMADO]** La revisión documental de los diez pares comparativos comprobó adaptación al nivel de experiencia, cordialidad, claridad, enseñanza progresiva, precisión técnica, continuidad y autorizaciones: diez casos conformes. Los ejemplos [DIDÁCTICO] no constituyen pruebas reales de Codex, Gemini mediante Antigravity o Claude Code.

**[CONFIRMADO]** `scripts/Validar-Documentacion.ps1`, con las once rutas personales sin seguimiento declaradas en `-ArchivosLocalesNoPublicables`, revisó 60 Markdown, 363 enlaces locales, 25 archivos afectados y 13 patrones de exclusión: cero incidencias, código 0. El parámetro no modifica `.gitignore` ni prepara archivos. `git diff --check` terminó con código 0.

**[CONFIRMADO]** La comparación SHA-256 preservó los 101 archivos existentes fuera de las cinco integraciones autorizadas, incluidas las ocho rutas protegidas, los once archivos personales y las preferencias de Obsidian. No se observaron archivos nuevos inesperados ni archivos eliminados. Los cuatro documentos de interacción apuntan a la política central.

La revisión exacta de las siete rutas del staging y su correspondencia con el disco se realizará antes del commit. La publicación depende de ese resultado y de repetir la validación tras completar esta nota. Los controles de enlaces y secretos por patrones no comprueban todos los formatos, la representación visual ni la carga de los clientes; la estructura interna de los archivos personales `.base` no está cubierta por el validador.

## Evidencia, límites y pendientes

La identidad del solicitante procede de su declaración; no se deduce de Git ni del sistema operativo. No se crean registros de acceso, sesiones, comentarios o relevos ficticios para probar la política.

La norma editorial se consulta por su versión local y se conserva fuera de este commit. Los archivos `AGENTS.md`, `GEMINI.md` y `CLAUDE.md` mantienen sus cambios anteriores; su integración directa mínima queda pendiente de revisión posterior. La lectura del router permite localizar la política sin afirmar carga automática.

El procedimiento futuro de bienvenida deberá aplicar este estilo cuando se desarrolle. La aceptación real en cada cliente sigue pendiente y no se demuestra por escribir las comparativas. No se inicia funcionalidad del detector PCB.

## Referencias y siguiente acción

- [Política conversacional](../../docs/colaboracion/ESTILO_CONVERSACIONAL_IA.md).
- [Procedimiento de interacción](../../docs/skills/interaccion-sesiones/PROCEDIMIENTO.md).
- [[11_Colaboracion/00_Panel/Guia_de_Interaccion|Guía para integrantes]].

Sin commit nuevo ni Pull Request al redactar esta nota. Validar, revisar las siete rutas exactas del staging y publicar únicamente si las comprobaciones son satisfactorias. El identificador del commit y el resultado del push se comprobarán después de ejecutarlos.
