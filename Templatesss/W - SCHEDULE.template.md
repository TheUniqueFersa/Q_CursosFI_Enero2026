---
pertenece a: 
tipo: SCHEDULE Semanal
---

--- start-multi-column: ID_x05j
```column-settings
Number of Columns: 7
Largest Column: standard
```
# LUNES
```dataview
TABLE 
WHERE file.frontmatter.próxima_fecha = "<% tp.date.weekday("YYYY-MM-DD", 0) %>"
```
--- column-break ---
# MARTES
```dataview
TABLE
WHERE file.frontmatter.próxima_fecha = "<% tp.date.weekday("YYYY-MM-DD", 1) %>"
```
--- column-break ---
# MIÉRCOLES
```dataview
TABLE 
WHERE file.frontmatter.próxima_fecha = "<% tp.date.weekday("YYYY-MM-DD", 2) %>"
```
--- column-break ---
# JUEVES
```dataview
TABLE 
WHERE file.frontmatter.próxima_fecha = "<% tp.date.weekday("YYYY-MM-DD", 3) %>"
```
--- column-break ---
# VIERNES
```dataview
TABLE 
WHERE file.frontmatter.próxima_fecha = "<% tp.date.weekday("YYYY-MM-DD", 4) %>"
```
--- column-break ---
# SÁBADO
```dataview
TABLE 
WHERE file.frontmatter.próxima_fecha = "<% tp.date.weekday("YYYY-MM-DD", 5) %>"
```
--- column-break ---
# DOMINGO
```dataview
TABLE 
WHERE file.frontmatter.próxima_fecha = "<% tp.date.weekday("YYYY-MM-DD", 6) %>"
```

--- end-multi-column