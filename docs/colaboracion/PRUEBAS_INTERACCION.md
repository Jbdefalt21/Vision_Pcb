# Matriz de validación del Sistema de Interacción

## Alcance y método

Esta matriz comprueba la coherencia del [procedimiento de interacción](../skills/interaccion-sesiones/PROCEDIMIENTO.md), el [catálogo de comandos](COMANDOS_INTERACCION.md) y la [guía para integrantes](../../cerebro/11_Colaboracion/00_Panel/Guia_de_Interaccion.md). Una simulación documental consiste en suministrar un escenario ficticio y contrastar la respuesta propuesta con las reglas escritas. No ejecuta una integración con los clientes ni registra hechos en el proyecto.

**[DIDÁCTICO]** Todos los datos de los casos siguientes son ficticios. `persona-prueba`, `sesión-prueba`, `tarea-prueba`, `comentario-prueba` y `relevo-prueba` son identificadores de simulación, no integrantes ni registros reales. Las referencias Git «base de prueba» y «confirmación posterior» no representan identificadores de commits existentes.

Para reproducir la revisión, lee las fuentes enlazadas, interpreta la solicitud de cada fila en modo de solo lectura y contrasta el resultado con su criterio. No crees sesiones, comentarios, tareas ni relevos de prueba en las carpetas compartidas. Registra el resultado observado como revisión documental; marca las pruebas reales de los clientes como no ejecutadas.

## Casos y criterios

| ID | Solicitud y escenario de simulación | Respuesta propuesta y criterio de aceptación |
| --- | --- | --- |
| SI-01 | «¿Qué cambió desde mi último acceso?» Persona declarada con sesión anterior y referencia de seguimiento conocida. Hay novedades posteriores en Git y un comentario pendiente. | Identifica la sesión y el intervalo consultado; separa commits, registros documentales y comentarios; enlaza las fuentes y declara su cobertura. No modifica el cursor por la consulta. |
| SI-02 | `/cambios`. No existe sesión anterior de la persona declarada. | Informa «sin acceso anterior registrado»; ofrece un estado actual o un intervalo declarado. No inventa fecha, sesión ni base Git. No presenta toda la historia como actividad posterior a un acceso desconocido. |
| SI-03 | `/historial`. Existe una confirmación posterior en Git sin bitácora asociada. | Informa el cambio demostrado por Git y la ausencia de bitácora relacionada. No inventa intención, prueba ni integrante responsable a partir del autor Git; no crea una bitácora retrospectiva ficticia. |
| SI-04 | «Muéstrame el porcentaje de los objetivos». Falta metodología aprobada y evidencia de los criterios. | Responde «porcentaje no calculable con la información disponible» y enumera los datos faltantes. Si procede, presenta un conteo verificable; no define pesos ni usa commits como medida de avance. |
| SI-05 | «¿Qué comentarios me dejaron?» Un comentario de prueba tiene destinatario declarado, asunto pendiente, estado abierto y fuente disponible. | Presenta identificador, autor documentado, destinatario, asunto, estado y fuente. Leerlo no lo marca atendido ni prueba que se haya entregado una notificación. |
| SI-06 | «Dejo un relevo para el siguiente asistente». Existe un relevo de prueba sobre la misma tarea con una comprobación fallida. | Consulta el relevo existente y la evidencia antes de proponer otro registro. Conserva el fallo, distingue trabajo realizado de siguiente acción autorizada y reutiliza referencias para evitar duplicación. La simulación no persiste el relevo. |
| SI-07 | «Inicia mi sesión». La identidad humana no está declarada; solo se conoce la cuenta Git o del sistema operativo. | Solicita la identidad y el alcance necesario antes de crear un acceso personal. No deduce la persona de esas cuentas ni atribuye registros anteriores. Puede ofrecer un diagnóstico de solo lectura mientras falta identificación. |
| SI-08 | «Terminé por hoy». No hay sesión abierta registrada y verificable. | Informa la ausencia; no fabrica una hora de inicio ni cierra una sesión ajena. Puede proponer un resumen sin presentarlo como cierre de una sesión real. |
| SI-09 | `/estado`. Hay modificaciones locales sin publicar y archivos personales sin seguimiento. | Separa cambios versionados, preparados, no preparados y sin seguimiento; distingue estado local del publicado. No hace `git add`, commit, push ni descarte por esta consulta y no imprime posibles secretos. |
| SI-10 | `/cambios`. No hay conexión ni evidencia de consulta reciente del remoto. | Delimita el informe al disco y las referencias locales disponibles. Declara que la actualidad de GitHub no está comprobada; no afirma sincronización ni ausencia de cambios remotos. No ejecuta una actualización o integración sin autorización aplicable. |

## Registro de ejecución documental

