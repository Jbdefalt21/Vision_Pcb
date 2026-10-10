# Glosario

Definiciones de referencia para leer los manuales. Los ejemplos describen conceptos; no afirman que herramientas pendientes estén instaladas. Consultar [[08_Manuales/00_INDICE_GENERAL|Índice]] para capítulos completos.

| Término | Definición y ejemplo |
| --- | --- |
| PCB | Placa de circuito impreso; objeto que el futuro sistema inspeccionará |
| Visión artificial | Procesamiento de imágenes para obtener información; aún no implementado aquí |
| Repositorio | Archivos y metadatos de versiones; Vision_Pcb es el proyecto local |
| Git | Herramienta de control de versiones que funciona localmente |
| GitHub | Servicio remoto para repositorios y colaboración; no es Git instalado |
| Árbol de trabajo | Archivos que puedes editar en la copia local |
| Índice Git / staging | Contenido preparado para el próximo commit; distinto del índice de notas |
| Commit | Instantánea con padres, mensaje y metadatos; deed387 registra preparación inicial |
| Hash | Identificador derivado del contenido; los hashes cortos Git identifican commits y SHA256 puede comprobar archivos |
| Rama | Nombre que apunta a un commit; feature/sistema-skills es la rama actual autorizada |
| HEAD | Referencia al estado seleccionado, normalmente la rama activa |
| main | Rama principal por convención; su protección técnica debe verificarse |
| Remoto | Nombre y configuración de otra copia; origin está configurado localmente |
| Referencia remota local | Información guardada de una rama remota; origin/main puede estar desactualizada |
| Upstream | Rama de seguimiento utilizada por operaciones como pull; no equivale a publicación de cambios pendientes |
| Clone | Crear una copia local desde otro repositorio; privado requiere acceso |
| Fetch | Obtener objetos y actualizar referencias remotas locales sin integrar automáticamente en la rama |
| Pull | Descarga e integración; --ff-only evita crear un merge ante divergencia |
| Push | Enviar commits y actualizar referencias del remoto; no envía ediciones sin commit |
| Merge | Integrar historias; puede requerir resolver conflictos |
| Fast-forward | Avanzar un puntero de rama porque la historia destino ya contiene la anterior |
| Conflicto | Cambio incompatible que necesita decidir cómo conservar ambas intenciones |
| Diff | Comparación de contenido; archivos no rastreados necesitan revisión adicional |
| Pull Request / PR | Propuesta de revisión e integración en GitHub; no sustituye el commit |
| Issue | Unidad de seguimiento de un problema o tarea con alcance y responsable |
| .gitignore | Patrones para archivos no rastreados que no se quieren incorporar normalmente |
| .gitattributes | Reglas Git por archivo, como normalización de finales de línea |
| LF / CRLF | Formas de finalizar líneas de texto; diferencias no implican automáticamente error lógico |
| PATH | Lista donde la terminal busca ejecutables; no encontrar un comando no prueba ausencia de aplicación |
| CLI | Interfaz de línea de comandos; Gemini CLI es un asistente previsto de esta modalidad |
| PowerShell | Shell de Windows usada para comandos y el validador documental |
| Paginador | Programa que muestra texto largo por páginas; puede evitarse con --no-pager en Git |
| Autenticación | Demostrar acceso a una cuenta/servicio; distinto de user.name/user.email de commits |
| Autorización | Permiso para una acción concreta, por ejemplo editar sin permiso de publicar |
| Token / credencial | Secreto de acceso; no debe aparecer en notas ni historial |
| SSH / HTTPS | Mecanismos de conexión; elegir según política y configuración verificada |
| VS Code | Editor para archivos y herramientas del proyecto; preferencias locales se ignoran |
| Bóveda | Carpeta que Obsidian abre como notas; aquí cerebro/ |
| Markdown | Texto con convenciones de encabezados, listas, enlaces y bloques de código |
| Enlace interno Obsidian | Referencia a una nota de la bóveda, como Contexto con etiqueta visible |
| Dashboard | Nota de navegación y resumen; no sustituye bitácoras detalladas |
| Mermaid | Lenguaje de diagramas incluido como texto; representación visual requiere cliente compatible |
| Router de contexto | Procedimiento para seleccionar fuentes pertinentes antes de actuar |
| Procedimiento compartido | Markdown manual reutilizable, enlazado desde las entradas de cada asistente |
| Skill nativa | Paquete reconocido por un cliente específico, con formato e invocación propios |
| Adaptador | Entrada que conecta un cliente con el procedimiento común; aquí manual |
| Agente | Asistente con objetivo y herramientas dentro de permisos; no reemplaza revisión humana |
| Contexto persistente | Información guardada en archivos que sobrevive a un chat |
| Bitácora | Registro de sesión con autor/IA, cambios, evidencia y pendientes |
| Arquitectura | Relaciones y contratos del sistema; arquitectura colaborativa no equivale a arquitectura PCB |
| Criterio de aceptación | Condición observable para declarar un alcance cumplido |
| Regresión | Pérdida de un comportamiento que antes funcionaba; requiere base verificable |
| Hipótesis | Explicación candidata que aún necesita comprobación |
| Evidencia | Archivo, salida o prueba que respalda una afirmación, con alcance y fecha |
| Entorno virtual | Directorio Python aislado para dependencias; .venv no está creado por esta intervención |
| Dependencia | Paquete o herramienta necesaria; versiones del detector siguen sin acordar |
| Hook | Acción automática asociada a eventos; no se configuraron hooks nativos aquí |
| Worktree | Otro árbol de trabajo ligado a un repositorio Git; crear requiere autorización |
| Concurrencia | Trabajo simultáneo; nombres únicos reducen colisiones, no bloquean escritores |

No memorizar todo antes de empezar: volver a este glosario cuando aparezca un término. Relacionado: [[08_Manuales/02_ARQUITECTURA_DEL_ENTORNO|Arquitectura]] y [[08_Manuales/03_GUIA_GIT_Y_GITHUB|Git]].
