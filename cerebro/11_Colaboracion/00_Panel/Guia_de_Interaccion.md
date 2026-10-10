# Guía de interacción y continuidad entre asistentes

## Propósito y alcance

El Sistema de Interacción de Vision_Pcb es un protocolo documental compartido: un conjunto de instrucciones, índices y plantillas que permite consultar el estado del trabajo y registrar sesiones autorizadas. La continuidad entre asistentes consiste en recuperar evidencia del repositorio, en lugar de depender de la memoria de una conversación anterior.

[REPORTADO] Esta guía se dirige a Uriel, Erik y Andrea, según la solicitud de incorporación del sistema. Cada integrante debe declarar su identidad al utilizarlo. Los nombres de los ejemplos no atribuyen actividades reales a estas personas.

El protocolo sirve para solicitar novedades, consultar errores y objetivos, recuperar comentarios y preparar un relevo entre Codex, Claude Code y Gemini. Su operación requiere pedir al asistente que lea los documentos y comprobar qué fuentes pudo consultar. Esta versión no instala Skills nativas, no registra comandos de barra ni ejecuta tareas automáticamente.

## Requisitos y preparación

Para trabajar con evidencia, el asistente necesita acceso de lectura a una copia de `C:\vision-pcb\Vision_Pcb`, a sus notas Markdown y al historial Git disponible. Registrar una sesión requiere además permiso de escritura en su carpeta. Una consulta del repositorio remoto (*remote*) necesita conectividad y la autorización aplicable; una copia local puede estar desactualizada respecto de GitHub.

Una rama (*branch*) es una línea de trabajo de Git. Un commit (confirmación de cambios) identifica una versión del repositorio. La persona que participa en una sesión y el autor registrado por Git son datos distintos: la configuración Git, el usuario de Windows y una ruta local no prueban la identidad del participante.

1. Abre el repositorio con el cliente que vayas a utilizar.
2. Declara tu nombre y el alcance de la solicitud.
3. Pide la lectura de las rutas comunes indicadas a continuación.
4. Comprueba que el asistente informe la rama, las fuentes accesibles y los límites de su consulta.
5. Autoriza por separado las operaciones Git de escritura que necesites. Una consulta o el cierre de sesión no autorizan commit, push ni integración.

La invocación común es texto dirigido al asistente. No exige modificar `AGENTS.md`, `GEMINI.md` ni `CLAUDE.md`:

> [DIDÁCTICO] «Lee `docs/colaboracion/ROUTER_CONTEXTO.md` y aplica `docs/skills/interaccion-sesiones/PROCEDIMIENTO.md`. Soy Uriel. Antes de actuar, comprueba la rama autorizada, el estado Git y las fuentes que puedes consultar. Esta solicitud no autoriza publicar cambios».

Codex, Claude Code y Gemini deben leer el mismo [procedimiento de interacción](../../../docs/skills/interaccion-sesiones/PROCEDIMIENTO.md). El [catálogo de comandos](../../../docs/colaboracion/COMANDOS_INTERACCION.md) define las intenciones y fuentes de cada solicitud. La carga automática en esos clientes y su ejecución conjunta no se consideran verificadas por la existencia de estos documentos.

## Solicitudes disponibles

Los comandos de barra son abreviaturas textuales del protocolo. Escríbelos dentro de la solicitud al asistente; no se presentan como comandos instalados en el cliente. Las frases naturales equivalentes tienen el mismo alcance.

