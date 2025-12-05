---
tipo: Entidad
---
| Atributo          | Descripción                                      | Longitud | Tipo de dato |
| ----------------- | ------------------------------------------------ | -------- | ------------ |
| ID_OFERTA         | Clave Primaria (PK). Identificador de la oferta. | 10,0     | NUMERIC      |
| TASA_COTIZACION   | Tasa aplicada en esta oferta específica.         | 12,2     | NUMERIC      |
| MONTO_ESTIMADO... | Monto calculado para esta opción.                | 12,2     | NUMERIC      |
| ID_COTIZACION     | Clave Foránea (FK) hacia cotizacion.COTIZACION.  | 10,0     | NUMERIC      |
| ID_SEGURO         | Clave Foránea (FK) hacia plan_seguro.SEGURO.     | 10,0     | NUMERIC      |
