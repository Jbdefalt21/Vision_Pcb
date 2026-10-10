# Plantilla de relevo

**[DIDÁCTICO]** Esta plantilla prepara un relevo (*handoff*): un registro que entrega contexto y evidencia para que otra persona o asistente continúe una tarea dentro del alcance autorizado. No describe una sesión ocurrida. Copia su contenido en una nota nueva de `cerebro/11_Colaboracion/03_Relevos/` cuando exista un relevo real y esté autorizado documentarlo.

Un relevo conserva tanto el trabajo realizado como los fallos y las restricciones. La bitácora sigue siendo la fuente técnica de la sesión; el relevo la resume y enlaza sin sustituir su evidencia.

## Identificación y origen

- ID del relevo:
- ID del mensaje, sesión o registro de origen:
- Ruta o enlace del origen existente, o «sin referencia»:
- Autor humano declarado del origen:
- Fuente de confirmación de la identidad humana:
- IA de origen, versión o modelo solo si se conocen:
- Persona que registra el relevo, si es distinta del autor:
- IA que prepara el registro, si corresponde:
- Destinatario previsto:
- Fecha del registro (AAAA-MM-DD):
- Hora y desfase UTC, si se obtuvieron:
- Zona horaria (identificador):
- Fuente de la fecha y hora:
- Estado operativo propuesto y evidencia:

El identificador (ID) del origen permite comprobar si ese trabajo ya fue transferido. No deduzcas autoría humana de la cuenta del sistema, la ruta del repositorio o quien inicia el asistente. Si se desconoce, conserva «pendiente de confirmar». Si no se obtuvo hora, registra «hora no registrada».

## Encargo y alcance autorizado

- ID de tarea o «no registrada»:
- Fuente del encargo:
- Objetivo concreto:
- Archivos o áreas autorizadas:
- Acciones autorizadas:
- Restricciones y operaciones que requieren autorización adicional:
- Acuerdos confirmados y fuente:
- Propuestas o dudas pendientes:

La revisión de un relevo no amplía los permisos del encargo. Registra por separado cualquier autorización posterior y su fuente; no conviertas una recomendación en permiso.

## Estado de Git al registrar

Una rama (*branch*) identifica la línea de trabajo activa. `HEAD` es la referencia de Git a la confirmación de cambios (*commit*) actual. El estado del árbol de trabajo indica qué cambios están presentes localmente; no demuestra que se hayan publicado.

- Rama comprobada:
- Referencia HEAD comprobada:
- Estado de Git observado y fecha:
- Cambios preparados en el índice (*staging area*):
- Cambios sin preparar:
- Archivos sin seguimiento relevantes:
- Cambios previos ajenos que deben conservarse:
- Fuente de la observación:

Los siguientes comandos son instrucciones de lectura, no resultados ya obtenidos por esta plantilla. Ejecútalos solo al registrar o revisar el relevo y conserva sus salidas pertinentes sin datos sensibles.

```powershell
# [Comando de comprobación]
git branch --show-current
git rev-parse HEAD
git status --short
```

Si no fue posible observar Git, explica el fallo y su efecto sobre la continuación. No inventes una rama, un identificador HEAD ni un estado limpio.

## Trabajo realizado y archivos afectados

- Trabajo realmente completado:
- Trabajo iniciado y todavía incompleto:
- Actividades de solo lectura:
- Fuente técnica principal:

| Ruta real | Acción realizada | Cambio propio o previo | Evidencia y límite |
| --- | --- | --- | --- |
| | | | |

Enumera únicamente archivos realmente añadidos, modificados o eliminados durante el trabajo referido. Si no hubo modificaciones, indícalo. Las notas consultadas pueden figurar como lecturas, sin presentarlas como archivos modificados.

## Comprobaciones, fallos y límites

Para cada comprobación efectivamente realizada, conserva un registro independiente. No sustituyas un fallo por el resultado de una repetición posterior.

