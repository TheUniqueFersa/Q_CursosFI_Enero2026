---
pertenece a:
  - "[[Lg - Bases de Datos]]"
scope: Específico
ancestro_directo: "[[Funciones de Agregación]]"
---

# `count(x)`
Donde $x$ es el nombre de una columna o *

```sql
select resultado, count(*) from historial

```
Por **cada grupo**, hará un `count`

>👀 Sirve para distinguir registros nulos de no nulos, porque count(columna) contará registros no nulos

Poner

```sql
select count(x) from tabla;
```
Donde x es una columna NOT NULL, es mala práctica. -> NO RECOMENDADO

Si lo que se quiere es contar registros, se usa:
```sql
select count(*) from tabla
```

