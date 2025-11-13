---
pertenece a:
  - "[[Lg - Bases de Datos]]"
scope: Intermedio
ancestro_directo: "[[Lg - Bases de Datos]]"
tipo_nota: Legend
---
# ***Subconsultas***
Recordando la estructura convencional de un select

```sql
select c1, c2, 1+1, (select ...) 
from (select ...) T1
join (select ...) T2 on ...
join T3 on ...
join (select ...)
where x = (select ...)
and y in (select ...)
group by c1, ...
having x = (select ...)
```
Donde `(select ...)` es una subconsulta
>👀 Siempre van entre paréntesis

# Posibles valores que regresa una **consulta**
❔¿Qué es lo mínimo que puede regresar una consulta?
>0 renglones, 0 columnas, lo que implica un conjunto vacío.
>Para la externa se interpreta como `null`

Primero ejecuta las subconsultas, luego se evalúa la original

>1 renglón, 1 columna; osea **un dato**

|     |
| --- |
Una sentencia del tipo

```sql
...
where = (select ...)
...
```
espera justamente 1 celda

>1 *columna*, múltiples *registros*

|     |
| --- |
|     |
|     |
|     |
|     |
Una sentencia del tipo
```sql
...
where in (select ...)
...
```
espera justamente 1 columna (conjunto de datos)


>1 *registro*, múltiples *columnas*

|     |     |     |     |     |
| --- | --- | --- | --- | --- |


>n renglones, m columnas

|     |     |     |     |
| --- | --- | --- | --- |
|     |     |     |     |
|     |     |     |     |
|     |     |     |     |

---

# Reducción de Subconsulta -> Join
Si la consulta me cambia el nivel de agrupamiento, entonces no se puede reducir de subconsulta a join