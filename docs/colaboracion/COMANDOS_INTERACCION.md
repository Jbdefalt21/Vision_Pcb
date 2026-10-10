# Catálogo de comandos de interacción

## Uso manual y contrato común

Los nombres de este catálogo son expresiones abreviadas que un asistente interpreta después de leer el [Procedimiento de interacción y sesiones](../skills/interaccion-sesiones/PROCEDIMIENTO.md). No son comandos registrados en Codex, Claude Code, Gemini, PowerShell u Obsidian. Si un cliente interpreta una barra inicial como un comando propio, formula la solicitud en lenguaje natural y pide leer los documentos del proyecto.

Aplica las [Reglas compartidas](../REGLAS_COMPARTIDAS.md), el [Router](ROUTER_CONTEXTO.md) y el [Flujo de trabajo](FLUJO_TRABAJO.md). Consulta la [Guía de interacción](../../cerebro/11_Colaboracion/00_Panel/Guia_de_Interaccion.md) para conversaciones completas y la [Matriz de pruebas](PRUEBAS_INTERACCION.md) para casos de aceptación documental.

Una **sesión** registra un intervalo de trabajo iniciado explícitamente. El **cursor o referencia de seguimiento** (*tracking cursor*) delimita fuentes realmente revisadas. Un **commit (confirmación de cambios)** identifica un estado versionado; no identifica por sí solo a una persona ni su último acceso.

Los comandos de consulta operan en modo de solo lectura. `/inicio` y `/finalizar` permiten registrar apertura o cierre únicamente cuando la solicitud manual y las restricciones vigentes autorizan esa escritura. Ningún comando concede permisos implícitos de Git, acceso remoto o envío de mensajes a otras personas. Las restricciones «sin escritura» prevalecen sobre la intención de registrar una sesión.

Para tareas aplica [Recepción, documentación y seguimiento](../skills/gestion-proyecto/RECEPCION_TAREAS.md), fuente principal de transcripción, identificadores, estados y continuidad de actividad. `/registrar-tarea` requiere una solicitud que autorice el registro; `/mis-tareas` consulta sin escribir. Los otros comandos de tarea consultan o preparan propuestas y solo persisten cambios dentro de la autorización vigente. Ninguno inicia automáticamente una sesión ni publica o entrega archivos.

En cada respuesta identifica fuentes, alcance local/remoto, desconocidos y evidencia con las categorías **[CONFIRMADO]**, **[REPORTADO]**, **[DIDÁCTICO]** y **[NO VERIFICADO]**. No conviertas una propuesta en un acuerdo aprobado. Todos los ejemplos siguientes son **[DIDÁCTICO]**: ilustran solicitudes y formatos, no son actividades, comentarios ni sesiones reales de los integrantes.

Aplica la [Política de estilo conversacional](ESTILO_CONVERSACIONAL_IA.md) al presentar los resultados. Adapta los formatos siguientes a la intención y experiencia de la persona; comunica la evidencia y las limitaciones pertinentes sin convertir cada respuesta en una tabla o un formulario. Las reglas de consulta, identidad y autorización conservan su alcance.

## Índice de comandos

| Comando | Intención |
| --- | --- |
| `/inicio` | Abrir o reanudar una sesión documental autorizada |
| `/cambios` | Consultar novedades desde un punto de partida válido |
| `/historial` | Reconstruir hechos y referencias en un intervalo declarado |
| `/estado` | Resumir situación, evidencias y limitaciones actuales |
| `/objetivos` | Consultar objetivos y cumplimiento verificable |
| `/pendientes` | Consultar tareas, dependencias y siguientes acciones |
| `/fallas` | Consultar errores y resolución comprobada |
| `/equipo` | Consultar identidades, responsabilidades y comunicaciones registradas |
| `/mi-actividad` | Consultar actividad atribuible a la identidad declarada |
| `/ayuda` | Explicar el protocolo y su alcance |
| `/finalizar` | Cerrar una sesión real bajo autorización de registro |
| `/registrar-tarea` | Recibir instrucciones y crear una ficha documental autorizada |
| `/mis-tareas` | Consultar actividades registradas para la identidad declarada |
| `/continuar-tarea` | Recuperar evidencia y retomar una actividad identificada |
| `/revisar-tarea` | Contrastar entregables con instrucciones y criterios |
| `/entrega` | Preparar la revisión final y comprobar el estado de entrega |

## `/inicio`

