---
pertenece a:
  - "[[Proyecto BD]]"
---
>Los **ÍNDICES** se encuentran en el archivo `dml.sql`
>

| Nombre                    | Descripción                                                         |
| ------------------------- | ------------------------------------------------------------------- |
| `IX_POLIZA_ID_CLIENTE`    | índice Non clustered para acelerar búsquedas de pólizas por cliente |
| ``IX_PAGO_POLIZA_ESTADO`` | índice compuesto para consultas por póliza y estado de pago         |
| ``IX_SINIESTRO_FECHA``    | índice por fecha y hora de siniestro para reportes cronológicos     |
