---
pertenece a:
  - "[[Lg - Bases de Datos]]"
ancestro_directo: "[[8. INTRODUCCIÓN DE LA PROGRAMACIÓN EN BASE DE DATOS]]"
scope: Intermedio
---
>Desarrollada por Microsoft

- [[STORE PROCEDURES]]
- [[FUNCTIONS]]
- [[TRIGGERS]]
- [[VIEWS]]
- [[CURSORS]]


# `CAST()`

```
CAST(<dato> AS <TIPO DATO[(<tamaño>)]>)
```
ejemplo

```sql
CAST(MONTH(GETDATE()) AS VARCHAR(2))
```


## Funciones de Fecha

|**Función**|**Descripción**|**Sintaxis y Ejemplo**|**Uso Principal**|
|---|---|---|---|
|**`GETDATE()`**|Devuelve la fecha y hora actuales del sistema.|`SELECT GETDATE();`|Usado para obtener la fecha y hora actuales del sistema.|
|**`DATEADD()`**|Suma o resta un intervalo de tiempo a una fecha.|`SELECT DATEADD(MONTH, 1, '2024-01-01');` (Añade 1 mes)|Se usa para sumar o restar un intervalo (años, meses, días, etc.) a una fecha dada.|
|**`DATEDIFF()`**|Devuelve la diferencia entre dos fechas en unidades de tiempo específicas.|`SELECT DATEDIFF(YEAR, '2020-01-01', '2024-01-01');` (Devuelve 4)|Calcula la diferencia entre dos fechas en unidades de tiempo especificadas (como años, meses, días, etc.).|
|**`DATEPART()`**|Devuelve una parte específica de una fecha (como año, mes, día, hora, etc.).|`SELECT DATEPART(MONTH, '2024-03-05');` (Devuelve 3, el mes)|Se usa para extraer una parte específica de una fecha (día, mes, año, etc.).|
|**`COALESCE()`**|Devuelve el primer valor no nulo de una lista de expresiones.|`SELECT COALESCE(NULL, 'Valor predeterminado');`|Se usa para devolver el primer valor no nulo de una lista de expresiones. Muy útil cuando se manejan valores nulos.|
|**`ISNULL()`**|Reemplaza valores nulos por un valor especificado.|`SELECT ISNULL(NULL, 'Valor por defecto');`|Reemplaza un valor **nulo** por otro valor especificado.|
|**`CONVERT()`**|Convierte una expresión de un tipo de datos a otro tipo (como fechas).|`SELECT CONVERT(VARCHAR, GETDATE(), 120);` (Convierte la fecha a formato `YYYY-MM-DD HH:MI:SS`)|Se usa para convertir tipos de datos, por ejemplo, para convertir fechas a cadenas con un formato específico.|
|**`COALESCE()`**|Devuelve el primer valor no nulo de la lista de expresiones.|`SELECT COALESCE(@valor1, @valor2, @valor3);`|Similar a `ISNULL()`, pero permite varios valores.|
|**`MONTH()`**|Devuelve el mes de una fecha dada.|`SELECT MONTH('2024-05-01');` (Devuelve 5)|Extrae el mes de una fecha.|
|**`YEAR()`**|Devuelve el año de una fecha dada.|`SELECT YEAR('2024-05-01');` (Devuelve 2024)|Extrae el año de una fecha.|
|**`DAY()`**|Devuelve el día de una fecha dada.|`SELECT DAY('2024-05-01');` (Devuelve 1)|Extrae el día de una fecha.|
|**`MONTH()`**|Devuelve el mes de una fecha dada.|`SELECT MONTH('2024-05-01');` (Devuelve 5)|Extrae el mes de una fecha.|