### Propósito y frases equivalentes

Inicia una sesión documental para una identidad declarada, o reanuda una sesión existente que se haya identificado. Equivalentes: «Codex, inicia mi sesión», «Quiero registrar el inicio del trabajo» y «Reanuda mi sesión registrada».

### Fuentes

Consulta [Contexto](../../cerebro/01_Proyecto/Contexto.md), [Dashboard](../../cerebro/00_Inicio/Dashboard.md), [Sesiones](../../cerebro/11_Colaboracion/05_Sesiones/Indice.md), [Plantilla de sesión](../../cerebro/11_Colaboracion/05_Sesiones/Plantilla_sesion.md), rama y estado local de Git. Revisa comentarios y relevos pertinentes a la tarea.

### Pasos de la IA

1. Identifica persona, objetivo, asistente, rama y restricciones; comprueba que existe autorización de registro documental.
2. Busca una sesión activa de la misma persona y tarea; si hay simultaneidad, comunica la ambigüedad antes de crear otra.
3. Consulta el último acceso válido y separa su cursor del commit observado ahora. Sin acceso previo, informa la ausencia.
4. Obtén fecha y hora actuales con desfase cuando sea posible. Si no existe sesión activa reutilizable, crea una nota independiente con identificador único y actualiza el índice dentro del alcance autorizado. Si reanudas una sesión comprobada, conserva su identificador e inicio original.
5. Resume lo registrado y los cambios locales previos que deben conservarse. Si falta identidad imprescindible, entrega la consulta general y solicita su declaración antes de crear el acceso personal.

### Formato de respuesta

Informa identidad y fuente de declaración; identificador y ruta de sesión; inicio registrado o dato no disponible; objetivo; rama; cursor previo; alcance consultado; modificaciones preexistentes; restricciones y pendientes.

### Seguridad y datos no inventables

No infieras identidad a partir de Git o del equipo local. No reconstruyas sesiones antiguas ni abras una nueva por cada saludo. No cambies de rama ni publiques. No inventes horarios, modelos del asistente, responsables o un cursor de acceso anterior.

### Ejemplo didáctico

> Declaro mi identidad y quiero registrar una sesión para revisar documentación. Aplica `/inicio` en la rama autorizada para esta tarea. Si ya existe una sesión activa, muéstramela antes de abrir otra.

Respuesta esperada: referencia real creada o reanudada, hora obtenida, alcance y ausencias. Este ejemplo no registra una sesión por sí mismo.

## `/cambios`

### Propósito y frases equivalentes

Consulta novedades desde el último acceso registrado válido o desde una referencia explícita. Equivalentes: «Hola Gemini, ¿qué cambió desde mi último acceso?», «¿Qué novedades hay?» y «Compara el estado con la referencia que te indico».

### Fuentes

Consulta [Sesiones](../../cerebro/11_Colaboracion/05_Sesiones/Indice.md), historial y diferencias de Git, [Bitácora](../../cerebro/03_Bitacora/Indice.md), [Comentarios](../../cerebro/11_Colaboracion/02_Comentarios/Indice.md), [Relevos](../../cerebro/11_Colaboracion/03_Relevos/Indice.md), tareas y errores pertinentes.

### Pasos de la IA

1. Identifica a la persona si solicita un último acceso personal y busca su cursor válido. Si no existe, informa «sin acceso anterior registrado» y ofrece estado actual o base explícita.
2. Fija la rama y el commit consultado. Comprueba disponibilidad y ascendencia de la base antes de comparar el intervalo Git.
3. Revisa registros posteriores o no incluidos en el alcance previo; marca fechas ausentes y novedades de orden indeterminado.
4. Agrupa evidencias del mismo hecho sin duplicar actividades. Incluye commits sin bitácora y distingue modificaciones locales sin publicar.
5. Expón la vigencia conocida de las referencias remotas y la cobertura de fuentes. Mantén intacto el cursor: esta consulta es de solo lectura.

### Formato de respuesta

Presenta base y corte consultado, identidad cuando proceda, cambios versionados, registros relacionados, cambios locales, comentarios/relevos pendientes, ausencias y limitaciones de conexión.

### Seguridad y datos no inventables

No inventes un acceso anterior ni afirmes que fechas de commits son fechas de acceso. No avances el cursor, marques comentarios atendidos o ejecutes sincronización/publicación por consultar. Una referencia remota local no confirma vigencia en GitHub.

### Ejemplo didáctico

