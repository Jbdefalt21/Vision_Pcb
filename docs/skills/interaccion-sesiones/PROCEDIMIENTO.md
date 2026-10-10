# Procedimiento compartido de interacción y sesiones

## Naturaleza, autoridad y alcance

Este procedimiento es la primera versión documental del Sistema de Interacción de Vision_Pcb. Permite consultar el estado del proyecto y mantener continuidad mediante archivos Markdown y el historial local de Git. Se aplica por lectura e invocación manual; no instala una Skill nativa, no registra comandos en los clientes y no ejecuta acciones al abrir Obsidian o iniciar un asistente.

La autoridad central es [Reglas compartidas](../../REGLAS_COMPARTIDAS.md). Aplica el [Router de contexto](../../colaboracion/ROUTER_CONTEXTO.md) y el [Flujo de trabajo](../../colaboracion/FLUJO_TRABAJO.md). Este procedimiento complementa el router existente; no lo sustituye. La instalación y la compatibilidad nativa de Codex, Claude Code y Gemini no se presuponen.

El [Catálogo de comandos](../../colaboracion/COMANDOS_INTERACCION.md) describe las expresiones abreviadas de interacción y gestión de tareas. La [Guía de interacción](../../../cerebro/11_Colaboracion/00_Panel/Guia_de_Interaccion.md) explica su uso para los integrantes. Las propuestas de gestión que aparezcan en una respuesta no adquieren carácter de acuerdo por estar documentadas aquí.

Aplica la [Política de estilo conversacional](../../colaboracion/ESTILO_CONVERSACIONAL_IA.md) al responder a las personas: adapta el detalle a su experiencia y explica de forma progresiva. Su lectura manual complementa la norma editorial y conserva las reglas de evidencia y autorización de este procedimiento.

## Conceptos necesarios

Una **sesión** es un intervalo de trabajo cuya apertura y cierre se registran explícitamente. Un **último acceso registrado** es la referencia documental más reciente atribuible a una identidad declarada, con alcance de consulta y fechas comprobables. No equivale a la última modificación de un archivo, al último mensaje del asistente ni a la fecha de un commit.

Una **referencia de seguimiento o cursor** (*tracking cursor*) delimita lo que se consultó realmente. Puede combinar identificadores de commit, referencias de registros y marcas temporales con zona horaria. Un **commit (confirmación de cambios)** identifica un estado versionado de Git. La **rama** (*branch*) determina la línea de historial consultada; comparar commits de ramas distintas exige comprobar su relación.

El **árbol de trabajo** (*working tree*) contiene los archivos locales, incluidas modificaciones sin confirmar y archivos sin seguimiento. El **repositorio remoto** (*remote*) es una copia accesible mediante una conexión; una referencia local como `origin/main` no demuestra que esa copia esté actualizada.

## Fuentes y responsabilidades documentales

Consulta primero índices y después las notas pertinentes. Conserva cada hecho en su fuente principal y enlázalo desde la sesión cuando sea necesario.

| Información | Fuente inicial | Tratamiento |
| --- | --- | --- |
| Contexto y alcance | [Contexto](../../../cerebro/01_Proyecto/Contexto.md), [Dashboard](../../../cerebro/00_Inicio/Dashboard.md) | Distingue preparación documental de implementación del detector |
| Cambios versionados | Historial y diferencias locales de Git | Identifica commit, rama, rutas y alcance consultado |
| Cambios y comprobaciones narrados | [Bitácora](../../../cerebro/03_Bitacora/Indice.md) | Enlaza el registro; una afirmación de la nota puede requerir comprobación |
| Identidad y sesiones | [Panel de colaboración](../../../cerebro/11_Colaboracion/00_Panel/Indice.md), [Sesiones](../../../cerebro/11_Colaboracion/05_Sesiones/Indice.md) | Usa declaración personal y registros existentes; no deduzcas identidad de Git |
| Comentarios | [Índice de comentarios](../../../cerebro/11_Colaboracion/02_Comentarios/Indice.md) | Conserva autor, destinatario, estado y referencia a tarea |
| Relevos | [Índice de relevos](../../../cerebro/11_Colaboracion/03_Relevos/Indice.md) | Comprueba rama, archivos, fallos, pruebas y siguientes acciones autorizadas |
| Objetivos y tareas | [Pendientes](../../../cerebro/06_Pendientes/Indice.md), notas existentes en `cerebro/10_Gestion/` | Informa ausencias; un directorio vacío no contiene objetivos aprobados |
| Fallas | [Errores](../../../cerebro/05_Errores/Indice.md), pruebas y bitácoras relacionadas | Distingue síntoma, hipótesis, resolución reportada y comprobación real |
| Acuerdos | [Decisiones](../../../cerebro/04_Decisiones/Indice.md) | No conviertas propuestas en criterios aprobados |

