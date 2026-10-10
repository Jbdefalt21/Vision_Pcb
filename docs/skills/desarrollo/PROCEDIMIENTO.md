# Procedimiento compartido de desarrollo

Autoridad: [Reglas compartidas](../../REGLAS_COMPARTIDAS.md). Aplica el [Router](../../colaboracion/ROUTER_CONTEXTO.md) y el [Flujo](../../colaboracion/FLUJO_TRABAJO.md). Es un procedimiento manual, no una Skill nativa instalada. Las rutas textuales parten de la raíz del repositorio.

## Entrada y condiciones para editar

1. Define tarea, alcance autorizado, responsable conocido y rama. Comprueba rama y estado Git; detén modificaciones si la rama requerida no coincide. Preserva cambios previos.
2. Consulta arquitectura existente, índice y nota del módulo, decisiones aprobadas, requisitos, código y pruebas relacionados. La arquitectura del entorno colaborativo no sustituye la arquitectura del detector PCB. Si faltan acuerdos que condicionan el comportamiento, comunica las ausencias y pide definición antes de programar ese comportamiento.
3. Identifica funcionalidades, interfaces y datos que deben conservarse. Usa código, documentación y pruebas como evidencia; registra discrepancias. No presupongas cobertura ni funcionamiento de hardware.
4. Propón archivos afectados y criterios verificables. Comprueba que la tarea autoriza la implementación. En simulaciones o solo lectura con escritura prohibida, entrega el plan sin modificar archivos.

## Implementación y salida

Realiza cambios pequeños y dentro del alcance. No elimines código sin autorización ni hagas refactorizaciones generales que no exige la tarea. No instales dependencias por iniciativa propia. Si coinciden cambios ajenos sobre el mismo contenido, coordina antes de sobrescribirlo. Nombres únicos no sustituyen ramas separadas ni revisión de conflictos.

Aplica [Pruebas y diagnóstico](../pruebas-diagnostico/PROCEDIMIENTO.md) con comprobaciones proporcionales al cambio. Si no se pueden ejecutar, indica la limitación y el riesgo pendiente. Actualiza documentación relacionada únicamente donde el cambio real la haya invalidado; conserva historia y acuerdos anteriores.

Aplica [Bitácora](../bitacora/PROCEDIMIENTO.md) para cambios relevantes. Presenta alcance final, archivos, comportamiento resultante, resultados y pendientes. No declares completa una funcionalidad cuyos criterios no se han verificado.

No hagas git add, commit, push, merge ni modificaciones a main sin autorización explícita para cada acción. Una petición de código no autoriza publicación.

## Ejemplo de invocación manual

> Lee el router y `docs/skills/desarrollo/PROCEDIMIENTO.md`. Planifica la selección de cámaras como simulación de solo lectura. Identifica requisitos y arquitectura ausentes; no programes ni crees una bitácora persistente.

Resultado esperado: selección de contexto, preguntas y plan delimitado; no elección inventada de biblioteca, módulo o interfaz.
