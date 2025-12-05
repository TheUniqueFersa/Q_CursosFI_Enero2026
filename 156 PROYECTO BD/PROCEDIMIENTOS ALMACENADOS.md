---
pertenece a:
  - "[[Proyecto BD]]"
---
>Los **PROCEDIMIENTOS ALMACENADOS** se encuentran en el archivo `dml.sql`

| Schema     | Nombre                        | Descripción                                                           |
| ---------- | ----------------------------- | --------------------------------------------------------------------- |
| ``poliza`` | `pa_ReporteSiniestros`        | Genera reporte mensual de siniestros por tipo de seguro               |
|            | ``spNuevaPoliza``             | Crea una nueva póliza asignando saldo inicial igual a la prima total  |
|            | `spRegistrarPoliza`           | Registra una póliza usando el procedimiento `spNuevaPoliza`           |
|            | ``spAgregarPago``             | Inserta un pago en una póliza y el trigger actualiza el saldo         |
|            | ``spRegistrarSiniestro``      | Registra un siniestro asociándolo a causa, ajustador y ubicación      |
|            | ``spInsertarClienteNatural``  | Inserta un cliente natural                                            |
|            | ``spRegistrarCotizacion``     | Registra una nueva cotización para un cliente                         |
|            | ``spRegistrarSeguroAuto``     | Inserta un seguro tipo AUTO y su registro asociado en SEGURO_AUTO     |
|            | ``spRegistrarSeguroVida``     | Inserta un seguro tipo VIDA y su registro asociado en SEGURO_VIDA     |
|            | ``spRegistrarSeguroRetiro``\| | Inserta un seguro tipo RETIRO y su registro asociado en SEGURO_RETIRO |
