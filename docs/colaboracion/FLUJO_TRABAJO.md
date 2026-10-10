# Flujo de trabajo compartido

La autoridad central es [Reglas compartidas](../REGLAS_COMPARTIDAS.md). Este flujo se aplica mediante lectura explícita; no depende de adaptadores nativos.

1. **Inicio:** identifica tarea, autor humano si se conoce, objetivo, alcance, restricciones y rama autorizada. Recomienda una rama por tarea; no la crees ni cambies sin autorización.
2. **Estado inicial:** ejecuta `git branch --show-current` y `git status --short`. Ante una rama incorrecta, detén las modificaciones. Identifica cambios previos y evita sobrescribirlos, descartarlos o atribuirlos a la sesión.
3. **Contexto:** aplica el [Router](ROUTER_CONTEXTO.md). Lee reglas e índices antes de notas específicas; comunica ausencias y decisiones no aprobadas. Elige desarrollo, pruebas/diagnóstico o gestión según el [Catálogo](CATALOGO_PROCEDIMIENTOS.md), además de bitácora cuando corresponda.
4. **Modificación autorizada:** delimita archivos y conserva contenido útil y funcionalidades existentes. No inventes arquitectura ni amplíes el alcance. Si aparece trabajo ajeno sobre los mismos archivos, coordina antes de una edición incompatible.
5. **Verificación:** ejecuta las comprobaciones pertinentes disponibles. Registra comandos o pasos, resultados, fallos y limitaciones. Para documentación, revisa rutas y enlaces, archivos creados y `git diff --check`. Distingue lectura, comprobación automatizada y validación manual.
6. **Bitácora:** aplica el [Procedimiento](../skills/bitacora/PROCEDIMIENTO.md), creando una nota independiente para cambios reales de desarrollo relevantes. Si el usuario prohíbe modificaciones en una simulación o tarea de solo lectura, no crees registros persistentes: entrega el resultado en la conversación. Si autoriza explícitamente documentar una tarea de solo lectura, registra únicamente lo autorizado. Incluye lo realmente realizado y pendientes; revisa también la nota creada.
7. **Revisión:** muestra archivos nuevos/modificados, alcance, evidencia y siguiente acción. Recomienda PR y revisión humana antes de integración. Enlaza un PR únicamente cuando exista.

## Límites de autorización

Está prohibido hacer `git add`, commits, push, merges o modificaciones a `main` sin autorización explícita para la acción correspondiente. Una autorización de edición no autoriza publicación ni integración. Respeta además las restricciones de cada tarea sobre remotos, instalaciones y configuración.

Estas instrucciones no son una protección técnica de Git. La protección de ramas y los permisos de cada cliente requieren configuración y verificación separadas.

## Coordinación entre integrantes

- Asigna responsable y alcance por tarea; usa Issue cuando exista y esté autorizado gestionarlo.
- Recomienda ramas por tarea y espacios de trabajo separados para sesiones simultáneas. No crees worktrees o clones automáticamente.
- Usa notas de bitácora independientes; evita actualizar un registro acumulativo compartido en cada sesión.
- Los nombres únicos reducen colisiones, pero no garantizan exclusión entre escritores. Recomienda ramas por tarea y revisión de conflictos mediante Git; no ejecutes integraciones sin autorización.
- Coordina las ediciones de índices y Dashboard, que concentran conflictos. Mantén cambios pequeños y preserva enlaces existentes.
- Ante conflictos, conserva ambas intenciones y solicita coordinación cuando sea necesaria; no elijas automáticamente una versión completa.

No se presupone que los tres asistentes carguen estos procedimientos automáticamente. Su invocación común es pedirles que lean y apliquen las rutas indicadas.