> Aplica `/cambios` para mi identidad declarada, sin escribir archivos. Si no tienes último acceso válido, resume lo que puedes verificar y explica la limitación.

Formato esperado si falta registro: «Sin acceso anterior registrado; se consultó el estado local hasta la referencia indicada. No se modificó el cursor».

## `/historial`

### Propósito y frases equivalentes

Reconstruye eventos documentados dentro de un intervalo o tema definido. Equivalentes: «Muéstrame el historial», «¿Qué ocurrió en este periodo?» y «¿Qué hizo Erik mientras no estaba?».

### Fuentes

Consulta Git, [Bitácora](../../cerebro/03_Bitacora/Indice.md), [Decisiones](../../cerebro/04_Decisiones/Indice.md), sesiones, comentarios y relevos relacionados con el intervalo. Para una atribución personal, consulta declaraciones y asociaciones documentales comprobadas.

### Pasos de la IA

1. Determina intervalo, tema, rama e identidad de interés. Si faltan, declara el alcance elegido para una consulta general o solicita el dato imprescindible.
2. Consulta commits y registros pertinentes, con fechas y zonas disponibles. Distingue fecha de autor, fecha registrada de sesión y fecha de consulta.
3. Relaciona evidencias por hecho; separa autoría de Git de identidad personal y atribuciones reportadas.
4. Expón huecos documentales, registros sin fecha y ramas no consultadas. No rellenes discontinuidades con relatos inferidos.

### Formato de respuesta

Presenta intervalo y fuentes; cronología de hechos con referencias; autoría comprobada/reportada; eventos sin orden comprobable; cambios sin bitácora y limitaciones.

### Seguridad y datos no inventables

Conserva registros históricos. No deduzcas todas las actividades de una persona a partir del nombre de autor de un commit. No inventes motivos, horarios, sesiones ni decisiones ausentes.

### Ejemplo didáctico

> Aplica `/historial` a los registros atribuibles a Erik en el intervalo que indico. Separa las atribuciones documentales de los nombres que aparecen como autores de Git.

Una respuesta honesta puede indicar «atribución personal no verificada»; el ejemplo no afirma que Erik haya realizado cambios.

## `/estado`

### Propósito y frases equivalentes

Resume la situación observable del proyecto y el alcance de la consulta. Equivalentes: «¿Cómo va el proyecto?», «Muéstrame el estado actual» y «¿Qué está publicado y qué sigue local?».

### Fuentes

Consulta Contexto, Dashboard, Git local, [Módulos](../../cerebro/02_Modulos/Indice.md), decisiones, objetivos, pendientes, errores y referencias de revisión/publicación realmente disponibles.

### Pasos de la IA

1. Comprueba la rama y los cambios locales sin alterar archivos.
2. Consulta acuerdos, estado documentado y evidencias; distingue documentación de implementación y pruebas.
3. Separa trabajo confirmado en commits, modificaciones locales y publicación comprobada. Identifica contradicciones sin reescribir las fuentes.
4. Resume bloqueos, datos faltantes y siguiente acción propuesta dentro del alcance solicitado.

### Formato de respuesta

Indica etapa, rama y corte; trabajo con evidencia; cambios locales; situación remota conocida o no verificada; errores/bloqueos; pendientes y propuesta.

### Seguridad y datos no inventables

No conviertas documentos en funcionalidad del detector ni asumas que un commit local está publicado. No presentes una consulta parcial como estado completo. No inventes porcentaje global, entregas o aprobaciones.

### Ejemplo didáctico

> Aplica `/estado` en modo solo lectura. Distingue infraestructura documental, implementación, pruebas y publicación comprobada.

Si el remoto no se consultó, el formato debe incluir «vigencia del remoto no verificada».

## `/objetivos`

### Propósito y frases equivalentes

Consulta objetivos registrados, criterios de aceptación y cumplimiento demostrado. Equivalentes: «Muéstrame los objetivos», «¿Qué objetivos están completos?» y «Muéstrame el porcentaje de los objetivos».

### Fuentes

Consulta [Gestión](../skills/gestion-proyecto/PROCEDIMIENTO.md), notas existentes de `cerebro/10_Gestion/`, pendientes, decisiones y evidencias de aceptación. Si solo hay marcadores `.gitkeep`, informa que no existen objetivos documentados allí.

### Pasos de la IA

