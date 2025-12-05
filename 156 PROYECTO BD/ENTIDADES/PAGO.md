---
tipo: Entidad
---
| Atributo           | Descripción                                  | Longitud | Tipo de dato |
| ------------------ | -------------------------------------------- | -------- | ------------ |
| ID_PAGO            | Clave Primaria (PK). Identificador único.    | 10,0     | NUMERIC      |
| NUMERO_PAGO        | Consecutivo del pago dentro de la póliza.    | 10,0     | NUMERIC      |
| ID_POLIZA          | Clave Foránea (FK) hacia poliza.POLIZA.      | 10,0     | NUMERIC      |
| FECHA_PAGO         | Fecha programada de vencimiento.             | -        | DATETIME     |
| FECHA_PAGO_REAL... | Fecha en que se efectuó el pago.             | -        | DATETIME     |
| MONTO              | Cantidad a pagar (Check > 0).                | 12,2     | NUMERIC      |
| ESTADO             | 'P' (Pagado) o 'N' (No pagado). Check.       | 1        | CHAR         |
| ID_METODO_PAGO     | Clave Foránea (FK) hacia poliza.METODO_PAGO. | 10,0     | NUMERIC      |
