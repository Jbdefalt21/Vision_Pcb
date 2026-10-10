# Router de contexto

Procedimiento compartido de lectura manual. La autoridad central es [Reglas compartidas](../REGLAS_COMPARTIDAS.md). No presupone carga automática de Skills ni compatibilidad nativa entre proveedores.

Para responder a integrantes humanos, lee y aplica la [Política de estilo conversacional](ESTILO_CONVERSACIONAL_IA.md). Complementa la redacción formal de los documentos con explicaciones cercanas y pedagógicas, sin alterar las comprobaciones ni los permisos requeridos.

## Entrada y lectura mínima

Las rutas escritas como `docs/` y `cerebro/` se interpretan desde la raíz del repositorio `C:\vision-pcb\Vision_Pcb`. Los destinos de enlaces Markdown relativos se resuelven desde el archivo que contiene el enlace; los enlaces internos Obsidian, desde la bóveda `cerebro/`.

1. Identifica objetivo, alcance autorizado, rama requerida y restricciones de la tarea.
2. Comprueba `git branch --show-current` y `git status --short`. Si la rama no coincide, detén las modificaciones y comunica la discrepancia; no cambies de rama automáticamente.
3. Lee las reglas y la entrada del asistente utilizado: AGENTS.md, GEMINI.md o CLAUDE.md, en la raíz del repositorio.
4. Consulta [Contexto](../../cerebro/01_Proyecto/Contexto.md) y [Dashboard](../../cerebro/00_Inicio/Dashboard.md).
5. Selecciona los índices pertinentes de la tabla siguiente. Después lee solo las notas, módulos, decisiones y archivos relacionados con la tarea. No recorras toda la bóveda por defecto.

## Selección según la tarea

| Tarea | Índices iniciales | Lectura específica posterior |
| --- | --- | --- |
| Código o refactorización autorizada | [Módulos](../../cerebro/02_Modulos/Indice.md), [Decisiones](../../cerebro/04_Decisiones/Indice.md) | Nota del módulo, arquitectura si existe, contratos, código y pruebas afectados |
| Pruebas o diagnóstico | [Módulos](../../cerebro/02_Modulos/Indice.md), [Errores](../../cerebro/05_Errores/Indice.md) | Pasos de reproducción, entorno, evidencias y pruebas relacionadas |
| Planificación | [Pendientes](../../cerebro/06_Pendientes/Indice.md), [Módulos](../../cerebro/02_Modulos/Indice.md), [Decisiones](../../cerebro/04_Decisiones/Indice.md) | Objetivos, responsables, dependencias y criterios de aceptación existentes |
| Documentación o bitácora | Índice del área destino; [Bitácora](../../cerebro/03_Bitacora/Indice.md) cuando corresponda | Nota destino, plantilla y enlaces relacionados |
| Investigación | [Investigación](../../cerebro/07_Investigacion/Indice.md), [Decisiones](../../cerebro/04_Decisiones/Indice.md) | Pregunta, fuentes y alternativas relacionadas |
| Inicio o cierre de sesión, novedades, actividad y coordinación | [Colaboración](../../cerebro/11_Colaboracion/00_Panel/Indice.md), [Sesiones](../../cerebro/11_Colaboracion/05_Sesiones/Indice.md) | [Interacción y sesiones](../skills/interaccion-sesiones/PROCEDIMIENTO.md), [comandos documentales](COMANDOS_INTERACCION.md) y fuentes del asunto solicitado |

Esta tabla selecciona contexto. Los procedimientos manuales de desarrollo, pruebas y gestión se eligen mediante el [Catálogo](CATALOGO_PROCEDIMIENTOS.md); no hay activación nativa implícita. Para aprender o reconstruir el entorno consulta primero el [Índice de manuales](../../cerebro/08_Manuales/00_INDICE_GENERAL.md) y después solo los capítulos pertinentes.

Ante expresiones como «¿qué cambió desde mi último acceso?» o «terminé por hoy», aplica el procedimiento de interacción después de esta lectura inicial. Sus comandos son convenciones de conversación invocadas manualmente. Consulta identidad, fuentes y permisos antes de registrar una sesión; una consulta de novedades no actualiza por sí sola el último acceso.

## Calidad de las fuentes y ausencias

- **Confirmada:** observación comprobada con evidencia o acuerdo explícitamente aprobado. Indica archivo, comando, resultado o referencia que lo sustenta y su fecha cuando corresponda.
- **Provisional:** propuesta, hipótesis, borrador o decisión pendiente. Puede orientar una consulta, pero no se convierte en requisito aprobado.
- **No verificada:** afirmación histórica sin comprobación actual, referencia inaccesible o compatibilidad de proveedor no probada. Expón qué falta verificar.

Una nota existente no confirma por sí sola todos sus enunciados. Si difiere de una comprobación actual, registra la discrepancia sin reescribir la historia ni descartar cambios ajenos.

Identifica las rutas ausentes y su efecto. No inventes arquitectura, módulos, pruebas ni acuerdos para llenar huecos. Si la ausencia impide una modificación segura, solicita la información necesaria; continúa únicamente con trabajo independiente autorizado.

## Salida del router

Resume: tarea y módulo (o «sin definir»), rama y estado observado, documentos consultados, hechos confirmados, información provisional/no verificada, documentación ausente y restricciones. No crees un archivo por cada lectura; incorpora este resumen al informe o a la bitácora cuando sea pertinente.

Adapta la presentación a la consulta: desarrolla el resumen completo cuando corresponda a una auditoría o un relevo; en una orientación sencilla comunica solo los hallazgos y límites pertinentes. Realiza las comprobaciones de contexto exigidas aunque no sea necesario repetir todos sus detalles en la respuesta.

Continúa con el [Flujo de trabajo](FLUJO_TRABAJO.md) y, para sesiones relevantes, el [Procedimiento de bitácora](../skills/bitacora/PROCEDIMIENTO.md).
