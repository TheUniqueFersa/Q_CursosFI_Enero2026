---
tipo: Entidad
---
CORREO_CLIENTE

| Atributo         | Descripción                                  | Longitud | Tipo de dato |
| ---------------- | -------------------------------------------- | -------- | ------------ |
| ID_CORREO        | Clave Primaria (PK). Identificador único.    | 10,0     | NUMERIC      |
| ID_CLIENTE       | Clave Foránea (FK) hacia cliente.CLIENTE.    | 10,0     | NUMERIC      |
| DIRECCION_CORREO | Dirección de correo electrónico del cliente. | 40       | VARCHAR      |