1. Identifica objetivos realmente registrados y su condición de propuesta o acuerdo. No agregues ejemplos como tareas reales.
2. Para cada objetivo, consulta conjunto de criterios, denominador, evidencia, fórmula y pesos explícitamente aprobados cuando corresponda.
3. Presenta un porcentaje solo si esos datos permiten calcularlo de forma reproducible. No uses ponderaciones iguales sin aprobación por defecto.
4. Si falta información, explica «porcentaje no calculable» y los datos necesarios. Presenta conteos verificables cuando el conjunto esté definido y el procedimiento de gestión lo permita.

### Formato de respuesta

Usa una tabla con objetivo, estado y fuente, criterios/evidencia, cálculo autorizado o motivo de no cálculo, faltantes y siguiente acción propuesta.

### Seguridad y datos no inventables

No asignes cero para representar desconocimiento ni elimines criterios pendientes del denominador. No confundas avance documental con avance del detector. No inventes objetivos, fechas, responsables, fórmulas aprobadas, pesos o evidencias.

### Ejemplo didáctico

> Aplica `/objetivos`: solicita el porcentaje, pero muéstralo solo si hay fórmula y criterios aprobados con evidencia. Si no los hay, explica qué falta sin estimar.

Formato esperado con datos insuficientes: «Porcentaje no calculable; falta una fuente aprobada que delimite criterios y fórmula». No constituye un estado real del proyecto.

## `/pendientes`

### Propósito y frases equivalentes

Consulta trabajo pendiente, bloqueos y dependencias registradas. Equivalentes: «¿Qué queda por hacer?», «Muéstrame mis pendientes» y «¿Qué debo revisar antes de continuar?».

### Fuentes

Consulta [Pendientes](../../cerebro/06_Pendientes/Indice.md), tareas y dependencias existentes en `cerebro/10_Gestion/`, bitácoras, comentarios, relevos y criterios acordados.

### Pasos de la IA

1. Define si la consulta es general o personal. Para asignación personal, usa identidad declarada y responsables documentados.
2. Revisa estado, criterio de aceptación, dependencia y evidencia de cada pendiente pertinente.
3. Consolida referencias del mismo pendiente sin duplicar tareas. Separa tarea acordada, propuesta contextual y bloqueo observado.
4. Muestra siguiente acción y responsable solo cuando estén registrados; en caso contrario, indica que están pendientes de acordar.

### Formato de respuesta

Presenta tarea/referencia, estado, responsable conocido, criterio, dependencia, evidencia y siguiente acción. Añade ausencias que impidan ordenar prioridades.

### Seguridad y datos no inventables

No asignes tareas ni marques estados completados por consultar. No inventes prioridades, fechas límite, responsables o criterios. Leer un relevo no autoriza ejecutar todo lo que sugiera.

### Ejemplo didáctico

> Aplica `/pendientes` para la identidad que declaro. Separa mis tareas asignadas de propuestas y tareas sin responsable.

Una respuesta puede mostrar «responsable pendiente de acordar»; el ejemplo no asigna trabajo a una persona real.

## `/fallas`

### Propósito y frases equivalentes

Consulta errores registrados y el estado de su resolución. Equivalentes: «¿Qué errores siguen pendientes?», «Muéstrame las fallas» y «¿Se comprobó la corrección de este error?».

### Fuentes

Consulta [Errores](../../cerebro/05_Errores/Indice.md), bitácoras, [Pruebas y diagnóstico](../skills/pruebas-diagnostico/PROCEDIMIENTO.md), evidencias de comandos y pruebas relacionadas.

### Pasos de la IA

1. Identifica errores pertinentes al alcance solicitado, incluidos fallos observados en registros de pruebas.
2. Separa síntoma, contexto, causa comprobada o hipótesis, corrección reportada y verificación posterior.
3. Presenta qué comprobaciones se ejecutaron realmente y cuáles están pendientes. Si falta evidencia, no declares el error resuelto.
4. Propón un diagnóstico delimitado cuando resulte útil; no lo ejecutes si amplía el alcance o requiere permisos adicionales.

### Formato de respuesta

Indica error/referencia, síntoma, estado documentado, evidencia de resolución o ausencia, impacto conocido y siguiente comprobación propuesta.

### Seguridad y datos no inventables

No vuelvas a ejecutar pruebas o comandos de escritura por el mero hecho de consultar errores. No inventes causas, resultados, códigos de salida ni aceptación en clientes. Un índice vacío no demuestra ausencia total de fallas.

### Ejemplo didáctico

