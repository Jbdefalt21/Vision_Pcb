# Problemas y soluciones

Este catálogo distingue incidentes documentados, observaciones actuales y casos reportados por el usuario sin evidencia histórica suficiente. Los diagnósticos son propuestas hasta ejecutarlos. No atribuir causas o soluciones como realizadas por el solo hecho de explicarlas.

## 1. Identidad Git no configurada

**Estado:** reportado por el usuario; no se conserva aquí la salida del fallo original. En la auditoría actual user.name y user.email tienen valores configurados globalmente, y deed387 tiene autor Git Uriel. Esto no demuestra cuándo se corrigió ni quién pidió una sesión de IA.

**Causa posible:** Git no puede obtener identidad para un commit. **Diagnóstico local:** `git config --show-origin --get user.name` y `git config --show-origin --get user.email` muestran valor y origen. **Solución propuesta:** configurar valores confirmados en el ámbito apropiado; ver Instalación. No hacer un commit solo para probar identidad durante una tarea que lo prohíbe.

## 2. Correo ficticio

**Estado:** reportado; no se encontró registro de un correo ficticio ni evidencia de su sustitución. Un texto que parece correo no demuestra propiedad ni validación de GitHub.

**Diagnóstico propuesto:** comparar configuración actual y metadatos del commit, sin publicar correos personales innecesariamente. **Solución:** usar correo real confirmado o correo de privacidad válido de la cuenta. No reescribir historia sin acuerdo; una corrección futura puede documentar el problema sin falsificar autoría. Identidad Git y credencial de acceso a GitHub son diferentes.

## 3. Advertencia CRLF/LF

**Estado:** documentada en [[03_Bitacora/Ajustes_previos_al_commit|Ajustes previos]]. Esa nota indica advertencia de conversión del README y creación de atributos; no renormalización de archivos existentes.

**Fundamento:** Windows suele usar CRLF y otras herramientas LF. Git puede normalizar texto según atributos. Una advertencia de conversión no implica pérdida de contenido por sí sola; revisar diff y atributos.

```powershell
git check-attr text eol -- README.md AGENTS.md scripts/ejemplo.cmd
git diff --check
```

La auditoría confirmó LF para README/AGENTS y CRLF para el nombre de ejemplo CMD, sin crear ese archivo. No ejecutar una renormalización masiva para silenciar advertencias: puede producir cambios innecesarios y conflictos.

## 4. Paginador less

**Estado:** caso reportado; no se reprodujo ni se verificó qué paginador está configurado. Git puede mostrar salidas largas en un paginador, según terminal y configuración.

**Si realmente es less:** habitualmente q sale; espacio avanza. **Alternativa local verificada en esta auditoría:** `git --no-pager log -5 --oneline` o `git --no-pager diff`. Evitar modificar configuración global de pager para todos los proyectos sin necesidad.

## 5. Bóveda equivocada o duplicada

**Estado histórico:** la bitácora describe cerebro/Vision_pcb/ con notas predeterminadas y configuración personal. **Estado actual:** Test-Path de esa carpeta devolvió False. No hay evidencia aquí de la acción que explica su ausencia.

**Diagnóstico manual pendiente:** comprobar ruta de la bóveda abierta y presencia de Dashboard e índices. **Solución propuesta:** abrir cerebro/ como carpeta existente. No borrar ni mover preferencias o notas sin revisar contenido y autorización. Si hay dos bóvedas, inventariar y acordar conservación antes de consolidar.

## 6. Rama publicada sin el commit esperado

**Estado:** reportado; historial/ref locales no demuestran un push específico ni el estado actual de GitHub. No se encontró una secuencia verificable del incidente.

**Causas posibles:** cambios sin commit, commit en otra rama, push a otro remoto o confusión con referencias antiguas. **Diagnóstico local recomendado:** rama, status, log, `git branch -vv` y `git show` del commit esperado. Comparación remota requiere fetch/consulta autorizada.

**Solución propuesta:** verificar contenido del commit y rama antes de publicar. No hacer un commit vacío ni usar push --force como primera respuesta. Un PR no añade archivos sin commit por sí mismo.

## 7. Python no utilizable mediante el lanzador

**Observado ahora:** py.exe fue localizado; `py --version` respondió «Can't find a default Python» con salida 1. No se ha demostrado ausencia de cualquier instalación posible, solo que el lanzador no dispone de un predeterminado utilizable en esta sesión.

**Siguiente acción:** acordar versión, revisar instalación y PATH en una fase permitida; verificar intérprete antes de venv. No se instaló Python como solución durante la auditoría.

## 8. Contexto difícil de descubrir o desactualizado

**Observado en archivos:** el README todavía remitía a la rama inicial como instrucción vigente; se actualizó sin borrar la referencia histórica. Índices de bitácora y reglas de simulación fueron corregidos en intervenciones anteriores.

**Prevención:** validar enlaces e índices, registrar fecha de evidencia y diferenciar estado actual de relato histórico. La autoría humana sigue pendiente hasta confirmación explícita. Nombres únicos no excluyen escritores simultáneos.

Para registrar un caso real, incluir pasos, esperado/observado, entorno conocido, evidencia y estado; usar el procedimiento de pruebas y bitácora. Relacionado: [[08_Manuales/03_GUIA_GIT_Y_GITHUB|Git]], [[08_Manuales/04_GUIA_OBSIDIAN|Bóveda]] y [[08_Manuales/07_INSTALACION_DESDE_CERO|Instalación]].
