# Registro de trabajo — ramas del grafo y navegación jerárquica

- Fecha: 2026-10-09.
- Hora y zona horaria: hora no registrada; America/Ciudad_Juarez.
- Integrante / autor humano: pendiente de confirmar.
- IA utilizada: Codex.
- Rama: feature/estructura-cerebro.
- Tarea: mostrar las notas hijas que quedaron ocultas en la vista de índices.
- Módulo: entorno de colaboración, bóveda cerebro/.

## Objetivo

El usuario indicó que la vista general quedó bien, pero faltaban las ramas de cada nodo. Ampliar la navegación a las notas existentes y mantener una representación clara de la jerarquía.

## Cambios realizados

- Preferencia local `cerebro/.obsidian/graph.json`: filtro `path:/^0[0-8]_.*[.]md$/` para incluir índices y notas hijas de las áreas existentes. Los nueve grupos de color se conservan. Fuerza centrípeta 0.3, distancia de enlace 220 y grosor de línea 0.3; encuadre ajustado en la interfaz. Se mantienen ocultos adjuntos, huérfanos y destinos fuera de la bóveda.
- Mapa adicional `cerebro/00_Inicio/Mapa_de_ramas.canvas`: navegación jerárquica mediante tarjetas enlazadas a notas reales. Representa Dashboard, áreas y notas hijas; las referencias cruzadas de la documentación se mantienen en sus archivos originales.
- Esta bitácora y su enlace en `cerebro/03_Bitacora/Indice.md` documentan la ampliación. El registro anterior conserva la evidencia de la vista de nueve índices.
- `cerebro/00_Inicio/Dashboard.md`: añadir acceso al mapa con un enlace relativo al lienzo.

## Comprobaciones ejecutadas

- Lectura de reglas compartidas, Contexto, Dashboard, índices y preferencias. Rama confirmada y estado Git inspeccionado; se conservaron los cambios previos y los archivos personales existentes.
- Auditoría de solo lectura: 13 capítulos de Manuales; seis registros previos y plantilla de Bitácora; plantilla de Decisiones. Las áreas sin notas hijas y las carpetas 09–12 no se rellenan con contenido ficticio.
- Control de aplicaciones en Obsidian 1.14.4: filtro ampliado y confirmado en pantalla; notas hijas visibles, colores conservados y referencias cruzadas más discretas.
- Comparación de preservación preparada con SHA-256 de los 79 archivos versionados o sin seguimiento presentes al inicio, antes de añadir este registro y el mapa.
- Validación automatizada del mapa: JSON correcto; 31 tarjetas y 30 conectores; 31 destinos distintos existentes; IDs únicos, jerarquía alcanzable desde Dashboard sin ciclos y ninguna tarjeta superpuesta. Las tarjetas coinciden exactamente con las 31 notas de las áreas seleccionadas por el filtro. Disposición compactada a 1680 × 1184 para mejorar la lectura.
- Comparación SHA-256 final de esos 79 archivos iniciales: 77 intactos; solo cambian Dashboard y el índice de bitácora. Las adiciones son únicamente el mapa y este registro; los archivos personales y las bitácoras previas se conservan.
- Revisión manual del mapa en Obsidian: encuadre completo con Shift + 1, modo de solo lectura de navegación, etiquetas legibles y colores conservados. Doble clic sobre Proyecto abre la nota Contexto; se volvió al mapa sin editar la nota.
- `scripts/Validar-Documentacion.ps1`: devuelve código 1 al procesar una nota vacía; su llamada a Regex.Replace recibe un valor nulo. La nota diaria vacía `cerebro/2026-10-09.md` ya existía al inicio y se preserva; no se modifica el validador como parte de este ajuste visual.
- Comprobación específica de los tres Markdown afectados: enlaces locales existentes, sin espacios finales, marcadores de conflicto ni patrones de secretos. `git diff --check`: código 0.

## Hechos y límites

El grafo general muestra todas las conexiones de las notas seleccionadas; incluye referencias útiles entre capítulos y registros. Su disposición depende de fuerzas. El lienzo representa el recorrido jerárquico con posiciones fijas y enlaces a los originales.

Los nodos del grafo representan archivos, no carpetas vacías. Las preferencias de `.obsidian/` son locales e ignoradas por Git. El mapa es un archivo del proyecto que podrá compartirse cuando se autorice publicarlo. No se ejecutaron git add, commit, push ni merge.

## Referencias

Sin Issue, PR o commit de esta intervención. [[00_Inicio/Dashboard|Entrada de la bóveda]].
