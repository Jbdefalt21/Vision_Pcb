# Flujo de trabajo diario

Versión explicativa del [Flujo compartido](../../docs/colaboracion/FLUJO_TRABAJO.md). La norma central sigue en [Reglas](../../docs/REGLAS_COMPARTIDAS.md). Trabajar en sesiones pequeñas facilita revisión, conservación de contexto y resolución de conflictos.

## Antes de empezar

Definir objetivo, responsable conocido, archivos previstos, criterios y restricciones. Abrir la raíz correcta y comprobar:

```powershell
git branch --show-current
git status --short
git --no-pager diff
git ls-files --others --exclude-standard
```

La primera comprobación evita trabajar en main o una rama equivocada. Las siguientes identifican trabajo previo y archivos nuevos. Si la rama no coincide con la tarea, detener ediciones y comunicarlo; no cambiarla automáticamente. Con cambios ajenos, coordinar su alcance en lugar de descartarlos.

Actualizar desde remoto solo si está autorizado y el estado lo permite; no ejecutar pull por costumbre en un árbol con trabajo no revisado. origin/main es una referencia local potencialmente antigua. Leer Contexto, Dashboard, reglas y router, después las notas seleccionadas.

## Durante la sesión

Para código autorizado, aplicar desarrollo: arquitectura, contratos y criterios primero. Para diagnóstico, registrar esperado/observado y separar hipótesis de causa. Para planificación, usar gestión y evidencias, sin porcentajes. No instalar herramientas para «poder continuar» si el permiso no lo incluye.

Al usar IA, enviar tarea y límites explícitos. Ejemplo:

> En feature/sistema-skills, consulta el router y los documentos relacionados. Esta tarea permite solo planificación. No modifiques archivos, no programes cámaras ni crees registros persistentes. Devuelve ausencias y siguientes pasos.

Si el alcance permite escritura, elegir archivos específicos, hacer cambios pequeños y conservar funcionalidad. Si aparece una nueva decisión técnica, presentarla como propuesta hasta aprobación; no camuflarla como requisito existente.

## Después de modificar

Ejecutar comprobaciones pertinentes. Para documentación se dispone de:

```powershell
& .\scripts\Validar-Documentacion.ps1  # Comprobación local, sin red
git diff --check                     # Complemento para diff versionado
git --no-pager diff
git status --short
```

Si una política local impide ejecutar el script, comunicar el límite; no cambiar la política global automáticamente. La revisión documental no verifica cámaras ni representación visual de Obsidian. Registrar errores, repetir únicamente después de una corrección real y conservar la evidencia inicial.

Crear bitácora según plantilla con autor humano e IA separados. Si el autor no se conoce, dejar pendiente. Enlazarla en índice cuando esté autorizado y coordinado. Una simulación con escritura prohibida entrega ejemplo en conversación, no nota persistente.

## Revisión y publicación separadas

Presentar qué cambió, por qué, archivos, comprobaciones y pendientes. Revisión del usuario no equivale automáticamente a permiso de commit/push. Si se autorizan esas acciones, preparar rutas revisadas, comprobar staging y registrar/publicar el commit. Abrir PR y solicitar revisión antes de integrar conforme a la política acordada.

Al cerrar, dejar siguiente acción clara para otro integrante o asistente. No reescribir notas históricas para mostrar el estado nuevo: añadir corrección o nueva sesión. No atribuir acciones pasadas a un autor por coincidencia de user.name.

Relacionado: [[08_Manuales/03_GUIA_GIT_Y_GITHUB|Git]], [[08_Manuales/06_GUIA_SKILLS_Y_AGENTES|Procedimientos]] y [[08_Manuales/13_GUIA_DE_MANTENIMIENTO|Mantenimiento]].
