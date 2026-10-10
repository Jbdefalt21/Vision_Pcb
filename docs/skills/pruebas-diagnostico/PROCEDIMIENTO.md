# Procedimiento compartido de pruebas y diagnóstico

Autoridad: [Reglas compartidas](../../REGLAS_COMPARTIDAS.md). Usa [Router](../../colaboracion/ROUTER_CONTEXTO.md) y [Flujo](../../colaboracion/FLUJO_TRABAJO.md). Procedimiento manual, sin dependencia de hooks o Skills nativas.

## Preparación

Comprueba rama, estado y alcance autorizado. Consulta módulo, requisitos, criterios de aceptación, errores y pruebas disponibles. Identifica entorno relevante: sistema operativo, herramienta y versión cuando se conozcan, datos y hardware necesarios. No instales una suite ni conectes servicios sin autorización.

Selecciona comprobaciones que puedan detectar una regresión o verificar un criterio real. No asumas pytest ni dependencias que no están definidas. Si no hay pruebas de aplicación, informa esa ausencia; revisar Markdown no demuestra funcionamiento de la inspección PCB.

## Ejecución y evidencia

Para cada comprobación registra:

| Campo | Contenido |
| --- | --- |
| Tipo | Lectura de archivos, comprobación automatizada o validación manual |
| Objetivo | Criterio o fallo que se pretende verificar |
| Ejecución | Comando exacto o pasos realmente realizados |
| Entorno | Información conocida necesaria para reproducir |
| Resultado | Salida relevante, código de salida si se obtuvo, esperado frente a observado |
| Limitación | Casos no cubiertos, ausencia de hardware, entorno o permisos |

No incluyas secretos ni grandes logs. No confundas ausencia de errores con cobertura completa. Un comando de ayuda con salida no cero puede mostrar uso correctamente: interpreta la salida antes de clasificarlo como fallo de producto.

## Diagnóstico

Conserva el fallo inicial. Separa observación, hipótesis y causa comprobada. Intenta una reproducción mínima dentro del alcance; no uses cambios destructivos como diagnóstico. Si se autoriza corregir, aplica [Desarrollo](../desarrollo/PROCEDIMIENTO.md), repite la comprobación pertinente y conserva ambos resultados. Si persiste, registra estado y siguiente acción sin declarar resolución.

Documenta trabajo relevante con [Bitácora](../bitacora/PROCEDIMIENTO.md) y, cuando corresponda, un registro en el área de Errores. Si están prohibidas modificaciones, informa en la conversación sin crear notas. Referencia Issues/PR/commits únicamente comprobados.

No hagas git add, commit, push, merge ni modificaciones a main sin autorización explícita.

## Ejemplo documental

> Aplica este procedimiento a los enlaces de los manuales y ejecuta `scripts/Validar-Documentacion.ps1`. Reporta fallos y limitaciones. No ejecutes pruebas de hardware ni operaciones remotas.

`git diff --check` solo cubre cambios versionados de ese diff; los archivos nuevos sin seguimiento deben revisarse aparte. La representación visual en Obsidian y la carga por otros asistentes requieren pruebas distintas.
