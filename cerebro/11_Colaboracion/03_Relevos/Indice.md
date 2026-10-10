# Índice de relevos

**[DIDÁCTICO]** Un relevo (*handoff*) entrega contexto, evidencia y restricciones para que otra persona o asistente continúe una tarea. Este índice enlaza los originales; la bitácora conserva el detalle técnico del trabajo realizado.

## Estado y registros reales

Este índice no contiene relevos reales registrados. La plantilla prepara futuros registros; no declara entregas, revisiones, identidades humanas, tareas terminadas ni autorizaciones ya concedidas.

Cuando exista un relevo autorizado, añade una entrada con enlace a su nota original, ID del relevo e ID de origen, autor humano declarado o pendiente de confirmar, IA de origen separada, destinatario, asunto o tarea, fecha y estado con evidencia.

## Uso manual y prevención de duplicados

1. Lee la [[11_Colaboracion/00_Panel/Guia_de_Interaccion|guía de interacción]] y localiza la sesión o bitácora que origina la continuación.
2. Revisa si el mismo ID de origen ya tiene un relevo o una revisión registrada. Enlaza el original existente antes de crear otro.
3. Usa la [[12_Plantillas/Plantilla_relevo|plantilla de relevo]] para un registro nuevo, cuando esté autorizado.
4. Completa solo identidad confirmada o pendiente, destinatario, fecha y zona reales, alcance permitido, rama, HEAD y estado Git efectivamente observados.
5. Incluye archivos realmente afectados, comprobaciones ejecutadas, resultados, fallos, límites, pendientes y autorizaciones existentes. No conviertas propuestas en permisos.
6. Añade una entrada al índice cuando esté autorizado; conserva las entradas ajenas. Registra la revisión del destinatario y las correcciones sin reemplazar la evidencia original.

Un relevo concentra la ruta de continuación. Los comentarios, sesiones e índices relacionados deben enlazarlo, sin crear copias del mismo contenido en diferentes carpetas.

## Consulta por autor, destinatario y estado

Para filtrar manualmente, busca esos campos en las entradas y notas originales. Conserva «pendiente de confirmar» cuando no exista fuente de identidad. Distingue al autor humano, la IA que preparó el relevo y el destinatario que realizó una revisión.

Los estados propuestos son `abierto`, `atendido`, `bloqueado` y `archivado`. Una revisión documentada permite justificar «atendido», sin afirmar que la tarea técnica terminó. Un bloqueo conserva su evidencia y condición de resolución; archivar mantiene el original y registra el motivo. Estas etiquetas no constituyen acuerdos técnicos del equipo.

## Fuentes y límites

Consulta la [[03_Bitacora/Indice|bitácora técnica original]] para los cambios y pruebas; conserva tanto fallos como éxitos. La [[11_Colaboracion/05_Sesiones/Plantilla_sesion|plantilla de sesión]] permite registrar la interacción que dio origen al trabajo. Si no existen referencias de tarea, sesión, commit o solicitud de incorporación, indica «sin referencia» y no fabriques enlaces.

La presencia de un relevo no demuestra recepción por su destinatario, no entrega permisos nuevos y no ejecuta continuaciones automáticas. El siguiente agente revisa las fuentes y el estado actual antes de actuar.

- [[11_Colaboracion/00_Panel/Indice|Panel de colaboración]].
- [[11_Colaboracion/05_Sesiones/Indice|Índice de sesiones]].
- [[11_Colaboracion/02_Comentarios/Indice|Índice de comentarios]].
- [[12_Plantillas/Plantilla_relevo|Plantilla de relevo]].
- [Procedimiento manual de interacción y sesiones](../../../docs/skills/interaccion-sesiones/PROCEDIMIENTO.md).
- [Comandos de interacción manual](../../../docs/colaboracion/COMANDOS_INTERACCION.md).
- [Reglas compartidas](../../../docs/REGLAS_COMPARTIDAS.md).
