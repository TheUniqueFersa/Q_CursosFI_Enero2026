---
pertenece a:
  - "[[Lg - Bases de Datos]]"
scope: General
---
# Funciones de Agregación
>💭 En otras funciones en sql[^1]: aceptan un dato como entrada, dan un dato como salida


>ℹ️ Entran n registros, sale 1 dato
>Más precisamente, entra un **grupo de datos**

> [!example] Ejemplos de funciones de agregación
> - `count`
> - `max`
> - `avg`
> - `sum`



| ID  |     | Aprobado/Reprobado | Calif |
| --- | --- | ------------------ | ----- |
| 1   | x   | A                  | 7     |
| 2   |     | R                  | 5     |
| 3   |     | A                  | 7     |
| 4   |     | R                  | 5     |
| 5   |     | R                  | 5     |
|     |     | D                  |       |
|     |     | D                  |       |
|     |     | D                  |       |
|     |     | N                  |       |

>ℹ️ Va a haber **un grupo** por **cada valor distinto** de la columna indicada $C_x$

| $C_x$         | $f_x$                 |
| ------------- | --------------------- |
| Columna extra | Función de agregación |
> [!example] Ejemplo de uso Incorrecto de una función de agregación
> Cuando se usa con un conjunto de valores que son siempre distintos (por ejemplo la PK)
> 

| est_id | calif | asignatura |
| ------ | ----- | ---------- |
| 1      | 5     | bd         |
| 2      | 5     | bd         |
| 3      | 10    | cc         |
| 4      | 8     | gr         |

```sql
select estudiante_id, count(*) from estudiante;
```
Esto sería incorrecto



```sql
select estudiante_id, count(*) from estudiante group by estudiante_id;
```

Promedio de calif de estudiantes

```sql
select avg(calificacion), est_id from historial group by est_id;
```

---
```sql
select avg(calificacion) from estudiante;
```
Toma solo un grupo de información, no hace falta poner `group by`

---

Ejemplos. Teniendo en cuenta la siguiente tabla:
![[Pasted image 20251110224521.png]]

Cuantas existencias existen en total en nuestro almacén
```sql
select sum(existencias) from libro
```

El promedio de precios de los libros en stock o agotado

```sql
select avg(precio), estatus from libro group by estatus;
```
Se añade otra columna, estatus, por lo que se debe indicar que se va a agrupar por estatus (con `group by`)

De la consulta anterior, si el promedio excede los $1000 excluirlo

*Primero se aplican los filtros, luego las funciones de agregación*
Por lo que si queremos filtrar por los resultados de función de agregación, usamos `having`, pues dicha palabra sabe que se debe ejecutar después de obtener el resultado de la función de agregación

El único lugar donde puede aparecer una función de agregación es:
- después del `select`
- después del `having` 

# having
>ℹ️ Sirve para filtrar el resultado de una función de agregación

>👀 Aunque `having` soporta condiciones normales que irían en `where`, mejor dichas condiciones se ponen con el where y se mantiene el uso de `having` solo para filtrar el resultado de una función de agregación



Cuando es un solo grupo, no necesito meter ni group by ni having
```sql
select * from profesor
where fecha_nac = (
	select max(fecha_nac)
	from profesor
);
```


# `avg`
>Calcula el promedio






[^1]: Como `to_date`
