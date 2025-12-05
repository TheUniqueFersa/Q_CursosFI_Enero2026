---
tipo: Entidad
---
| Atributo        | Descripción                                    | Longitud | Tipo de dato |
| --------------- | ---------------------------------------------- | -------- | ------------ |
| ID_MODELO_AUTO  | Clave Primaria (PK). Identificador del modelo. | 10,0     | NUMERIC      |
| NOMBRE_MODELO   | Nombre comercial del modelo.                   | 40       | VARCHAR      |
| ANIO            | Año del modelo.                                | 4,0      | NUMERIC      |
| VALOR_COMERCIAL | Valor de mercado base (Opcional).              | 12,2     | NUMERIC      |
| ID_MARCA_AUTO   | Clave Foránea (FK) hacia catalogo.MARCA_AUTO.  | 10,0     | NUMERIC      |
