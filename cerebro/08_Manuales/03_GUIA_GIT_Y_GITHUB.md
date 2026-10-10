# Guía de Git y GitHub

Git es un sistema de versiones local; GitHub es un servicio remoto. Puedes consultar historial y cambios sin internet. Compartir exige autenticación y autorización. Este capítulo enseña operaciones: no autoriza al asistente a ejecutarlas.

## Modelo mental: tres estados

El árbol de trabajo contiene tus archivos editables. El índice (staging) prepara la siguiente instantánea. Un commit guarda esa instantánea en el historial local. Una rama es un nombre que apunta a un commit, no una copia completa adicional del proyecto. HEAD normalmente identifica la rama activa.

Editar un archivo no crea un commit. Un commit local no llega automáticamente a GitHub. Publicar una rama que no contiene tus cambios sin commit no publica esos archivos: esta diferencia explica un posible caso de «rama sin el trabajo esperado».

## Lectura segura desde la raíz

```powershell
git branch --show-current       # Rama activa; aquí se requiere feature/sistema-skills
git status --short             # Cambios del árbol y del índice
git --no-pager diff             # Cambios versionados aún no preparados
git --no-pager diff --cached    # Cambios preparados para el próximo commit
git ls-files --others --exclude-standard  # Archivos nuevos no ignorados
git --no-pager log -5 --oneline # Historial local reciente
git diff --check                # Errores de espacios en cambios de este diff
```

En status, las dos columnas separan índice y árbol: ` M` es modificado sin preparar; `M ` preparado; `??` nuevo sin seguimiento. Un árbol con cambios requiere inspección, no limpieza automática. `git diff` no muestra contenido de archivos nuevos sin seguimiento: abrirlos aparte.

## Operaciones locales de escritura: solo con autorización

```powershell
# Ejemplos para otra tarea aprobada, con árbol y base revisados:
git switch -c feature/nombre-tarea
git add -- docs/colaboracion/ROUTER_CONTEXTO.md
git --no-pager diff --cached
git commit -m "docs: describir el cambio aprobado"
```

switch -c crea y selecciona una rama desde el commit actual; no usarlo aquí para salir de la rama obligatoria. add prepara rutas específicas, sin publicar. Revisar diff --cached evita incluir archivos ajenos o secretos. commit registra contenido preparado y metadatos de identidad; no configura autenticación.

Para identidad, consultar `git config --get user.name` y `git config --get user.email`. Configurar valores reales acordados o un correo de privacidad válido de la cuenta; no inventar correos. El nombre Git no demuestra autoría humana de una sesión de IA. La configuración local afecta un repositorio y la global sirve como valor por defecto en otros.

## Operaciones remotas: ejemplos no ejecutados

```powershell
# Sustituir URL por la dirección oficial del repositorio privado, sin tokens:
git clone 'URL_DEL_REPOSITORIO' 'C:\vision-pcb\Vision_Pcb'
# En una copia existente, tras revisión y autorización:
git fetch origin
# Actualizar una rama con upstream configurado y árbol limpio:
git pull --ff-only
# Publicar la rama actual aprobada y configurar upstream:
git push -u origin feature/sistema-skills
```

clone descarga historial y configura origin. fetch actualiza referencias de seguimiento remoto, sin integrar en la rama activa. pull incluye descarga e integración; --ff-only rechaza una divergencia que requeriría merge. push envía commits, no el contenido sin commit del árbol. Una referencia origin/main local puede estar desactualizada: no prueba el servidor actual.

PR es una propuesta en GitHub para comparar una rama con otra y revisarla. Se recomienda abrir PR hacia la base acordada, explicar problema/cambio/evidencia y solicitar revisión humana. El PR #1 está identificado por el mensaje del merge cac8cfd; no se verificaron sus checks por red.

## Merge y conflictos

Un merge integra historias. Si ambos lados modifican contenido incompatible, Git puede pedir resolución. Revisar `git status`, abrir archivos en conflicto, comprender ambas intenciones y comprobar el resultado. No elegir «ours» o «theirs» globalmente por comodidad. Tras una resolución autorizada se necesitan pruebas y revisión antes de registrar o integrar. No hacer merge ni modificar main en esta intervención.

Dos asistentes sobre el mismo árbol pueden sobrescribir archivos antes de que Git detecte un conflicto. Usar ramas y copias/worktrees separados con autorización, además de coordinación del alcance.

## Exclusiones y seguridad

`.gitignore` evita que archivos no rastreados aparezcan como candidatos normales, por ejemplo .env, .venv y configuración personal. No elimina secretos del historial ni deja de rastrear automáticamente un archivo que ya tuvo commit. `.env.example` y data/samples/.gitkeep tienen excepciones. Revisar con `git check-ignore --no-index -v -- ruta` permite saber qué regla aplicaría sin crear el archivo.

Evitar reset --hard, clean, push --force y reescritura de historia como soluciones de inicio. Pueden perder trabajo o afectar al equipo. Si se publicó un secreto, tratarlo con el administrador y revocar la credencial; borrarlo del último archivo no basta.

Sintaxis Git contrastada con la ayuda local de Git 2.53.0.windows.2. Las operaciones de escritura y red anteriores no se ejecutaron. Para publicación paso a paso: [[08_Manuales/08_INCORPORACION_DE_INTEGRANTES|Incorporación]]; para incidentes: [[08_Manuales/10_PROBLEMAS_Y_SOLUCIONES|Problemas]].
