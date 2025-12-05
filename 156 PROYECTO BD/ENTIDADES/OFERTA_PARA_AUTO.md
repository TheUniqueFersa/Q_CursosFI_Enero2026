---
tipo: Entidad
---

| Atributo            | Descripción                                     | Longitud | Tipo de dato |
| ------------------- | ----------------------------------------------- | -------- | ------------ |
| ID_OFERTA_PARA_AUTO | Clave Primaria (PK). Identificador del detalle. | 10,0     | NUMERIC      |
| ID_OFERTA           | Clave Foránea (FK) hacia cotizacion.OFERTA.     | 10,0     | NUMERIC      |
| ID_VEHICULO         | Clave Foránea (FK) hacia cliente.VEHICULO.      | 10,0     | NUMERIC      |
