---
tipo: Entidad
---

| Atributo  | Descripción                                    | Longitud | Tipo de dato |
| --------- | ---------------------------------------------- | -------- | ------------ |
| ID_GLOSA  | Clave Primaria (PK). Identificador de la nota. | 10,0     | NUMERIC      |
| CONTENIDO | Texto descriptivo de la glosa o cláusula.      | 100      | VARCHAR      |
| ID_SEGURO | Clave Foránea (FK) hacia plan_seguro.SEGURO.   | 10,0     | NUMERIC      |

Note que las glosas estan en PLAN, no en PÓLIZA.
Pero como el sistema permite su modificación, entonces se sugiere un procedimiento para manejar GLOSAS en las PÓLIZAS y asi no se pierda la información que se contrato originalmente.
[[ACC. GLOSA EN POLIZA]]