No repliques la bitácora completa dentro de una sesión ni copies discusiones remotas para mantener un segundo estado independiente. La sesión conserva referencias, el alcance consultado y el resultado pertinente. Aplica [Bitácora](../bitacora/PROCEDIMIENTO.md) a cambios reales relevantes y [Gestión](../gestion-proyecto/PROCEDIMIENTO.md) a objetivos y tareas.

Para una actividad recibida desde PDF, Word, Markdown o texto, usa [Recepción de tareas](../gestion-proyecto/RECEPCION_TAREAS.md) y el [Índice de tareas](../../../cerebro/10_Gestion/02_Tareas/Indice.md). Relaciona su identificador estable con la sesión y la bitácora que correspondan, sin abrir otra sesión automáticamente por registrar, consultar o retomar una tarea. La ficha conserva requisitos y seguimiento; este procedimiento conserva las reglas de identidad, accesos e inicio y cierre.

## Identificación de la intención y de la persona

1. Lee la solicitud y determina si pide consultar, iniciar una sesión, cerrar una sesión o proponer una acción. Acepta expresiones naturales equivalentes a las del catálogo.
2. Comprueba la rama, los cambios locales y las restricciones vigentes antes de editar. Si la rama difiere de la autorizada, detén la escritura y explica la discrepancia.
3. Aplica el router y comunica qué archivos y comandos pudiste consultar. Si el cliente no tiene acceso a archivos o Git, entrega una respuesta parcial basada en el material proporcionado.
4. Para una consulta personal, identifica a la persona mediante su declaración o una asociación documental previamente confirmada. Un nombre en `git config`, un correo de commit, una ruta de Windows o el nombre de un asistente no identifican por sí solos a quien pregunta.
5. Si falta identidad, pide únicamente ese dato cuando sea imprescindible. Continúa con una consulta general independiente y usa «integrante pendiente de confirmar» en lo demás. No crees ni avances un último acceso personal para una identidad desconocida.
6. Si una frase admite varias intenciones con consecuencias de escritura, aclara el alcance antes de persistir datos. «Hola Gemini, ¿qué cambió?» solicita una consulta; no inicia una sesión automáticamente.

Clasifica la evidencia según la norma: **[CONFIRMADO]**, **[REPORTADO]**, **[DIDÁCTICO]** o **[NO VERIFICADO]**. Una identidad declarada se registra con su fuente de declaración; no se presenta como autenticación técnica del cliente.

## Consulta del último acceso y de las novedades

### Selección del punto de partida

1. Busca en el índice de sesiones los registros atribuibles a la identidad declarada. Descarta plantillas y ejemplos didácticos como accesos reales.
2. Selecciona la referencia válida más reciente según las fechas registradas y su zona horaria. Si faltan horas, hay registros concurrentes o el orden es ambiguo, presenta las alternativas y la limitación; no completes los datos con la fecha del archivo.
3. Examina el alcance de la última consulta: rama, commit consultado, registros revisados y corte temporal. El inicio o cierre de una sesión sin ese alcance no demuestra que se hayan leído todas las novedades.
4. Si no existe acceso anterior, informa «sin acceso anterior registrado». Ofrece un resumen del estado actual o solicita un punto de partida explícito. No calcules un intervalo ficticio ni redactes una sesión anterior.

### Comparación de fuentes

