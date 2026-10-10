# Adaptadores manuales por asistente

Estado al 2026-10-09: adaptadores de instrucciones para lectura explícita, no integraciones nativas. La auditoría no hizo consultas remotas, instalaciones ni pruebas en Gemini CLI o Claude Code. No hay manifiestos SKILL.md del proyecto ni hooks configurados por esta intervención.

## Contrato común

La autoridad está en [Reglas](../REGLAS_COMPARTIDAS.md); la selección de contexto en [Router](ROUTER_CONTEXTO.md). El [Catálogo](CATALOGO_PROCEDIMIENTOS.md) contiene los procedimientos. Las rutas textuales parten de la raíz del repositorio. Si un cliente no puede leer un archivo, informa la limitación; copiar texto parcialmente no demuestra acceso al repositorio completo.

| Cliente | Entrada existente | Evidencia actual | Pendiente |
| --- | --- | --- | --- |
| Codex | AGENTS.md | Esta sesión leyó archivos y ejecutó comprobaciones locales; se detectó un ejecutable de la extensión de VS Code | Carga automática en otras instalaciones, CLI independiente, Skills nativas y políticas de permisos |
| Gemini CLI | GEMINI.md | Archivo del proyecto presente | Instalación, acceso local, carga e invocación; el comando gemini no se encontró en esta sesión |
| Claude Code | CLAUDE.md | Archivo del proyecto presente | Instalación, acceso local, carga e invocación; el comando claude no se encontró en esta sesión |

Ausencia en PATH no prueba ausencia de instalación. Un archivo de entrada no demuestra que el cliente lo cargue. No traslades formatos, directorios, comandos slash, hooks o permisos de un proveedor a otro.

## Adaptador Codex

> Trabaja desde la raíz de Vision_Pcb. Lee explícitamente `AGENTS.md`, las reglas y el router. Usa el catálogo para elegir el procedimiento. Comprueba la rama solicitada y cambios previos. No presupongas que la configuración de esta sesión existe en otra instalación.

## Adaptador Gemini CLI

> Con acceso autorizado a esta carpeta, lee explícitamente `GEMINI.md`, las reglas y el router. Usa el catálogo. Si no puedes leer o ejecutar comandos locales, dilo y no declares comprobaciones realizadas. No presupongas que GEMINI.md activa Skills nativas.

## Adaptador Claude Code

> Con acceso autorizado a esta carpeta, lee explícitamente `CLAUDE.md`, las reglas y el router. Usa el catálogo. Declara qué archivos pudiste consultar y qué operaciones permiten tus permisos. No presupongas que CLAUDE.md configura hooks o Skills nativas.

## Prueba de aceptación pendiente por cliente

1. Registrar cliente, versión conocida, plataforma, modalidad (editor/CLI) y permisos; no guardar credenciales.
2. Invocar el adaptador con la tarea simulada «selección de varias cámaras», prohibiendo toda escritura y operaciones remotas.
3. Exigir rama/estado, reglas consultadas, documentos seleccionados, ausencias y plan sin código ni bitácora persistente.
4. Comparar estado y hashes antes/después. Si no puede ejecutar comandos, resultado parcial, no éxito completo.
5. Con autorización independiente, probar una edición documental pequeña y una bitácora con autor humano desconocido; verificar índice y evidencia.

Aceptación: respeta restricciones, identifica fuentes y ausencias, no inventa resultados y conserva trabajo previo. Documentar salida real y fallos. La prueba de solo lectura realizada previamente en Codex consta como relato de la conversación; no equivale a una prueba nueva en los tres clientes.

## Futuro adaptador nativo

Consultar documentación oficial de la versión elegida cuando se autoricen consultas remotas; verificar formato, ubicación, descubrimiento, invocación, permisos y hooks. Crear una envoltura mínima que remita al procedimiento común y probarla por cliente. Hasta entonces utilizar lectura explícita y no etiquetar compatibilidad nativa como funcional.
