# Historia del proyecto

Reconstrucción al 2026-10-09 basada en historia Git local y [[03_Bitacora/Indice|bitácoras]]. No se consultó GitHub por red. Los autores de commits son metadatos Git, no una comprobación de identidad de quienes solicitaron las sesiones de IA.

## Cronología verificable

| Fecha en la fuente | Evidencia | Qué puede afirmarse |
| --- | --- | --- |
| 2026-10-08, 21:43:41 -06:00 | `29aaf69`, Initial commit; autor Git Mazapan215 | Existe el commit inicial en el historial local |
| 2026-10-08 | [[03_Bitacora/Preparacion_inicial|Preparación inicial]] | La nota relata creación de estructura, reglas, entradas y plantillas; no es prueba de funciones PCB |
| 2026-10-08 | [[03_Bitacora/Ajustes_previos_al_commit|Ajustes previos]] | Relata exclusiones, atributos de texto y hallazgo de bóveda anidada; conserva su estado histórico |
| 2026-10-08, 23:42:39 -06:00 | `deed387`, chore: configurar entorno colaborativo inicial; autor Git Uriel | Commit de 25 archivos, 365 adiciones y una eliminación respecto a su padre, según `git show --stat` |
| 2026-10-09, 11:09:07 -06:00 | `cac8cfd`, merge; autor Git Mazapan215 | El mensaje identifica Merge pull request #1 from Jbdefalt21/setup/entorno-colaborativo |
| 2026-10-09 | [[03_Bitacora/20261009_111639_autor-pendiente_sistema-skills_f7c29a|Router y bitácora]] | Procedimientos iniciales presentes localmente; la nota preserva resultados intermedios y una corrección final identificada |
| 2026-10-09 | [[03_Bitacora/20261009_autor-pendiente_correcciones-documentales_9e82b4|Correcciones]] | Precisiones de autoría, simulación, rutas e índices presentes localmente |

En el inicio de esta auditoría, `feature/sistema-skills` apuntaba a `cac8cfd`. Los procedimientos y correcciones posteriores no tenían commit. Las referencias locales origin/main y origin/setup/entorno-colaborativo estaban en cac8cfd y deed387, respectivamente; eso no verifica el estado actual del servidor.

## Decisiones e intención

El equipo ha solicitado documentación compartida con poca duplicación: las tres entradas remiten a reglas centrales, router y procedimientos. Su existencia se verifica en archivos. La intención de usar los tres asistentes no demuestra que todos estén instalados o probados.

El índice de decisiones técnicas indica ausencia de acuerdos aprobados sobre inspección PCB. No se reconstruye aquí una arquitectura de adquisición o procesamiento inexistente. La selección de cámaras fue una tarea simulada de planificación en la conversación; no hay implementación de esa función en src/.

## Dificultades y soluciones registradas

La bitácora de ajustes relata una advertencia de normalización CRLF/LF y una bóveda anidada. Actualmente `.gitattributes` define LF para Markdown y CRLF para BAT/CMD; `Test-Path cerebro/Vision_pcb` dio False en esta auditoría. No hay evidencia aquí de cuándo o quién retiró aquella carpeta: no atribuir su ausencia a una acción inventada.

Las correcciones documentales añadieron excepciones para simulaciones, separación de autor/IA, descubrimiento mediante índices y trazabilidad de evidencia. El autor humano de esas sesiones sigue pendiente; un nombre Git configurado no basta para completarlo.

El usuario reporta otros incidentes (identidad, correo ficticio, less y rama publicada sin commit esperado). Su ejecución pasada no queda demostrada por estos archivos. Se documentan como casos por confirmar en [[08_Manuales/10_PROBLEMAS_Y_SOLUCIONES|Problemas]], con diagnósticos recomendados.

## Cómo ampliar esta historia

Desde la raíz, comandos de lectura:

```powershell
git --no-pager log --all --date=iso-strict --format='%h | %ad | %an | %s'
git --no-pager show --stat deed387
git --no-pager show --format=fuller --no-patch cac8cfd
```

El primero muestra cronología y metadatos; el segundo alcance de un commit; el tercero padres y mensaje del merge. No prueban políticas de revisión, checks o conversaciones del PR. Consultar esos detalles exige acceso remoto autorizado. Mantener entradas históricas y añadir correcciones con fuente, sin sustituirlas por el estado actual.

Relacionado: [[08_Manuales/12_ESTADO_ACTUAL_Y_PENDIENTES|Estado]] y [[08_Manuales/13_GUIA_DE_MANTENIMIENTO|Mantenimiento]].
