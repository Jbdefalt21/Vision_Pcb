# Plantilla de comentario

**[DIDÁCTICO]** Esta plantilla prepara un comentario de coordinación; no registra una conversación ocurrida. Copia su contenido en una nota nueva de `cerebro/11_Colaboracion/02_Comentarios/` cuando exista una interacción real y esté autorizado registrarla. Completa solo datos conocidos; conserva «pendiente de confirmar», «no registrada» o «sin referencia» cuando corresponda.

Un comentario formula una pregunta, observación o solicitud para un destinatario. Su registro permite seguir una respuesta y conservar su fuente. La existencia de la nota o una mención a una persona no demuestra que el destinatario haya recibido, leído o aceptado el comentario.

## Identificación y procedencia

- ID del comentario:
- ID y fuente del mensaje o registro de origen, si existe:
- Autor humano declarado:
- Fuente de confirmación de la identidad humana:
- IA que asistió o redactó, si se conoce:
- Destinatario declarado:
- Asunto:
- Fecha del registro (AAAA-MM-DD):
- Hora y desfase UTC, si se obtuvieron:
- Zona horaria (identificador):
- Fuente de la fecha y hora:
- ID de tarea o «no registrada»:
- Fuente de la tarea y alcance autorizado:
- Estado operativo propuesto:
- Fecha y evidencia del estado:

Un identificador (ID) distingue este comentario de otros registros. Comprueba que no esté utilizado y conserva el mismo ID en sus respuestas. La fuente de identidad puede ser una declaración explícita de la persona; una cuenta local, el nombre de una carpeta o la identidad configurada en Git no confirman quién formuló el comentario.

Registra la fecha y zona reales. Si la hora no fue obtenida, indica «hora no registrada». Mantén al autor humano y al asistente de IA en campos separados, incluso cuando no se conozca el autor humano.

## Contenido del comentario

Expón el asunto, la pregunta o el cambio solicitado y delimita qué respuesta se necesita. Separa hechos comprobados, información reportada, propuestas y aspectos no verificados. No conviertas una sugerencia en una decisión aprobada.

## Evidencia y referencias

- Hecho o antecedente que sustenta el comentario:
- Clasificación y límite de la evidencia:
- Ruta o enlace a la fuente existente:
- Bitácora técnica relacionada, si existe:
- Sesión relacionada, si existe:

La bitácora conserva el detalle técnico de cambios y comprobaciones. Enlaza su registro original en lugar de copiarlo en varias áreas. Si no existe una fuente verificable, explica la ausencia; no fabriques una sesión, tarea, prueba, confirmación de cambios (*commit*) o solicitud de incorporación (*pull request*).

## Respuestas y seguimiento

Agrega cada respuesta con su fecha real y conserva el contenido inicial. Para cada intervención, completa:

- Autor humano de la respuesta y fuente de identidad:
- IA de apoyo, si se conoce:
- Fecha, hora disponible y zona horaria:
- Contenido de la respuesta:
- Evidencia de recepción o revisión, si se obtuvo:
- Acción realmente realizada:
- Estado anterior y nuevo estado propuesto:
- Justificación y evidencia del cambio:
- Pendientes y siguiente responsable, solo si fue confirmado:

Una respuesta no constituye una autorización para ejecutar operaciones fuera del alcance original. Si se requiere un acuerdo o permiso adicional, registra la solicitud y su fuente de confirmación cuando exista.

## Estados operativos propuestos

Estas etiquetas organizan el seguimiento manual. Son propuestas de uso documental y no constituyen acuerdos técnicos del equipo ni estados de avance de la tarea.

| Estado | Interpretación propuesta | Evidencia que debe acompañarlo |
| --- | --- | --- |
| `abierto` | Comentario registrado y pendiente de revisión o respuesta. | Nota original, fecha y asunto pendiente. |
| `atendido` | Se registró una respuesta o actuación pertinente al asunto. | Respuesta, autor declarado y actuación comprobada; especificar pendientes restantes. |
| `bloqueado` | Una condición identificada impide continuar. | Bloqueo observado, su fuente y condición necesaria para revisarlo. |
| `archivado` | Se decidió cerrar el seguimiento activo y conservar el registro. | Motivo, fecha, fuente de la decisión y enlace a la evidencia preservada. |

No declares «atendido» por haber nombrado al destinatario. Archivar conserva la nota y sus respuestas; no implica borrar evidencia.

## Trazabilidad y prevención de duplicados

Antes de crear la nota, revisa si el mismo ID o mensaje de origen ya tiene un comentario. Si existe, enlaza ese original y agrega una respuesta o complemento autorizado. No abras copias independientes del mismo intercambio en distintos índices.

- Registro original del comentario:
- Fuente del ID:
- Registro relacionado o reemplazado, si existe:
- Corrección posterior: fecha, motivo, fuente y dato anterior:

## Referencias de uso

- [[11_Colaboracion/02_Comentarios/Indice|Índice de comentarios]].
- [[11_Colaboracion/00_Panel/Guia_de_Interaccion|Guía de interacción manual]].
- [[11_Colaboracion/05_Sesiones/Indice|Índice de sesiones]].
- [[03_Bitacora/Indice|Bitácora técnica]].
- [Procedimiento manual de interacción y sesiones](../../docs/skills/interaccion-sesiones/PROCEDIMIENTO.md).
- [Comandos de interacción manual](../../docs/colaboracion/COMANDOS_INTERACCION.md).
- [Reglas compartidas](../../docs/REGLAS_COMPARTIDAS.md).