| Solicitud | Intención |
| --- | --- |
| `/inicio` | Iniciar y registrar una sesión real con identidad declarada y hora comprobada. |
| `/cambios` | Consultar novedades posteriores al punto de seguimiento disponible. |
| `/historial` | Consultar actividades documentadas y evidencia Git dentro de un alcance indicado. |
| `/estado` | Resumir el estado documentado, sus fuentes y límites. |
| `/objetivos` | Consultar objetivos y sus criterios de aceptación; calcular avance solo con evidencia suficiente. |
| `/pendientes` | Consultar asuntos pendientes y bloqueos registrados. |
| `/fallas` | Consultar errores, diagnóstico y comprobaciones disponibles. |
| `/equipo` | Consultar información documentada del equipo, comentarios y relevos. |
| `/mi-actividad` | Consultar actividad vinculada con la identidad declarada, sin equipararla automáticamente al autor Git. |
| `/ayuda` | Mostrar el protocolo y las fuentes disponibles. |
| `/finalizar` | Cerrar la sesión identificada mediante una actualización delimitada, sin operaciones Git implícitas. |

El detalle de fuentes, pasos y formato de respuesta corresponde al catálogo. Una consulta aislada no crea una sesión ni modifica el último acceso por sí sola.

## Inicio de una sesión

Una sesión es un registro documental de una interacción real, con un identificador único, participante declarado, asistente y marcas temporales comprobadas. El [[11_Colaboracion/05_Sesiones/Indice|índice de sesiones]] y la [[11_Colaboracion/05_Sesiones/Plantilla_sesion|plantilla de sesión]] permiten localizar y crear ese registro sin reconstruir accesos que nunca se documentaron.

Al pedir un inicio, declara tu nombre. Si falta una identidad suficientemente clara, el asistente solicita la declaración antes de atribuirte un registro. La petición de inicio autoriza registrar esa sesión conforme al procedimiento; no autoriza registrar a otra persona ni modificar sesiones anteriores ajenas.

> [DIDÁCTICO] **Uriel:** «Codex, soy Uriel. Inicia mi sesión para revisar la documentación. No publiques cambios».
>
> **Respuesta esperada del asistente:** «Comprobaré la rama, las fuentes y la fecha, hora y zona disponibles. Buscaré una sesión anterior atribuida mediante una declaración registrada. Si no existe, informaré que no hay un acceso anterior documentado. Crearé un registro único para esta sesión y conservaré el punto de seguimiento observado, con sus límites».

Este ejemplo describe una respuesta esperada; no representa una sesión creada, un horario real ni una prueba ejecutada con Codex.

Si ya existe una sesión activa inequívocamente identificada, consulta ese registro antes de crear otro. Ante varias coincidencias o registros incompletos, aclara cuál se reanuda. No dupliques una sesión solo porque cambió el asistente.

## Novedades desde el último acceso

El último acceso registrado es el punto documentado de una interacción previa identificable. No equivale a la última fecha de modificación de un archivo, a un commit del participante ni a una apertura de Obsidian. La referencia de seguimiento debe indicar qué fuentes y versiones se observaron, porque una consulta parcial no acredita haber leído todo el repositorio.

> [DIDÁCTICO] **Erik:** «Hola Gemini, soy Erik. ¿Qué cambió desde mi último acceso registrado?».
>
> **Respuesta esperada del asistente:** «Buscaré tu registro anterior y su referencia de seguimiento. Compararé esa referencia con el historial y las notas accesibles. Separaré cambios confirmados por Git, información reportada en las notas y modificaciones locales todavía sin publicar. Si no puedo consultar el remoto, el resumen se limitará a esta copia local».

> [DIDÁCTICO] **Andrea:** «Es mi primera consulta. ¿Qué novedades hay desde mi último acceso?».
>
> **Respuesta esperada del asistente:** «No hay un acceso anterior documentado que pueda utilizar como punto de comparación. Puedo mostrar el estado actual disponible o revisar un intervalo que indiques. No crearé una fecha anterior para completar el historial».

Pedir novedades no avanza automáticamente el punto de seguimiento (*cursor*). El resumen debe indicar el intervalo, las fuentes y los cambios que no pudo comprobar. Su persistencia se realiza únicamente en el inicio o cierre real autorizado, con la fuente y el alcance de lo efectivamente revisado. El commit actual al cierre no sustituye la última cobertura realmente revisada ni acredita novedades que no fueron consultadas. Conserva los límites y la referencia anterior.

