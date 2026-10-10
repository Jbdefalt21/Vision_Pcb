# Guía de Skills, procedimientos y agentes

Una Skill organiza conocimiento y pasos reutilizables para una clase de tarea. Cuando es nativa, su descubrimiento y ejecución dependen de un cliente concreto. Este proyecto usa primero procedimientos Markdown manuales: se solicita al asistente leerlos y aplicarlos, sin asumir instalación nativa.

Un agente es un asistente que actúa con objetivo y herramientas dentro de permisos. Tener varios agentes no garantiza coordinación ni calidad. No se configuró delegación automática por esta intervención; los tres estudiantes pueden utilizar asistentes distintos sobre tareas coordinadas.

## Por qué conservar contexto

El chat puede terminar, perder contexto o pertenecer a otra herramienta. Los archivos persistentes permiten recuperar objetivo, reglas y acuerdos. Las bitácoras registran trabajo; los commits guardan versiones; las decisiones distinguen propuesta y aprobación. Ninguna de estas fuentes debe inventarse para completar una historia.

El router es una guía de selección: reglas y contexto mínimos, índices pertinentes, luego notas específicas. No es un programa ni clasificador instalado. Su función es evitar tanto programar sin contexto como leer toda la bóveda innecesariamente.

## Procedimientos disponibles

| Procedimiento | Pregunta que resuelve | Salida útil |
| --- | --- | --- |
| Router | ¿Qué debo consultar? | Fuentes, ausencias y restricciones |
| Desarrollo | ¿Qué debo preservar antes de editar? | Alcance, contratos y cambio verificable |
| Pruebas/diagnóstico | ¿Qué evidencia respalda el resultado? | Comandos, resultados, fallos y límites |
| Gestión | ¿Qué está acordado y qué sigue pendiente? | Estados con evidencia y siguiente acción |
| Bitácora | ¿Qué ocurrió realmente en esta sesión? | Nota independiente y referencias existentes |

Las versiones normativas están en el [Catálogo](../../docs/colaboracion/CATALOGO_PROCEDIMIENTOS.md). Leer este resumen no sustituye el procedimiento específico.

## Secuencia práctica

Para una tarea real autorizada: comprobar rama/estado → router → desarrollo → pruebas pertinentes → bitácora → revisión. Para una simulación sin escritura: router → plan y ejemplo en conversación. La petición del usuario determina si hay persistencia; una obligación general de registrar no invalida una prohibición explícita de modificar.

Ejemplo de cámaras: el router debe encontrar que faltan arquitectura, módulo y aceptación. Desarrollo no elige OpenCV ni una interfaz por suposición. Pruebas no afirma haber conectado cámaras. Gestión no asigna porcentajes. Bitácora no crea un registro si la simulación prohíbe archivos.

## Evitar contradicciones entre asistentes

Mantener una sola autoridad común y adaptadores breves; enlazar en vez de copiar normas completas. En una discrepancia, distinguir restricción vigente, acuerdo aprobado, propuesta y relato histórico. Comunicarla antes de una modificación incompatible. No borrar un registro antiguo porque describe un estado que ya cambió: añadir una corrección con fuente.

Los nombres únicos reducen colisiones, pero no bloquean escritura simultánea. Coordinar alcance, usar ramas por tarea en espacios separados y revisar conflictos mediante Git. No permitir que un asistente descarte trabajo de otro con comandos de limpieza.

## Autor y evidencia

El autor humano y la IA se registran por separado. Si falta identidad, dejar pendiente; el nombre de la carpeta de Windows o user.name no demuestra quién solicitó una sesión. Completarlo posteriormente requiere confirmación explícita y corrección trazable. Pruebas propuestas se mantienen como pendientes, nunca como resultados.

Para ampliar a Skills nativas, validar cada proveedor y crear envolturas mínimas, sin duplicar procedimientos. Leer [[08_Manuales/05_GUIA_CODEX_GEMINI_CLAUDE|Asistentes]] y [[08_Manuales/13_GUIA_DE_MANTENIMIENTO|Mantenimiento]].
