# Incorporación de los tres integrantes

El administrador y los otros dos estudiantes necesitan comprobar sus propias copias. Los nombres y responsabilidades todavía están pendientes en [[01_Proyecto/Contexto|Contexto]]. No se asignan identidades a partir de usuarios Git. Este checklist es una propuesta operativa, no evidencia de incorporación completada.

## Preparación del administrador

Revisar manuales y procedimientos, confirmar autores humanos cuando corresponda y acordar accesos, alcance y revisión. Comprobar que el repositorio seguirá siendo privado según la política del equipo; no se verificó su visibilidad por red. Invitar a los dos integrantes con sus cuentas y permisos adecuados, sin compartir credenciales.

Los cambios actuales no tienen commit. Antes de publicar, revisar tanto diff versionado como archivos nuevos, validar documentación y decidir qué contenido aprobar. Las operaciones siguientes son pasos futuros que requieren autorización; no se ejecutaron:

1. Confirmar feature/sistema-skills y estado; revisar `git --no-pager diff` y `git ls-files --others --exclude-standard`.
2. Ejecutar el validador documental y revisar secretos/contexto personal.
3. Preparar únicamente rutas revisadas con git add; revisar `git diff --cached`.
4. Crear commit con mensaje descriptivo e identidad confirmada. Comprobarlo con git log y git show.
5. Con acceso remoto autorizado, publicar feature/sistema-skills y abrir PR hacia la base acordada.
6. Solicitar revisión de los compañeros; comprobar diff, evidencia y destino del PR. Integrar únicamente después de autorización y checks pertinentes.
7. Comunicar rama/commit aprobados para incorporación. No decir que clone incluye archivos aún sin publicar.

No usar un `git add .` indiscriminado sobre un árbol que pueda contener trabajo ajeno. La protección técnica de main, checks y permisos GitHub queda por configurar/verificar.

## Preparación individual

Seguir [[08_Manuales/07_INSTALACION_DESDE_CERO|Instalación]]. Registrar cuenta propia, versiones conocidas, ruta local, rama y modalidad IA; no registrar tokens. Leer Estado → Arquitectura → Git → Obsidian → Asistentes. Confirmar con el administrador un objetivo pequeño y archivos a tocar.

Usar una rama por tarea desde la base aprobada. No cambiar de rama con trabajo pendiente sin comprender cómo conservarlo. Reservar responsable y alcance en Issue si existe. Mantener notas de bitácora independientes y coordinar índices/Dashboard. Si dos personas usan el mismo equipo, preferir espacios de trabajo separados autorizados.

## Checklist de puesta en marcha

Para cada casilla anotar integrante, fecha real, comando/paso, resultado y limitación. No marcarla porque el manual existe.

- [ ] Cuenta y acceso al repositorio confirmados por el integrante.
- [ ] Git responde con versión; editor abre el clon correcto.
- [ ] Copia contiene el commit publicado que incluye estos manuales.
- [ ] Rama y estado conocidos; no hay cambios ajenos confundidos con propios.
- [ ] Identidad Git confirmada; autor humano de sesión e IA separados.
- [ ] Bóveda cerebro/ abierta; Dashboard e índice general accesibles.
- [ ] Reglas, router y catálogo leídos y comprendidos.
- [ ] Cliente IA elegido puede acceder al contexto necesario, con límites declarados.
- [ ] Simulación de cámaras sin escritura completada y estado preservado.
- [ ] Con permiso separado, edición documental pequeña, comprobaciones y bitácora indexada revisadas.
- [ ] Flujo de PR practicado después de autorizar commit/publicación.
- [ ] Python y dependencias acordados/verificados cuando comience código; no bloquean aprender documentación.

## Criterio de incorporación

El integrante puede explicar local frente a remoto, preservar cambios, encontrar contexto, distinguir hechos de propuestas y entregar una revisión reproducible. Si no tiene acceso remoto o cliente IA funcional, registrar parcial y siguiente acción; no inventar porcentaje.

Una cuenta compartida dificulta atribución y revocación. Una IA con permisos amplios puede ejecutar operaciones fuera del alcance si no se controla; comenzar con lectura. Relacionado: [[08_Manuales/09_FLUJO_DE_TRABAJO_DIARIO|Trabajo diario]] y [[08_Manuales/12_ESTADO_ACTUAL_Y_PENDIENTES|Pendientes]].