Para preguntar «¿Qué hizo Erik mientras no estaba?», declara tu propia identidad y delimita el intervalo. El asistente debe buscar atribuciones explícitas en registros y, por separado, autores de commits. Si falta evidencia sobre Erik, informa la ausencia sin deducir actividades de la configuración Git ni adjudicarle cambios sin publicar.

## Errores y asuntos pendientes

Los errores se consultan en [[05_Errores/Indice|el índice de errores]] y los asuntos pendientes en [[06_Pendientes/Indice|el índice de pendientes]]. Una nota que menciona una solución no demuestra por sí sola que se haya ejecutado o que el fallo siga resuelto en el entorno actual.

> [DIDÁCTICO] **Uriel:** «Claude Code, ¿qué errores siguen pendientes? Solo consulta; no corrijas archivos».
>
> **Respuesta esperada del asistente:** «Revisaré los registros disponibles y separaré errores pendientes, correcciones con evidencia y estados desconocidos. Para cada resultado indicaré la fuente, la comprobación existente y el siguiente paso propuesto. No marcaré un error como resuelto sin respaldo».

Una propuesta del asistente debe quedar identificada como propuesta. Consultar errores no autoriza ejecutar una solución, cambiar dependencias ni modificar el alcance técnico del proyecto.

## Objetivos y porcentajes

Un porcentaje de avance representa una medida definida sobre un conjunto de criterios. Para calcularlo, se requieren objetivos y criterios aprobados, un denominador explícito, una fórmula acordada y evidencia de los criterios cumplidos. Si faltan estos datos, la respuesta correcta es «avance no calculable con la información disponible» y debe indicar qué falta.

> [DIDÁCTICO] **Erik:** «Codex, muéstrame el porcentaje de los objetivos».
>
> **Respuesta esperada del asistente cuando faltan criterios:** «No encontré un conjunto aprobado de criterios ni una fórmula de cálculo. Puedo mostrar los objetivos documentados y los datos pendientes de acordar; no asignaré un porcentaje estimado».

[DIDÁCTICO] Si un objetivo ficticio tuviera cuatro criterios de igual peso expresamente acordados y evidencia de cumplimiento de uno, la fórmula sería `100 × criterios cumplidos / criterios acordados`, con numerador `1` y denominador `4`, y daría `25 %`. Este ejemplo no mide el estado de Vision_Pcb ni aprueba una fórmula para sus objetivos. Si hay pesos, deben estar acordados y documentados antes de calcularlos; tareas realizadas y criterios cumplidos no son intercambiables.

## Comentarios y relevos

Un comentario es un mensaje documental con autor declarado, destinatario, asunto, tarea, fecha y estado. Un relevo (*handoff*) resume fuentes y resultados de una sesión para que otro participante o asistente continúe dentro del alcance autorizado. Los relevos no sustituyen las bitácoras, las decisiones ni el historial Git.

Consulta [[11_Colaboracion/02_Comentarios/Indice|los comentarios]] y [[11_Colaboracion/03_Relevos/Indice|los relevos]] para localizar registros reales. Las plantillas están en [[12_Plantillas/Plantilla_comentario|Plantilla de comentario]] y [[12_Plantillas/Plantilla_relevo|Plantilla de relevo]].

> [DIDÁCTICO] **Uriel:** «Gemini, soy Uriel. ¿Qué comentarios pendientes me dejó Andrea?».
>
> **Respuesta esperada del asistente:** «Buscaré comentarios con destinatario Uriel y autor declarado Andrea. Mostraré los asuntos pendientes según su estado documentado, por ejemplo abierto o bloqueado, y su referencia. Si no hay un registro coincidente o falta identificación del autor, informaré esa limitación; no generaré un comentario para completar la respuesta».

