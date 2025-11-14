---
pertenece a:
  - "[[Lg - Bases de Datos]]"
scope: Intermedio
ancestro_directo: "[[Lg - Bases de Datos]]"
tipo_nota: Legend
---
# ***Consultas***
Internamente, cuando se efectua:

```sql
select c1,c2, sysdate
from T1
```

Por cada registro que se encuentre en la tabla T1, buscará las columnas y pondrá sus datos en la matriz de resultado que se retornará.
En el caso de funciones, como lo son `sysdate` o `upper`, se evalúa por cada registro dicha función  