> Aplica `/fallas` en modo de consulta. Para cada error, distingue corrección reportada de corrección verificada y muestra la referencia de la prueba.

Formato esperado sin evidencia: «Resolución reportada, verificación pendiente».

## `/equipo`

### Propósito y frases equivalentes

Consulta identidades, responsabilidades y comunicaciones documentadas. Equivalentes: «¿Quién forma el equipo?», «¿Quién está a cargo de esta tarea?» y «¿Qué comentarios me dejó Andrea?».

### Fuentes

Consulta [Panel de colaboración](../../cerebro/11_Colaboracion/00_Panel/Indice.md), registros existentes de `cerebro/11_Colaboracion/01_Equipo/`, Contexto, tareas, comentarios y relevos pertinentes.

### Pasos de la IA

1. Determina si se pide composición, responsabilidad o comentarios dirigidos a la persona que pregunta.
2. Para una consulta personal, identifica a esa persona mediante declaración y distingue autores/destinatarios documentados de atribuciones desconocidas.
3. Consulta datos pertinentes y comunica ausencias o discrepancias entre fuentes.
4. Presenta comentarios con su estado original. No los marques leídos/atendidos ni respondas a otra persona sin autorización específica.

### Formato de respuesta

Entrega personas y fuentes; responsabilidades acordadas o pendientes; comentarios con autor, destinatario, asunto, fecha, tarea, estado y referencia; limitaciones de identidad/acceso.

### Seguridad y datos no inventables

No publiques datos personales, credenciales o mensajes externos sin autorización. No confundas una audiencia nombrada en un manual con un reparto aprobado de responsabilidades. No inventes comentarios de Andrea, asignaciones o estados de lectura.

### Ejemplo didáctico

> Declaro mi identidad. Aplica `/equipo` para consultar comentarios que tengan a Andrea como autora y a mí como destinatario; conserva su estado.

Si no hay registros pertinentes, informa la fuente consultada y la ausencia, sin crear un comentario para demostrar la función.

## `/mi-actividad`

### Propósito y frases equivalentes

Consulta actividad atribuible documentalmente a la identidad declarada. Equivalentes: «¿Qué hice en mis últimas sesiones?», «Muéstrame mi actividad» y «¿Qué cambios están atribuidos a mí?».

### Fuentes

Consulta sesiones, bitácoras, comentarios, relevos y commits pertinentes. La relación entre identidad personal y autoría de Git requiere declaración o asociación documental comprobada.

### Pasos de la IA

1. Identifica a la persona y el intervalo solicitado. Si falta identidad, no construyas actividad personal; ofrece una consulta general independiente.
2. Consulta registros atribuibles y distingue participación humana de asistencia de IA.
3. Separa atribución documentada, declaración reportada y metadatos Git sin asociación comprobada.
4. Agrupa actividades repetidas en varias fuentes y muestra cobertura y huecos del registro.

### Formato de respuesta

Presenta identidad/fuente, intervalo, actividad, papel documentado, referencias, comprobaciones asociadas y atribuciones no verificadas.

### Seguridad y datos no inventables

No identifiques a la persona por correo, usuario del sistema o configuración Git. No atribuyas cambios locales sin autor comprobado, trabajo de la IA a un humano sin respaldo ni sesiones inexistentes.

### Ejemplo didáctico

> Aplica `/mi-actividad` para la identidad que declaro y el intervalo que indico. Separa mis registros personales de commits con identidad no asociada.

Si no hay sesiones, informa «sin sesiones atribuibles registradas», sin concluir que la persona no haya trabajado.

## `/ayuda`

### Propósito y frases equivalentes

Explica cómo invocar el protocolo, sus comandos y límites. Equivalentes: «¿Cómo utilizo este sistema?», «Muéstrame los comandos» y «¿Qué puedes consultar y qué falta implementar?».

### Fuentes

Consulta este catálogo, el procedimiento, la guía, el router y [Adaptadores manuales](ADAPTADORES_MANUALES.md). No infieras capacidades de un cliente por la existencia de su archivo de entrada.

### Pasos de la IA

1. Determina qué quiere aprender la persona: consulta, registro, continuidad o límites de un cliente.
2. Explica las expresiones disponibles y sus equivalentes naturales, con ejemplos didácticos.
3. Distingue lectura de Markdown/Git, escritura autorizada y automatizaciones futuras.
4. Indica cómo invocar lectura explícita si la barra inicial entra en conflicto con comandos del cliente.