| Tipo: lectura, automatizada o manual | Comando o pasos ejecutados | Entorno | Resultado observado | Código de salida, si se obtuvo | Evidencia y límite |
| --- | --- | --- | --- | --- | --- |
| | | | | | |

- Comprobaciones no ejecutadas y motivo:
- Fallos observados:
- Hipótesis de causa y grado de verificación:
- Correcciones realmente aplicadas:
- Repeticiones ejecutadas y sus resultados:
- Limitaciones que permanecen:

No declares validación visual por comprobar rutas ni pruebas del sistema por ejecutar una revisión documental. Conserva los resultados distintos de cero y las salidas incompletas que expliquen un bloqueo.

## Revisión del siguiente agente

El destinatario debe revisar el origen antes de continuar:

1. Confirma el ID del relevo, el ID de origen y el destinatario; comprueba si ya existe una revisión del mismo trabajo.
2. Lee la bitácora técnica, las fuentes pertinentes y las restricciones del encargo.
3. Comprueba la rama, HEAD y el estado Git actuales. Distingue cambios posteriores de la observación del relevo.
4. Revisa los archivos realmente afectados y conserva los cambios ajenos.
5. Contrasta las comprobaciones reportadas y sus límites; conserva los fallos. Repite solo verificaciones pertinentes cuando esté autorizado y registra la repetición como nueva evidencia.
6. Registra la revisión, dudas, bloqueos y siguiente acción autorizada. Ante una discrepancia de rama o alcance, detén las modificaciones y continúa únicamente trabajo independiente permitido.

- Autor humano de la revisión y fuente de identidad:
- IA revisora, si se conoce:
- Fecha, hora disponible y zona horaria:
- Discrepancias encontradas:
- Resultado de la revisión y evidencia:
- Siguiente acción estrictamente autorizada:

## Pendientes y autorizaciones

| Pendiente o bloqueo | Evidencia | Acción propuesta | Autorización necesaria y fuente existente | Responsable confirmado o pendiente |
| --- | --- | --- | --- | --- |
| | | | | |

Estas propuestas no autorizan preparar cambios, crear confirmaciones, publicar, fusionar ramas, instalar dependencias ni desarrollar funciones fuera del encargo. Referencia un permiso solo cuando exista y se haya confirmado.

## Trazabilidad y estados propuestos

- Bitácora original existente:
- Sesión original existente:
- Comentario relacionado existente:
- Referencias Git, tareas, Issues o solicitudes de incorporación comprobadas:
- Registro previo del mismo ID de origen:
- Correcciones posteriores: fecha, motivo, fuente y dato anterior:

Cuando no exista una referencia, escribe «sin referencia». Conserva un único relevo original; agrega revisiones y correcciones fechadas en lugar de copiar el mismo contenido a varias áreas.

Los estados `abierto`, `atendido`, `bloqueado` y `archivado` son propuestas para el seguimiento manual. «Atendido» requiere una revisión registrada del destinatario y no equivale a finalizar la tarea. «Bloqueado» identifica una condición y su evidencia; «archivado» conserva el registro y documenta el motivo de cerrar su seguimiento. No constituyen acuerdos técnicos del equipo.

## Referencias de uso

- [[11_Colaboracion/03_Relevos/Indice|Índice de relevos]].
- [[11_Colaboracion/00_Panel/Guia_de_Interaccion|Guía de interacción manual]].
- [[11_Colaboracion/05_Sesiones/Indice|Índice de sesiones]].
- [[11_Colaboracion/05_Sesiones/Plantilla_sesion|Plantilla de sesión]].
- [[03_Bitacora/Indice|Bitácora técnica]].
- [Procedimiento manual de interacción y sesiones](../../docs/skills/interaccion-sesiones/PROCEDIMIENTO.md).
- [Comandos de interacción manual](../../docs/colaboracion/COMANDOS_INTERACCION.md).
- [Reglas compartidas](../../docs/REGLAS_COMPARTIDAS.md).