1. Fija y comunica la rama y el commit local hasta los que llega esta consulta. Comprueba que la referencia base existe antes de comparar.
2. Si base y destino pertenecen al mismo historial y la base es antecesora del destino, consulta el intervalo de commits `base..destino` y sus archivos afectados. Las fechas ayudan a situar el relato, pero no sustituyen la relación de ascendencia: un commit puede tener fecha anterior y haberse incorporado después.
3. Si la base falta, procede de otra copia no disponible o no es antecesora, informa la discontinuidad. Propón comparar referencias verificadas o un intervalo declarado; no afirmes que el resultado contiene todos los cambios desde el último acceso.
4. Consulta las bitácoras, comentarios, relevos, tareas y errores pertinentes posteriores al corte o distintos de las referencias ya vistas. Cuando una nota carezca de fecha o referencia suficiente, márcala como novedad de orden indeterminado.
5. Incluye los commits sin bitácora relacionada como cambios confirmados de Git con ausencia documental. La falta de bitácora no demuestra ausencia de actividad y no autoriza inventar una narración del trabajo.
6. Separa cambios confirmados en commits de modificaciones locales sin publicar. No atribuyas estas últimas a un integrante sin evidencia. Identifica referencias remotas locales cuya vigencia no se haya comprobado.
7. Agrupa el mismo hecho por su referencia primaria. Si aparece en Git, bitácora y relevo, muestra una actividad con esas tres evidencias; no la cuentes tres veces.

Una consulta de solo lectura no modifica sesiones, índices, comentarios ni cursores. La persistencia del alcance consultado se realiza únicamente dentro del inicio o cierre real autorizado de una sesión identificada. Conserva la referencia anterior y documenta el nuevo corte con sus fuentes y límites; no sobrescribas el historial de accesos ni conviertas una consulta aislada en otro acceso registrado.

### Comprobaciones locales de lectura

Ejecuta estas instrucciones desde la raíz del repositorio cuando el cliente tenga permiso de lectura:

```powershell
# [Comando de comprobación]
git branch --show-current
git status --short
git rev-parse HEAD
git log -5 --format="%H %aI %s"
```

`--show-current` muestra la rama; `--short` resume cambios locales; `rev-parse HEAD` obtiene el identificador completo del commit actual; `-5` limita la inspección a cinco commits y no reconstruye todo el historial. `%H`, `%aI` y `%s` representan identificador, fecha de autor con desfase y asunto. La fecha de autor no certifica cuándo una persona accedió al proyecto.

Los siguientes comandos ilustran una comparación. Sustituye los marcadores por identificadores comprobados antes de ejecutarlos; no los trates como resultados históricos:

```powershell
# [Comando didáctico]
git merge-base --is-ancestor <commit-base> <commit-consultado>
git log --format="%H %aI %s" <commit-base>..<commit-consultado>
git diff --name-status <commit-base> <commit-consultado>
```

`merge-base --is-ancestor` devuelve 0 si existe ascendencia y 1 si no existe; otros errores requieren revisar la disponibilidad de referencias. `log` enumera commits del intervalo y `diff --name-status` compara rutas y tipos de cambio entre estados. Ninguno de estos comandos sincroniza con GitHub.

## Inicio manual de una sesión

Aplica este apartado cuando la persona solicite expresamente iniciar y registrar una sesión y permita escritura documental. Una consulta sin esa autorización permanece en la conversación.