### Formato de respuesta

Presenta comando/intención, ejemplo, fuente documental, permisos necesarios y límites. Indica acceso disponible o no comprobado para el cliente presente.

### Seguridad y datos no inventables

No instales herramientas ni registres comandos nativos al pedir ayuda. No declares hooks, seguimiento automático, autenticación o compatibilidad de los tres clientes como implementados. No inventes pruebas de aceptación.

### Ejemplo didáctico

> Aplica `/ayuda`: explica cómo pedir novedades y cómo registrar una sesión mediante lectura manual del procedimiento, sin instalar nada.

La explicación debe indicar que estos nombres se interpretan documentalmente y pueden formularse en lenguaje natural.

## `/finalizar`

### Propósito y frases equivalentes

Cierra una sesión real identificada cuando exista autorización de registro. Equivalentes: «Terminé por hoy», «Cierra mi sesión registrada» y «Registra el cierre y los pendientes de esta sesión».

### Fuentes

Consulta la sesión activa, sus permisos y objetivo, Git local, archivos afectados, bitácoras, resultados realmente ejecutados, comentarios y relevos pertinentes.

### Pasos de la IA

1. Identifica la persona y la sesión real. Si la frase o una restricción dejan ambigua la escritura, aclara antes de persistir.
2. Si no existe sesión registrada, informa la ausencia y entrega un resumen sin inventar inicio ni duración. Cualquier registro nuevo de cierre actual requiere autorización y debe reconocer esa ausencia.
3. En una sesión existente, conserva el inicio y registra actividades reales, archivos, pruebas, fallos, pendientes y referencias verificadas.
4. Obtén hora de cierre con desfase cuando sea posible. Separa commit observado al cierre del alcance de novedades revisadas.
5. Actualiza el cursor solo hasta fuentes realmente consultadas y con autorización de registro; si no hubo consulta nueva, conserva el anterior. Propón relevo útil sin duplicar bitácoras ni transferir permisos nuevos.

### Formato de respuesta

Indica sesión/ruta, cierre registrado o dato desconocido, resumen de hechos, verificaciones, modificaciones locales/publicación comprobada, cursor anterior y nuevo cuando corresponda, pendientes y siguiente acción autorizada.

### Seguridad y datos no inventables

El cierre no ejecuta `git add`, commit, push, fusión o eliminación de ramas. No inventes horarios, duración, resultados de pruebas, referencias de GitHub ni accesos anteriores. No avances el cursor a fuentes no leídas por coincidir con HEAD.

### Ejemplo didáctico

> Terminé por hoy. Aplica `/finalizar` a mi sesión registrada, si existe; conserva los permisos de la tarea y no publiques nada. Si no registramos un inicio, informa esa ausencia.

Formato esperado sin sesión: «No existe sesión registrada identificable; se entrega un resumen y no se reconstruye una hora de inicio».

## `/registrar-tarea`

### Propósito y frases equivalentes

Recibe una actividad y, si el registro está autorizado, crea su ficha sin inventar requisitos. Equivalentes: «Codex, esta es mi nueva tarea», «Claude, registra estas instrucciones en nuestro cerebro», «Gemini, revisa este PDF y ayúdame a hacerlo» y «Tengo un trabajo para entregar el viernes». Las dos últimas frases permiten examinar y explicar; no resuelven por sí solas una ambigüedad sobre escritura o la fecha exacta.

### Fuentes

Consulta [Recepción de tareas](../skills/gestion-proyecto/RECEPCION_TAREAS.md), [Tareas](../../cerebro/10_Gestion/02_Tareas/Indice.md), [Referencias](../../cerebro/09_Documentacion/03_Documentos_de_Referencia/Indice.md), [Plantilla de tarea](../../cerebro/12_Plantillas/Plantilla_tarea.md) y el original realmente accesible.

### Pasos de la IA

1. Comprueba rama, cambios previos, identidad pertinente, alcance y acceso al documento en este cliente. Si falta el archivo, pide una copia accesible; un adjunto en otro chat no demuestra acceso actual.
2. Comprueba pertinencia para Vision_Pcb y permisos de conservación del original, registro y publicación por separado, reutilizando las autorizaciones existentes.
3. Aplica la transcripción y la separación A/B/C/D del subprocedimiento. Conserva datos ausentes, ambigüedades, tablas y referencias a contenido no legible.
4. Si corresponde registrar, genera el identificador estable, comprueba duplicados y existencia de rutas, crea la ficha y enlázala desde el índice. Reutiliza sesiones y bitácoras conforme a sus procedimientos.
5. Explica brevemente qué se pide entregar, qué falta aclarar y el primer paso útil. Distingue requisitos oficiales de plan propuesto.

