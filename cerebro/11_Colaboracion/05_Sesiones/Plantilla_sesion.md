# Plantilla de sesión de interacción

> [!IMPORTANT]
> Esta plantilla no representa una sesión ni un acceso real. Cópiala a un archivo nuevo solo ante una solicitud autorizada de inicio. Sustituye los campos con evidencia; usa «no registrado», «no verificado» o «pendiente de confirmar» cuando corresponda. No inventes identidad, fechas ni referencias.

## Identificación

- **Identificador de sesión:** pendiente de asignar; debe ser único y no reutilizar otro registro.
- **Nombre del archivo:** pendiente de asignar; formato recomendado `AAAAMMDD_HHMMSS_integrante_interaccion_id.md`. Omite la hora del nombre si no fue comprobada y documenta la limitación.
- **Integrante declarado:** pendiente de confirmar mediante declaración explícita.
- **Fuente de identidad:** declaración concreta o referencia autorizada que la documente; pendiente de registrar. No utilizar solo configuración Git, usuario del sistema ni ruta local.
- **Asistente utilizado:** pendiente de registrar; modelo y versión solo si se conocen.
- **Solicitud y alcance autorizado:** pendiente de registrar; distingue consulta, creación de registro, cambios documentales y operaciones Git.
- **Estado de sesión:** pendiente de registrar; activa, cerrada, interrumpida o desconocida según evidencia.
- **Sesión anterior identificada:** sin referencia comprobada; no crear un acceso anterior para completar este campo.

## Inicio comprobado

- **Fecha y hora de inicio:** no registradas. Usa `AAAA-MM-DD HH:MM:SS ±HH:MM` cuando se comprueben.
- **Zona horaria:** no registrada; indica la zona conocida y el desfase comprobado para la fecha correspondiente.
- **Fuente de fecha y hora:** no registrada; identifica el reloj o la evidencia realmente consultada.
- **Rama observada:** no verificada; registra la salida comprobada de Git.
- **Rama autorizada y restricciones:** pendiente de registrar.
- **Estado inicial del árbol de trabajo:** no verificado; separa cambios previos de cambios realizados en esta sesión.

## Referencia de seguimiento

La referencia de seguimiento es el punto documentado para una comparación posterior, según la última cobertura realmente revisada. Una instantánea (*snapshot*) identifica las fuentes y versiones observadas; no supone una copia completa ni sincronizada del repositorio. Mantén las referencias de inicio y cierre separadas y conserva su alcance. El commit actual observado, al inicio o al cierre, no demuestra que se haya revisado toda esa versión.

### Referencia de inicio

- **Último acceso registrado utilizado:** sin referencia comprobada; identifica la sesión anterior, fecha y alcance si existen. No lo deduzcas de Git.
- **Commit local observado:** no verificado; identificador completo cuando se compruebe.
- **Fuentes documentales consultadas:** no registradas; enumera rutas y referencias concretas.
- **Cambios locales observados:** no verificados; indica rutas y condición versionada o sin seguimiento.
- **Referencia remota observada:** no verificada; rama, commit, fecha de consulta y método realmente utilizado si hubo acceso.
- **Estado de sincronización:** desconocido; distingue remoto consultado, referencia local del remoto o ausencia de conectividad. No declares sincronización por una referencia local antigua.
- **Alcance del punto de comparación:** no registrado; especifica qué fuentes cubre, el intervalo verificable y las exclusiones.
- **Límites y datos desconocidos:** pendiente de registrar.

### Consultas y entrega de novedades

- **Intención consultada e intervalo:** no registrados.
- **Fuentes realmente comparadas:** no registradas.
- **Novedades presentadas:** no registradas; referencia resultados y evidencia sin copiar historiales completos.
- **Fuentes no accesibles o no actualizadas:** pendiente de comprobar.
- **Persistencia del punto de seguimiento en inicio o cierre real autorizado:** no registrada. Una pregunta o respuesta no lo avanza automáticamente ni autoriza otra actualización persistente.
- **Referencia nueva, motivo y alcance de la cobertura realmente revisada:** sin actualización registrada; conserva la referencia anterior y su fuente. No adoptes el commit actual como cobertura de novedades no consultadas.

