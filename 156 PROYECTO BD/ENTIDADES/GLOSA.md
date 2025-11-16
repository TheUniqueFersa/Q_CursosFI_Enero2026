---
tipo: Entidad
implementado: false
---
Puede ser una entidad sencilla que sea de la forma:

| ID_GLOSA (PK)            |
| ------------------------ |
| ID_PLAN / ID_SEGURO (FK) |
| TITULO                   |
| DESCRIPCION              |
| FECHA_ADICION            |
Note que las glosas estan en PLAN, no en PÓLIZA.
Pero como el sistema permite su modificación, entonces se sugiere un procedimiento para manejar GLOSAS en las PÓLIZAS y asi no se pierda la información que se contrato originalmente.
[[ACC. GLOSA EN POLIZA]]