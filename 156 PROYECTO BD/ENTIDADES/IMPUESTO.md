---
tipo: Entidad
---
| Atributo    | Descripción                                      | Longitud | Tipo de dato |
| ----------- | ------------------------------------------------ | -------- | ------------ |
| ID_IMPUESTO | Clave Primaria (PK). Identificador del impuesto. | 10,0     | NUMERIC      |
| CANTIDAD    | Valor porcentual o fijo (Check > 0).             | 12,2     | NUMERIC      |
| TIPO_SEGURO | Tipo al que aplica ('A', 'V', 'R'). Check.       | 1        | CHAR         |
| ACTIVO      | Indicador de si el impuesto está vigente (1/0).  | -        | BIT          |