## Actividades reales

| Actividad | Resultado observado | Fuente o referencia | Clasificación de evidencia |
| --- | --- | --- | --- |
| Sin actividades registradas | No registrado | Sin referencia | No verificado |

Clasifica los hechos como [CONFIRMADO] cuando exista evidencia comprobada, [REPORTADO] cuando provengan de una declaración y [NO VERIFICADO] cuando falte comprobación. Los ejemplos [DIDÁCTICO] no deben convertirse en actividades realizadas.

## Archivos afectados

- **Archivos creados durante la sesión:** ninguno registrado.
- **Archivos modificados durante la sesión:** ninguno registrado.
- **Archivos eliminados con autorización:** ninguno registrado.
- **Cambios previos preservados:** pendiente de comprobar; no atribuirlos a esta sesión.
- **Archivos locales excluidos de una publicación:** pendiente de comprobar cuando corresponda.

## Pruebas y comprobaciones

| Comando o pasos ejecutados | Entorno y alcance | Resultado y código de salida | Evidencia |
| --- | --- | --- | --- |
| Ninguna comprobación registrada | No registrado | No ejecutado o no registrado | Sin referencia |

Distingue lectura de fuentes, revisión documental, simulación y prueba real del asistente. Conserva los fallos y registra por separado las correcciones y las repeticiones efectivamente realizadas. No atribuyas una simulación al comportamiento real de un cliente.

## Errores, comentarios y continuidad

- **Errores observados:** ninguno registrado; referencia el registro pertinente cuando exista, con estado y evidencia conocidos.
- **Comentarios consultados o creados con autorización:** ninguno registrado; indica autor declarado, destinatario, estado y enlace a cada registro. No los marques como leídos o resueltos automáticamente.
- **Relevo consultado o preparado con autorización:** sin referencia; enlaza su registro y el alcance que puede continuar el siguiente asistente.
- **Pendientes y bloqueos:** ninguno registrado; referencia las fuentes existentes y distingue hechos de propuestas.
- **Próxima acción autorizada:** pendiente de definir; una propuesta no equivale a autorización.

## Referencias Git y documentación

- **Bitácoras y decisiones relacionadas:** sin referencias comprobadas; enlaza registros existentes sin duplicarlos.
- **Commits comprobados:** sin referencias; distingue autor Git de participante declarado.
- **Pull Requests (solicitudes de incorporación) comprobados:** sin referencias; no inventar enlaces ni crearlos por el solo hecho de completar la plantilla.
- **Estado de publicación comprobado:** no verificado; un archivo guardado localmente no acredita un push.

## Cierre de la sesión identificada

- **Solicitud de cierre y fuente:** no registrada.
- **Fecha y hora de cierre:** no registradas; no deducirlas de un commit ni asignarlas retroactivamente sin evidencia.
- **Zona y fuente temporal del cierre:** no registradas.
- **Resultado y actividades pendientes:** pendiente de registrar mediante referencias a hechos reales.
- **Commit local y rama al cierre:** no verificados.
- **Fuentes finales consultadas y alcance:** no registrados.
- **Referencia remota y sincronización al cierre:** no verificadas; documenta el límite local si no hubo consulta actualizada.
- **Referencia final de seguimiento:** no registrada; identifica exactamente las fuentes comparables, sus versiones y límites de la última cobertura realmente revisada. Consérvala separada del commit actual al cierre. No acredita lecturas que no ocurrieron.
- **Relevo para continuar:** sin referencia comprobada.

El cierre actualiza esta sesión cuando esté inequívocamente identificada; no crea otra sesión ni autoriza operaciones Git. Si no existe un registro de inicio, informa la ausencia y conserva ese límite en el resumen de la conversación.

## Referencias de uso

- [[11_Colaboracion/05_Sesiones/Indice|Índice de sesiones]].
- [[11_Colaboracion/00_Panel/Guia_de_Interaccion|Guía de interacción]].
- [Procedimiento de interacción y sesiones](../../../docs/skills/interaccion-sesiones/PROCEDIMIENTO.md).
- [Procedimiento de bitácora](../../../docs/skills/bitacora/PROCEDIMIENTO.md).