### Formato de respuesta

Indica fuente leída y cobertura, ficha creada o registro pendiente, requisitos principales, datos desconocidos y siguiente paso. No obligues al integrante a completar todos los campos al recibir la actividad.

### Seguridad y datos no inventables

No copies ni publiques originales sin permiso, elimines fuentes o inventes fechas, responsables, texto ilegible o tareas. No conviertas «viernes» en una fecha exacta sin contexto suficiente ni asumas que una actividad ajena pertenece al repositorio.

### Ejemplo didáctico

> Registra las instrucciones que te proporciono como tarea de Vision_Pcb, sin copiar el original ni publicar. Explica primero qué se pide entregar y conserva como desconocidos los datos ausentes.

## `/mis-tareas`

### Propósito y frases equivalentes

Consulta actividades atribuibles a la persona declarada. Equivalentes: «Muéstrame mis tareas», «¿Qué tengo pendiente?» y «¿Qué actividades registré?». Ser solicitante y ser responsable son relaciones distintas.

### Fuentes

Consulta el índice y las fichas de tareas, criterios, evidencias y registros relacionados. Usa la identidad declarada según [Interacción y sesiones](../skills/interaccion-sesiones/PROCEDIMIENTO.md), sin deducirla de Git.

### Pasos de la IA

1. Reutiliza la identidad ya declarada; si falta y es imprescindible para el filtro personal, pide ese dato mientras ofreces la consulta general.
2. Identifica tareas reales; excluye plantillas y casos didácticos. Distingue tareas solicitadas de tareas asignadas.
3. Revisa estado, plazo conocido, dependencia, criterio y última evidencia. Consulta `/pendientes`, `/objetivos` o `/estado` para el contexto general sin crear estados paralelos.
4. Resume pendientes y tareas preparadas para revisión; informa ausencias y cobertura de la copia local.

### Formato de respuesta

Presenta nombre y referencia, relación de la persona con la tarea, estado respaldado y siguiente paso. Si no hay fichas, indica «sin tareas registradas en las fuentes consultadas».

### Seguridad y datos no inventables

No crees tareas, cambies estados, asignes responsables ni avances accesos personales. No inventes prioridades ni porcentajes para ordenar la lista.

### Ejemplo didáctico

> Consulta mis tareas para la identidad ya declarada, sin escribir. Separa las que solicité de las que tengo asignadas y explica qué evidencia falta para terminarlas.

## `/continuar-tarea`

### Propósito y frases equivalentes

Recupera el último punto verificable de una tarea. Equivalentes: «Continúa la tarea que estaba haciendo con Gemini», «¿Dónde me quedé?» y «¿Qué hicimos con esta tarea?». Una solicitud ambigua requiere identificar la actividad antes de editarla.

### Fuentes

Consulta ficha, instrucciones originales, sesiones, bitácoras, archivos asociados, errores y decisiones; relevo cuando exista. Aplica la continuidad del subprocedimiento y `/historial` para hechos previos.

### Pasos de la IA

1. Identifica la ficha por ID o referencia comprobada y comprueba rama y cambios locales actuales.
2. Revisa las fuentes en el orden del subprocedimiento; indica si falta el original o una versión necesaria para verificar avances.
3. Explica lo comprobado, lo reportado, los pendientes y el siguiente punto verificable. No asumas acceso a conversaciones privadas de otro asistente.
4. Continúa las acciones solicitadas dentro de su autorización. Usa `/inicio` solo si se pidió registrar una sesión; reutiliza la existente cuando corresponda. Documenta cambios relevantes sin duplicar historiales.

### Formato de respuesta

Resume tarea y fuentes recuperadas, último avance verificable, límite de sincronización y siguiente paso autorizado o propuesto.

### Seguridad y datos no inventables

Un relevo no transfiere permisos nuevos. No atribuyas actividades por nombre de Git, reconstruyas sesiones ausentes ni conviertas el plan anterior en trabajo ejecutado.

### Ejemplo didáctico

> Recupera la tarea que identifico y explícame dónde quedó según sus archivos y bitácoras. No cambies nada hasta delimitar el siguiente paso solicitado.

