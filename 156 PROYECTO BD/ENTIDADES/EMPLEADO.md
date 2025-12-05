---
tipo: Entidad
---
| Atributo           | Descripción                                   | Longitud | Tipo de dato |
| ------------------ | --------------------------------------------- | -------- | ------------ |
| ID_EMPLEADO        | Clave Primaria (PK). Identificador interno.   | 10,0     | NUMERIC      |
| NUM_EMPLEADO       | Número de empleado único (Unique).            | 10,0     | NUMERIC      |
| NOMBRE_EMPLEADO    | Nombre(s) del empleado.                       | 80       | VARCHAR      |
| AP_PATERNO         | Apellido paterno.                             | 50       | VARCHAR      |
| AP_MATERNO         | Apellido materno.                             | 50       | VARCHAR      |
| FECHA_CONTRATACION | Fecha de ingreso a la empresa.                | -        | DATE         |
| TIPO_EMPLEADO      | 'C' (Corredor) o 'A' (Ajustador). Check.      | 1        | CHAR         |
| ROL                | Descripción del puesto (Gerente, Jefe, etc.). | 40       | VARCHAR      |