1. Identifica persona, asistente conocido, objetivo, alcance, rama autorizada y restricciones. Si no puedes identificar a la persona, no abras un acceso personal ficticio; ofrece la consulta general y solicita la declaración necesaria para continuar el registro.
2. Revisa si ya existe una sesión activa de esa persona para la misma tarea. Reanuda la referencia comprobada cuando corresponda. Ante duplicidad o simultaneidad, comunica el conflicto y no abras registros acumulativos alternativos automáticamente.
3. Registra una hora actual realmente obtenida con fecha y desfase, en formato `AAAA-MM-DD HH:MM:SS ±HH:MM`. Si no puedes obtenerla, usa «hora no disponible» y explica la limitación; no reconstruyas el comienzo desde la duración aparente de la conversación.
4. Si no existe una sesión activa reutilizable, crea un archivo independiente a partir de la [Plantilla de sesión](../../../cerebro/11_Colaboracion/05_Sesiones/Plantilla_sesion.md). Usa un identificador único, comprueba que la ruta no exista y evita sobrescribir registros. Si reanudas una sesión comprobada, conserva su identificador e inicio original.
5. Conserva por separado el cursor previo, el commit observado al inicio y el alcance realmente consultado. Un commit observado no significa que se hayan revisado todos sus archivos.
6. Documenta los cambios locales previos sin atribuirlos a esta sesión. Referencia comentarios y relevos pendientes pertinentes, sin alterar su estado por haberlos leído.
7. Añade la sesión al índice únicamente dentro de la autorización de escritura y coordinando cambios concurrentes. Informa la ruta creada y lo que permanece desconocido.

La apertura no autoriza tareas adicionales, cambios de rama, preparación de archivos en Git, commits, publicación ni integración. Conserva los permisos explícitos de la tarea como límites separados.

## Objetivos, porcentajes y propuestas contextuales

Los estados de gestión deben apoyarse en criterios y evidencias. Consulta las fuentes de objetivos y tareas existentes; no crees tareas de ejemplo como si fueran compromisos del equipo. La existencia de manuales no demuestra avance del detector PCB.

Presenta un porcentaje únicamente si una fuente de gestión aprobada define el conjunto evaluado, los criterios verificables, el denominador, la fórmula y, cuando corresponda, los pesos. Cada criterio contado como cumplido necesita evidencia. Una fórmula didáctica no constituye aprobación para aplicarla al proyecto.

Para un conjunto aprobado de criterios equivalentes, la fórmula puede estar definida como `100 × criterios verificados / criterios totales`. Con un denominador nulo o desconocido, cobertura parcial, pesos sin acordar o evidencia insuficiente, informa «porcentaje no calculable». Expón los datos faltantes y, si el conjunto está definido, presenta el conteo verificable permitido por el procedimiento de gestión. No asignes cero para sustituir desconocimiento, no excluyas tareas pendientes del denominador para aumentar el resultado y no promedies objetivos con ponderaciones inventadas.

La IA puede proponer una siguiente acción vinculada a una necesidad observada. Presenta fundamento, alcance, evidencia y permiso que requeriría. Distingue «propuesta» de «tarea acordada» y «pendiente informado» de «responsable asignado». No ejecutes una propuesta por el mero hecho de incluirla en el informe.

## Comentarios, relevos y atribución de actividad

Identifica comentarios por su referencia, autor declarado, destinatario, fecha, tarea y estado. Si el destinatario o el estado son ambiguos, muéstralos como desconocidos. Leer un comentario no lo marca atendido ni autoriza responder a otra persona o publicar mensajes.

Para documentar un comentario autorizado utiliza la [Plantilla de comentario](../../../cerebro/12_Plantillas/Plantilla_comentario.md). Para transmitir continuidad entre asistentes utiliza la [Plantilla de relevo](../../../cerebro/12_Plantillas/Plantilla_relevo.md). Registra hechos, fallos, archivos, pruebas ejecutadas, limitaciones y siguiente acción autorizada. El asistente que recibe el relevo debe volver a comprobar la rama y el estado local: una nota anterior no acredita el estado presente ni transfiere permisos nuevos.

Ante «¿qué hizo Erik?» distingue registros atribuibles documentalmente a esa persona, metadatos de autoría de Git y atribuciones no verificadas. La coincidencia de un nombre de commit no demuestra por sí sola identidad personal ni actividad completa. No atribuyas a Erik, Andrea o Uriel un comentario didáctico, una tarea sin autor ni todos los cambios locales.

## Cierre manual y continuidad