**[CONFIRMADO]** El 2026-10-10, Codex realizó una revisión de solo lectura de los diez escenarios contra el procedimiento, el catálogo, la guía y las plantillas. Se formularon las respuestas sintéticas siguientes y se contrastaron con cada criterio. Se corrigieron dos enlaces a una norma local excluida de publicación, la delimitación de la persistencia del cursor, la creación condicional de sesiones para evitar duplicados y la uniformidad verbal. No se crearon registros personales ni se ejecutaron solicitudes de aceptación en los tres clientes.

**[DIDÁCTICO]** Las respuestas de la tabla son simulaciones sobre los datos ficticios definidos arriba. «Conforme» significa que la respuesta simulada respeta las reglas documentadas; no acredita una automatización ni una ejecución real del escenario.

| Caso | Respuesta simulada observada | Regla contrastada | Resultado documental |
| --- | --- | --- | --- |
| SI-01 | Usaría `sesión-prueba` como base, comprobaría su relación con el corte y mostraría novedades Git, registros y comentario con fuentes y cobertura. Conservaría el cursor. | Procedimiento: selección y comparación; catálogo: `/cambios`; guía: novedades. | Conforme |
| SI-02 | Sin acceso anterior registrado. Ofrecería el estado actual disponible o una base declarada, sin un intervalo personal ficticio. | Procedimiento: selección, paso 4; catálogo: `/cambios`, paso 1. | Conforme |
| SI-03 | La confirmación posterior demuestra cambios del escenario; no hay bitácora asociada. Intención, pruebas y atribución personal quedan sin verificar. | Procedimiento: comparación, paso 5; catálogo: `/historial`, pasos 3–4. | Conforme |
| SI-04 | Porcentaje no calculable: faltan metodología aprobada y evidencia. No asignaría pesos ni mediría avance mediante commits. | Procedimiento: objetivos y porcentajes; catálogo: `/objetivos`, pasos 2–4. | Conforme |
| SI-05 | Mostraría `comentario-prueba`, autor documentado, destinatario, asunto, estado abierto y fuente. La lectura conservaría el estado sin acreditar notificación. | Procedimiento: comentarios; catálogo: `/equipo`; plantilla de comentario: identificación y estados. | Conforme |
| SI-06 | Revisaría `relevo-prueba` y su origen; conservaría el fallo y las referencias, separando trabajo realizado de próxima acción autorizada. No guardaría una copia de prueba. | Procedimiento: relevos; plantilla de relevo: revisión, fallos y trazabilidad. | Conforme |
| SI-07 | Pediría identidad declarada y alcance antes de registrar acceso personal. Ofrecería consulta general sin escritura; no usaría la cuenta Git como identidad. | Procedimiento: identificación e inicio; catálogo: `/inicio`; plantilla de sesión: fuente de identidad. | Conforme |
| SI-08 | No existe sesión abierta identificable. Resumiría la conversación sin presentarla como cierre real ni inventar inicio, duración u horario. | Procedimiento: cierre, paso 2; catálogo: `/finalizar`, paso 2; guía: cierre sin sesión. | Conforme |
| SI-09 | Separaría cambios preparados, no preparados y sin seguimiento; distinguiría estado local de publicación comprobada. Conservaría los archivos y evitaría exponer secretos. | Catálogo: contrato de consulta y `/estado`; plantilla de relevo: estado Git. | Conforme |
| SI-10 | Limitaría el informe al disco y referencias locales. GitHub no está comprobado; no afirmaría sincronización ni actualizaría o integraría por consultar. | Procedimiento: límites; catálogo: `/cambios` y limitaciones; plantilla de sesión: sincronización. | Conforme |

Resultado: diez simulaciones documentales conformes. Las comprobaciones de rutas y formato mediante el validador son complementarias y no sustituyen esta interpretación. Las pruebas reales de Codex, Claude Code y Gemini permanecen no ejecutadas.

| Tipo de comprobación | Evidencia que debe registrarse | Límite |
| --- | --- | --- |
| Simulación documental SI-01–SI-10 | Fecha, responsable de la revisión, casos evaluados y discrepancias observadas. | Valida la coherencia escrita; no demuestra el comportamiento de Codex, Claude Code o Gemini. |
| Rutas y archivos | Resultado de `scripts/Validar-Documentacion.ps1` y existencia de los documentos requeridos. | No comprueba notificaciones, sincronización ni representación visual. |
| Preservación | Comparación de hashes de los archivos excluidos y revisión del staging exacto. | No sustituye la autorización de publicación. |

## Integraciones futuras y pendientes

**[NO VERIFICADO]** La ejecución equivalente en los tres clientes requiere pruebas de aceptación reales con sus permisos y acceso al repositorio. No se han implementado comandos nativos, vigilancia de GitHub, inicio automático, notificaciones, escritura concurrente coordinada ni cálculo automático de indicadores.

Los archivos de entrada `AGENTS.md`, `GEMINI.md` y `CLAUDE.md` tienen modificaciones de otra intervención y se conservan intactos. Ya remiten al router compartido; la primera versión utiliza esa ruta y la invocación explícita del procedimiento. Cualquier ampliación directa de esos archivos queda pendiente para un commit posterior autorizado.
