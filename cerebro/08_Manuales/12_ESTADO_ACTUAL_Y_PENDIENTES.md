# Estado actual y pendientes

Fotografía auditada el 2026-10-09. «Implementado documentalmente» no significa probado en hardware, instalado en tres clientes ni publicado. Actualizar esta nota con evidencia cuando cambie el estado; no inventar porcentajes.

## Evidencia de base

La rama obligatoria feature/sistema-skills apunta al commit cac8cfd al iniciar esta intervención. El historial local contiene 29aaf69, deed387 y cac8cfd. La copia local de origin/main coincide con cac8cfd; no se accedió al servidor para confirmar actualidad. Git tiene identidad configurada; autor humano de sesiones de IA permanece pendiente.

## Estado por área

| Área | Estado real | Evidencia / siguiente acción |
| --- | --- | --- |
| Estructura inicial, reglas, entradas y plantillas | En historial local | deed387 y merge cac8cfd; PR #1 identificado por mensaje, checks no consultados |
| Router, flujo y bitácora | Implementados localmente, con correcciones | Archivos presentes y registros anteriores; pendientes de commit/publicación |
| Autoría, simulación, indexación, rutas, concurrencia | Aclaradas documentalmente | Procedimientos e índice; autor desconocido no completado artificialmente |
| Desarrollo, pruebas/diagnóstico y gestión | Procedimientos manuales redactados en esta intervención | Revisar alcance; faltan pruebas funcionales con tareas reales en cada cliente |
| Manual maestro | 14 capítulos redactados | Índice general; lectura y revisión por los tres integrantes pendientes |
| Adaptadores | Tres modalidades manuales documentadas | No hay adaptadores nativos instalados; aceptación por cliente pendiente |
| Validación documental | Script ejecutado localmente, sin incidencias | 42 Markdown, 174 enlaces y 13 casos de exclusión; evidencia final en bitácora de esta intervención; no equivale a render visual |
| Git | Disponible | git --version: 2.53.0.windows.2; ayuda local consultada |
| VS Code | Comando localizado | code.cmd presente; no se probó apertura gráfica durante auditoría |
| Codex | Operativo para acciones de esta sesión | Lectura, edición y comandos locales; no prueba otras instalaciones |
| Gemini CLI y Claude Code | Previstas, no verificadas | Comandos no encontrados por Get-Command; instalación fuera de PATH posible |
| Obsidian | Bóveda documentada, configuración local presente | cerebro/.obsidian existe; interfaz/render no verificados |
| Python | No utilizable por el lanzador en la comprobación | py --version: Can't find a default Python, salida 1; acordar versión e instalar con permiso |
| Detector PCB | No implementado | src/, tests/ y config/ contienen marcadores .gitkeep; faltan módulos y arquitectura técnica |
| Cámaras | Solo ejemplo de planificación | Sin código, dependencia ni pruebas de hardware |

No hay un bloqueo para redactar documentos. La implementación técnica y la puesta en marcha completa dependen de acuerdos y verificaciones pendientes, no de un porcentaje aproximado.

## Pendientes prioritarios

1. Revisar cambios locales y decidir publicación; sin commit no llegarán a otros clones.
2. Confirmar nombres y responsabilidades del equipo y autoría humana de sesiones, con fuente explícita.
3. Acordar flujo de ramas, revisión y controles técnicos de main; comprobarlos en GitHub cuando se autorice red.
4. Incorporar a cada estudiante con checklist y prueba manual del cliente elegido.
5. Acordar requisitos PCB, datos, arquitectura de módulos, dependencias y criterios de aceptación.
6. Resolver disponibilidad de Python según versión acordada; no instalar por suposición.
7. Verificar documentación oficial y aceptación de capacidades nativas por asistente antes de configurar Skills/hooks.

## Comprobaciones que no deben confundirse

Un enlace existente no demuestra representación visual. Un procedimiento redactado no garantiza obediencia de IA. Un ejecutable en PATH no demuestra autenticación. Un relato histórico no prueba estado actual. Un merge con mensaje de PR prueba ese contenido en el historial, no las revisiones o políticas remotas.

Ver [[08_Manuales/01_HISTORIA_DEL_PROYECTO|Historia]], [[08_Manuales/08_INCORPORACION_DE_INTEGRANTES|Checklist]] y [[06_Pendientes/Indice|Pendientes del proyecto]].
