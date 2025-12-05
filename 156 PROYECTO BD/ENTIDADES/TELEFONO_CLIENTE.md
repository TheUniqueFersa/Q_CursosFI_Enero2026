---
tipo: Entidad
---
| Atributo        | Descripción                               | Longitud | Tipo de dato |
| --------------- | ----------------------------------------- | -------- | ------------ |
| ID_TELEFONO     | Clave Primaria (PK). Identificador único. | 10,0     | NUMERIC      |
| ID_CLIENTE      | Clave Foránea (FK) hacia cliente.CLIENTE. | 10,0     | NUMERIC      |
| NUMERO_TELEFONO | Número telefónico (Check > 0).            | 10,0     | NUMERIC      |
| TIPO            | Tipo ('C'elular, 'H'ogar). Check.         | 1        | CHAR         |