1. Aplica el cierre cuando la persona lo solicite explícitamente y esté autorizada la escritura de su registro. Revisa qué sesión real está activa y su identificador.
2. Si no hay sesión registrada, informa la ausencia. Resume la conversación y los hechos observados sin inventar una hora de inicio, una duración o un acceso anterior. Puedes proponer registrar solo un cierre actual documentado cuando la persona lo autorice, indicando que no reconstruye una sesión histórica.
3. Para una sesión existente, registra actividades realmente realizadas, archivos afectados y comprobaciones ejecutadas con sus resultados. Enlaza bitácoras, comentarios, relevos y commits verificados; no dupliques los registros fuente.
4. Registra la hora de cierre solo si se conoce y conserva el inicio original. Si no hubo cambios o no se ejecutaron pruebas, indícalo expresamente.
5. Separa el commit observado al cierre del cursor de novedades consultadas. Avanza el último acceso registrado únicamente hasta las fuentes realmente revisadas en esta sesión y bajo autorización de registro. Si no hubo consulta nueva, conserva el cursor anterior.
6. Distingue trabajo confirmado, modificaciones locales, publicación comprobada y pendientes. Un cierre no ejecuta automáticamente `git add`, commit, push, fusión ni eliminación de ramas.
7. Propón un relevo cuando sea útil y esté autorizado. Identifica lo que debe volver a comprobar el siguiente asistente y los permisos vigentes, sin adjudicar responsables nuevos.

## Formato común de respuesta

Entrega respuestas breves que permitan auditar la conclusión:

Selecciona los puntos pertinentes de la lista siguiente según la solicitud y preséntalos con lenguaje natural. Conserva las comprobaciones exigidas y los datos que afectan la conclusión; los formatos orientan el contenido y no obligan a mostrar una auditoría completa en cada conversación.

- Intención interpretada e identidad declarada o pendiente.
- Rama, estado local y alcance de acceso comprobado.
- Punto de partida y corte consultado, con fechas y referencias disponibles.
- Hallazgos clasificados y enlaces a su evidencia principal.
- Comentarios, relevos, errores y pendientes pertinentes.
- Ausencias, limitaciones de sincronización y datos que no se pueden inferir.
- Siguiente acción propuesta, diferenciada de una acción autorizada.

Si la solicitud es pequeña, adapta el formato sin omitir la limitación que afecte su respuesta. No presentes una lista vacía como prueba de ausencia cuando la fuente no fue accesible.

## Límites y verificación

Esta versión no contiene scripts, hooks, bases de datos, servidores, notificaciones, autenticación ni seguimiento automático de accesos. No consulta cuentas o mensajes externos sin acceso y autorización. Tampoco comprueba por sí sola la disponibilidad del remoto o la compatibilidad de los clientes.

Sin conexión, informa el commit local y las referencias disponibles. No declares GitHub actualizado por leer `origin/main`. Una actualización remota o publicación requiere permisos propios y comprobaciones reales; los comandos documentales no los conceden.

Las sesiones, archivos personales y modificaciones previas deben conservarse. La lectura ordinaria no requiere un registro nuevo y no inicia ni cierra sesiones. Las simulaciones permanecen identificadas como **[DIDÁCTICO]** y no se incorporan al índice de sesiones reales.

Comprueba esta documentación con la [Matriz de pruebas de interacción](../../colaboracion/PRUEBAS_INTERACCION.md), revisión de enlaces y el validador documental disponible. Una simulación del protocolo no demuestra funcionamiento automático en Codex, Claude Code o Gemini; la aceptación de cada cliente necesita pruebas reales separadas.

## Invocación manual

**[DIDÁCTICO]** Solicitud de consulta sin escritura:

> Lee `docs/colaboracion/ROUTER_CONTEXTO.md` y aplica `docs/skills/interaccion-sesiones/PROCEDIMIENTO.md`. Soy la persona que declara su identidad en esta conversación. Consulta las novedades desde mi último acceso registrado; no escribas archivos ni avances mi referencia de seguimiento. Si no hay un acceso válido, indícalo.

**[DIDÁCTICO]** Solicitud de inicio con registro:

> Lee y aplica el procedimiento de interacción. Declaro mi identidad para esta sesión. Inicia y registra una sesión documental para el objetivo que indico; conserva los cambios previos y los permisos de Git de la tarea. No inventes un acceso anterior.