## `/revisar-tarea`

### Propósito y frases equivalentes

Compara el trabajo con instrucciones y criterios vigentes. Equivalentes: «Revisa mi trabajo», «¿Cumple la rúbrica?» y «¿Qué falta para terminar?». «Explícame qué quiere el profesor» permite explicar las instrucciones accesibles, aunque todavía no exista un entregable.

### Fuentes

Consulta original, sección A de la ficha, criterios identificados, entregables actuales y evidencia de verificaciones. Revisa `/fallas` y decisiones pertinentes sin reescribir el original.

### Pasos de la IA

1. Delimita cobertura y versión revisada. Comprueba contradicciones, fragmentos ilegibles y ausencia de criterios antes de emitir una conclusión global.
2. Contrasta cada requisito obligatorio con evidencia concreta del entregable, incluyendo formato, tablas, rúbrica y nombre requerido del archivo.
3. Separa contenido redactado, actividad completada y criterio verificado. Explica faltantes y correcciones propuestas; los criterios internos propuestos no sustituyen la rúbrica oficial.
4. Si la actualización está autorizada, conserva resultados previos y registra nueva revisión y regresiones en Seguimiento. Las correcciones de archivos requieren su autorización aplicable; no las ejecutes por el mero hecho de evaluar.

### Formato de respuesta

Indica cobertura, criterios comprobados, incumplimientos o desconocidos, evidencia y siguiente corrección útil. El porcentaje queda «no determinado» si falta metodología aprobada o evidencia suficiente.

### Seguridad y datos no inventables

No declares aprobación del profesor, ejecución de pruebas ausentes ni cumplimiento completo con revisión parcial. No elimines evidencia de un fallo anterior para elevar el progreso.

### Ejemplo didáctico

> Compara este entregable con las instrucciones y la rúbrica accesibles, sin modificarlo. Explica qué cumple, qué falta y qué no puedes comprobar.

## `/entrega`

### Propósito y frases equivalentes

Prepara la revisión final del entregable y consulta su estado de entrega. Equivalentes: «Prepara mi trabajo para entregar», «¿Está listo para revisión final?» y «Comprueba si ya fue entregado». Preparar no envía archivos ni publica en GitHub.

### Fuentes

Consulta ficha, original, entregables, criterios y última revisión; evidencia de entrega o publicación si existe y es accesible. Reutiliza `/revisar-tarea` para la comparación, sin otra lista independiente de requisitos.

### Pasos de la IA

1. Comprueba instrucciones de formato, nombre de archivo, plazo conocido, elementos obligatorios y restricciones contra los archivos actuales.
2. Revisa evidencia vigente por criterio; identifica pendientes o bloqueos antes de declarar preparación para revisión o entrega.
3. Presenta estado de actividad, verificación, entrega y publicación por separado. Si no hay evidencia de envío, informa «entrega no acreditada»; un commit o una revisión local no demuestra recepción por el profesor.
4. Persiste revisión o prepara archivos únicamente si la solicitud lo autoriza. Cualquier envío, entrega externa o publicación requiere la autorización correspondiente y comprobación real posterior.
5. Al terminar el trabajo, `/finalizar` aplica solo al cierre documental de una sesión identificada y autorizada; no entrega la actividad por cerrar la sesión.

### Formato de respuesta

Informa archivo y versión revisada, requisitos verificados, faltantes, preparación para revisión o entrega y evidencia disponible de entrega/publicación. Indica el siguiente paso concreto.

### Seguridad y datos no inventables

No afirmes que el trabajo fue entregado, recibido, aprobado o publicado sin evidencia. No ejecutes envíos, `git add`, commit, push o merge de forma implícita.

### Ejemplo didáctico

> Prepara la revisión final de esta tarea. Comprueba requisitos y formato; no envíes ni publiques. Distingue estar preparada de tener una entrega acreditada.

## Limitaciones comunes

La disponibilidad de fuentes condiciona todas las respuestas. Una consulta local no demuestra sincronización con GitHub; una nota no acredita ejecución de pruebas; una simulación documental no valida automáticamente el comportamiento de los tres asistentes. Si una fuente no es accesible, nómbrala y explica qué parte queda sin verificar.

La primera versión no incluye seguimiento automático, autenticación, notificaciones, scripts, hooks ni integración nativa de comandos. Conserva archivos previos, históricos y personales. No crea sesiones, tareas o comentarios ficticios para completar una consulta.