> [DIDÁCTICO] **Andrea:** «Claude Code, prepara un relevo de esta sesión para continuar después con Codex. Registra solo lo realizado y enlaza la evidencia».
>
> **Respuesta esperada del asistente:** «Usaré el registro de sesión identificado y las comprobaciones realmente ejecutadas. Separaré resultados, fallos, cambios locales y próximos pasos autorizados. Referenciaré las bitácoras y los commits existentes sin copiar su contenido completo. La propuesta de siguiente paso quedará señalada como propuesta».

La preparación documental de un comentario o relevo requiere una solicitud autorizada. Consultar esos registros no los marca como leídos, respondidos o resueltos automáticamente, ni envía mensajes a otros integrantes.

## Finalización y continuidad

Antes de cerrar, el asistente debe identificar el registro activo y revisar la evidencia de la sesión. El cierre añade la hora real cuando se conoce, el resultado, los pendientes y una referencia de seguimiento con alcance explícito. Mantiene la información de inicio y referencia fuentes existentes; no duplica toda la bitácora.

> [DIDÁCTICO] **Uriel:** «Codex, terminé por hoy. Finaliza la sesión que inicié, sin commit ni push».
>
> **Respuesta esperada del asistente:** «Identificaré tu sesión activa y registraré el cierre con la hora comprobada. Resumiré las actividades reales, los archivos afectados, las pruebas ejecutadas y los pendientes mediante referencias. Conservaré los cambios locales y separaré su estado del historial publicado».

> [DIDÁCTICO] **Erik:** «Terminé por hoy», sin una sesión previamente registrada.
>
> **Respuesta esperada del asistente:** «No hay una sesión identificada que pueda cerrar. Puedo resumir esta conversación con los límites de la evidencia disponible. No crearé retrospectivamente una sesión con una hora de inicio inventada».

Cerrar una sesión no crea otra, no supone que todos los cambios estén publicados y no autoriza operaciones Git. Un Pull Request (solicitud de incorporación de cambios) o un commit solo se referencia cuando existe y fue comprobado. Al cambiar de asistente, pide la lectura del protocolo y del relevo correspondiente; el siguiente cliente debe confirmar qué archivos pudo consultar.

## Verificación y límites

Comprueba que las respuestas identifiquen fuentes, identidad declarada, alcance temporal y disponibilidad del remoto. Contrasta las simulaciones de la [matriz de pruebas](../../../docs/colaboracion/PRUEBAS_INTERACCION.md) con las reglas del procedimiento. Esas simulaciones evalúan el diseño documental y no acreditan comportamiento real de los tres clientes.

| Disponible mediante invocación manual | Requiere implementación o verificación posterior |
| --- | --- |
| Leer Markdown y consultar el historial Git accesible. | Carga automática del protocolo en cada cliente. |
| Interpretar las solicitudes aplicando el catálogo leído. | Registro nativo de comandos de barra. |
| Crear registros autorizados con las plantillas y datos reales. | Detección automática de apertura, inicio, cierre o identidad. |
| Consultar comentarios y preparar relevos documentales. | Notificaciones, envío de mensajes o estados de lectura automáticos. |
| Comparar referencias accesibles e informar cambios locales. | Sincronización continua y comprobación automática de GitHub. |
| Calcular un avance cuando hay fórmula aprobada y evidencia. | Medición automática de objetivos sin fuentes o criterios acordados. |

Cuando una fuente no esté disponible, informa la ausencia y su efecto. No conviertas una consulta parcial en un historial completo. La actualización de los archivos de entrada de los asistentes queda fuera de esta intervención, porque contienen cambios pendientes de otra tarea; la invocación manual por rutas permite utilizar este protocolo sin sobrescribirlos.

## Referencias

- [[11_Colaboracion/00_Panel/Indice|Panel de colaboración]].
- [Router de contexto](../../../docs/colaboracion/ROUTER_CONTEXTO.md).
- [Reglas compartidas](../../../docs/REGLAS_COMPARTIDAS.md).
- [Flujo de trabajo](../../../docs/colaboracion/FLUJO_TRABAJO.md).
- [Procedimiento de bitácora](../../../docs/skills/bitacora/PROCEDIMIENTO.md).
