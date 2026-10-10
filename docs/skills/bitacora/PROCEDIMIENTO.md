# Procedimiento compartido de bitácora

La autoridad central es [Reglas compartidas](../../REGLAS_COMPARTIDAS.md). Usa el [Router](../../colaboracion/ROUTER_CONTEXTO.md), el [Flujo](../../colaboracion/FLUJO_TRABAJO.md) y la [Plantilla](../../../cerebro/03_Bitacora/Plantilla.md). Es un procedimiento Markdown de invocación manual; no una Skill nativa instalada.

## Cuándo registrar

Registra cada sesión de desarrollo relevante: cambios de código o documentación, diagnósticos con evidencia, o trabajo que produzca decisiones, bloqueos o pendientes útiles para el equipo. Una lectura rutinaria sin novedades no exige otra nota. No edites registros históricos para presentar resultados de una sesión nueva.

Si el usuario prohíbe modificaciones durante una simulación o tarea de solo lectura, no generes notas persistentes ni actualices índices: entrega el informe o ejemplo simulado en la conversación. Si permite explícitamente documentar una tarea de solo lectura, escribe solo lo autorizado. Los cambios reales de desarrollo relevantes mantienen la obligación de documentarse conforme al alcance autorizado.

Las rutas `docs/` y `cerebro/` indicadas como texto se interpretan desde la raíz del repositorio. Los enlaces Markdown relativos se resuelven desde su archivo y los enlaces Obsidian desde la bóveda `cerebro/`.

## Creación y contenido

1. Revisa rama, cambios previos y alcance de la sesión. Distingue cambios propios de cambios existentes.
2. Crea una nota independiente en `cerebro/03_Bitacora/` basada en la plantilla. Nombre recomendado: `AAAAMMDD_HHMMSS_autor_tarea_id.md`, con identificador aleatorio y caracteres seguros para Windows. Si no hay hora registrada, omite HHMMSS y dilo en la nota; no inventes una hora para completar el nombre. Comprueba que no existe; si existe, genera otro identificador. No sobrescribas notas. El autor del nombre puede ser `autor-pendiente` si se desconoce.
3. Registra fecha y zona horaria explícita; autor humano; IA utilizada (versión/modelo solo si se conocen); rama; tarea; módulo o «sin definir»; estado y objetivo.

   Mantén autor humano e IA en campos separados. Si el autor se desconoce, usa «pendiente de confirmar»; no deduzcas que es Uriel por el usuario del sistema, la ruta local o quien ejecuta Codex. Se puede completar posteriormente con confirmación explícita de la persona o del equipo, mediante una corrección identificada con fecha, fuente de confirmación y valor anterior. Conserva la evidencia original y no atribuyas retrospectivamente comprobaciones a esa persona sin respaldo. No es necesario renombrar la nota.
4. Enumera archivos realmente modificados, añadidos o eliminados y explica los cambios. Para una sesión sin modificaciones, dilo expresamente.
5. Registra pruebas y comprobaciones ejecutadas: comando o pasos, entorno relevante, resultado, código de salida si se obtuvo y evidencia disponible. Si no se ejecutaron, indica el motivo. No guardes secretos ni datos pesados.
6. Incluye errores observados, pendientes, bloqueos y siguiente acción. Distingue **hechos comprobados**, **hipótesis** y **propuestas**; no declares una causa resuelta sin verificarla.
7. Referencia Issues, PR y commits únicamente cuando existan y su identidad se haya comprobado. Si no existen, indica «sin referencia»; no fabriques identificadores ni enlaces. Crear la nota no autoriza crear esas referencias mediante operaciones remotas o commits.
8. Revisa rutas y enlaces de la nota. Usa enlaces Markdown relativos y enlaces internos Obsidian a notas existentes. Enlaza las nuevas bitácoras en el índice cuando resulte apropiado para su descubrimiento y esté autorizado; coordina esa edición, conserva entradas ajenas y evita duplicados. Si se difiere, indica el pendiente. No es obligatorio actualizar el índice durante una tarea que prohíba modificaciones.

Los nombres únicos y la comprobación previa de existencia reducen colisiones, pero no garantizan exclusión entre escritores. Usa ramas por tarea y revisión de conflictos mediante Git; nunca sobrescribas registros de otras personas.

Para corregir omisiones verificables de un registro histórico, añade una sección de corrección identificada con fecha, motivo y fuente de evidencia, preservando resultados intermedios. No presentes una comprobación nueva como si hubiera ocurrido en la sesión original ni inventes horas.

No inventes resultados, responsables, acuerdos ni porcentajes. No confundas revisión de archivos con pruebas automatizadas o validación manual. Si una verificación falla, conserva el fallo y registra por separado la corrección y la repetición efectivamente realizada.

## Invocación manual

Desde Codex, Gemini CLI o Claude Code con acceso al repositorio:

> Lee `docs/colaboracion/ROUTER_CONTEXTO.md` y aplica `docs/skills/bitacora/PROCEDIMIENTO.md` para registrar esta sesión. Usa únicamente cambios y verificaciones realmente realizados y respeta las restricciones de la tarea.

Comprueba que el asistente pudo leer los archivos. La carga automática y los mecanismos nativos de cada proveedor quedan sin verificar.
