---
tipo: Entidad
---
| Atributo              | Descripción                                         | Longitud | Tipo de dato |
| --------------------- | --------------------------------------------------- | -------- | ------------ |
| ID_VEHICULO_HISTORICO | Clave Primaria (PK). ID del registro histórico.     | 10,0     | NUMERIC      |
| ID_VEHICULO           | Clave Foránea (FK) hacia cliente.VEHICULO.          | 10,0     | NUMERIC      |
| ID_POLIZA             | Clave Foránea (FK) hacia poliza.POLIZA (Histórica). | 10,0     | NUMERIC      |
