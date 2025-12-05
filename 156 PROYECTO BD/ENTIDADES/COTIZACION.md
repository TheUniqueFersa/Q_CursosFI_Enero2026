---
tipo: Entidad
---
| Atributo          | Descripción                                    | Longitud | Tipo de dato |
| ----------------- | ---------------------------------------------- | -------- | ------------ |
| ID_COTIZACION     | Clave Primaria (PK). Identificador interno.    | 10,0     | NUMERIC      |
| NUMERO_COTIZACION | Folio único de la cotización (Unique).         | 11,0     | NUMERIC      |
| FECHA_COTIZACION  | Fecha de creación del registro.                | -        | DATE         |
| MONTO_ESTIMADO... | Monto estimado de la prima total.              | 12,2     | NUMERIC      |
| ESTADO            | Estado ('P'endiente, 'A'ceptada, 'R'echazada). | 1        | CHAR         |
| FECHA_VENCIMIENTO | Fecha límite de validez de la oferta.          | -        | DATE         |
| RECORDATORIO      | Fecha para enviar recordatorio (Opcional).     | -        | DATE         |
| ID_CLIENTE        | Clave Foránea (FK) hacia cliente.CLIENTE.      | 10,0     | NUMERIC      |
