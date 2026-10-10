# Guía de Codex, Gemini CLI y Claude Code

Los tres asistentes previstos ayudan a comprender, editar y verificar trabajo, según sus herramientas y permisos. El repositorio contiene entradas separadas para ellos; no contiene una integración nativa común que garantice comportamiento idéntico. La intención de usarlos está en [[01_Proyecto/Contexto|Contexto]].

## Propósito y evidencia actual

| Herramienta | Uso previsto | Qué se comprobó aquí | Qué no se comprobó |
| --- | --- | --- | --- |
| Codex | Asistencia en repositorio y editor o CLI según instalación | Lectura/edición local y comandos de esta sesión; AGENTS.md presente; ejecutable detectado en extensión de VS Code | CLI independiente, carga nativa de Skills del proyecto y comportamiento en otro equipo |
| Gemini CLI | Asistencia desde terminal con contexto del proyecto | GEMINI.md presente | Instalación, autenticación, permisos, carga automática y ejecución funcional |
| Claude Code | Asistencia sobre código y documentación | CLAUDE.md presente | Instalación, autenticación, permisos, carga automática y ejecución funcional |

Get-Command encontró git, code, py y codex en esta sesión. No encontró gemini, claude, python u obsidian. PATH solo indica qué comandos son localizables; una aplicación gráfica puede estar instalada sin comando en PATH. No lanzar directamente el binario interno de una extensión como si fuera una CLI documentada.

## Instrucciones y contexto

Las tres entradas remiten a [Reglas](../../docs/REGLAS_COMPARTIDAS.md), [Router](../../docs/colaboracion/ROUTER_CONTEXTO.md) y [Catálogo](../../docs/colaboracion/CATALOGO_PROCEDIMIENTOS.md). El router selecciona índices y después notas específicas; los manuales proporcionan aprendizaje cuando la tarea lo exige.

El contexto persistente reside en archivos e historial, no en la memoria supuesta del chat. Al cambiar de asistente, indicar raíz, tarea, rama, restricciones, documentos pertinentes y evidencia disponible. No pedir a la nueva IA que asuma decisiones de una conversación que no puede consultar.

## Acceso y límites

Un asistente necesita acceso autorizado a la carpeta y herramientas locales para comprobar Git. Si solo ve texto pegado, puede analizarlo, pero no debe afirmar que ejecutó git status. Los permisos del cliente pueden impedir escritura, comandos o red. Las instrucciones no reemplazan ese control técnico.

Solicitar explícitamente que declare qué leyó, qué ejecutó y qué no pudo verificar. Un resultado convincente puede ser incorrecto; comparar con archivos y salida real. No entregar tokens, claves o archivos privados como contexto. No compartir logs completos sin revisión.

No asumir cuentas o suscripciones iguales: acceso, cuotas, modalidades y políticas institucionales deben comprobarse por integrante. Esta auditoría no consultó planes ni requisitos actuales por la prohibición de operaciones remotas.

## Invocación manual portable

Usar el [adaptador manual del cliente](../../docs/colaboracion/ADAPTADORES_MANUALES.md) y añadir la tarea concreta:

> Lee explícitamente tu entrada, las reglas y el router desde la raíz del repositorio. Esta tarea es de solo lectura. Comprueba la rama si tienes herramienta local, identifica ausencias y no escribas archivos ni ejecutes operaciones remotas.

Una Skill nativa depende del formato, descubrimiento, invocación y permisos del proveedor. Un PROCEDIMIENTO.md es solo texto compartido. No renombrarlo a SKILL.md esperando que funcione en los tres productos.

## Validación por equipo

Cada integrante debe registrar modalidad, versión conocida, permisos y resultado de la prueba de aceptación. Primero lectura sin cambios; después, con autorización, una edición documental y bitácora. Fallar en leer archivos es una limitación que debe declararse, no resolverse inventando contenido.

La compatibilidad nativa permanece pendiente hasta consultar documentación oficial de versiones concretas y ejecutar pruebas separadas. Referencias oficiales de orientación, no consultadas en esta intervención: OpenAI developers.openai.com, Gemini CLI geminicli.com y Claude Code code.claude.com. No se recomiendan comandos de instalación de esos sitios sin verificarlos en una fase permitida.

Relacionado: [[08_Manuales/06_GUIA_SKILLS_Y_AGENTES|Skills]], [[08_Manuales/07_INSTALACION_DESDE_CERO|Instalación]] y [[08_Manuales/12_ESTADO_ACTUAL_Y_PENDIENTES|Estado]].
