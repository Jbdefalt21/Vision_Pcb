# Guía de mantenimiento

Mantener significa conservar significado, compatibilidad comprobada e historia mientras cambian herramientas y requisitos. Este capítulo propone prácticas; no instala automatizaciones, modifica main ni configura GitHub.

## Fuentes y frecuencia

Actualizar cuando cambie una instrucción, estructura, dependencia, cliente o comportamiento; no hacerlo por rutina si no hay nueva evidencia. La autoridad común está en [Reglas](../../docs/REGLAS_COMPARTIDAS.md), la ejecución en [Catálogo](../../docs/colaboracion/CATALOGO_PROCEDIMIENTOS.md), el aprendizaje en manuales y la historia en bitácoras/Git.

Asignar responsable y alcance de una tarea de mantenimiento. Consultar rama, status y router antes de editar. Si hay cambios ajenos sobre índices o instrucciones, coordinar. Una recomendación en un manual no debe convertirse silenciosamente en decisión técnica.

## Cambiar reglas o procedimientos

1. Describir contradicción o necesidad con fuente concreta.
2. Proponer cambio en la fuente principal; evitar tres copias divergentes.
3. Actualizar referencias mínimas de entradas y manuales afectados sin eliminar historia.
4. Revisar simulaciones, autoría, permisos, rutas y obligaciones de evidencia.
5. Ejecutar validador documental, diff --check y prueba funcional pertinente.
6. Registrar resultados y límites; solicitar revisión. Publicación/integración son pasos separados autorizados.

Para mover una nota, inventariar enlaces entrantes, actualizar destinos y comprobar Obsidian. Git no garantiza por sí solo que los enlaces se mantengan. No eliminar una carpeta anidada hasta conocer contenido, preferencias y autorización.

## Dependencias y Python

Actualmente no hay dependencias acordadas. Cuando existan, registrar versión de Python, manifiesto elegido y forma reproducible de instalación. Antes de actualizar, revisar cambios oficiales en una fase con red permitida, evaluar compatibilidad y ejecutar pruebas de comportamiento. No afirmar que una actualización es segura por haber instalado sin error.

No versionar .venv, cachés, datos grandes ni credenciales. .gitignore es una ayuda, no un detector de secretos ni una limpieza del historial. Si un secreto se publica, actuar sobre la credencial y coordinar tratamiento del historial; no improvisar un force push.

## Clientes IA y adaptadores

Registrar proveedor, versión conocida, modalidad y permisos. Consultar documentación oficial vigente antes de crear adaptación nativa. No asumir que AGENTS.md, GEMINI.md y CLAUDE.md tienen igual precedencia, hooks o carga. Reutilizar procedimiento común mediante envolturas mínimas; probar cada cliente con tarea sin escritura y luego edición autorizada.

Si cambia la versión, repetir solo las verificaciones que ese cambio puede invalidar. Mantener fallback manual si la compatibilidad nativa falla. Una prueba en Codex no valida Gemini CLI o Claude Code.

## Validación local reutilizable

```powershell
& .\scripts\Validar-Documentacion.ps1
git diff --check
git --no-pager diff
git ls-files --others --exclude-standard
```

El script es de lectura: revisa destinos locales, índices, espacios/marcadores en archivos afectados, patrones de secretos y exclusiones. No comprueba anchors, páginas externas, render de Mermaid, permisos remotos ni calidad semántica completa. Si está bloqueado por política PowerShell, informar y usar comprobaciones manuales autorizadas; no cambiar políticas globales para evitar la restricción.

Un resultado sin incidencias necesita revisión humana de coherencia y alcance. Revisar archivos nuevos aparte porque git diff normal no muestra su contenido. Conservar fallos y resultados finales por separado; para una omisión histórica añadir corrección fechada y con fuente, sin inventar hora.

## Recuperación futura

Mantener en manuales los pasos para instalar, acceder, clonar, abrir bóveda y probar clientes. Guardar versiones comprobadas y manifiestos cuando existan, no instaladores con secretos. Los tres integrantes deben poder explicar cómo recuperar el último estado publicado y distinguirlo de cambios locales pendientes.

El checklist de [[08_Manuales/08_INCORPORACION_DE_INTEGRANTES|Incorporación]] sirve también tras reemplazar una computadora. Ver [[08_Manuales/12_ESTADO_ACTUAL_Y_PENDIENTES|Estado]] para lo que aún falta y [[08_Manuales/10_PROBLEMAS_Y_SOLUCIONES|Problemas]] para diagnósticos.
