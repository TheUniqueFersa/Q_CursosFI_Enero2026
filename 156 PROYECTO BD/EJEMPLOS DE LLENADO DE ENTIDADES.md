---
pertenece a:
  - "[[Proyecto BD]]"
---
## [[PERIODO_PAGO]]
>Usado para indicar en cuantos periodos se va a terminar el pago de acuerdo al `monto_prima_total` en [[PÓLIZA]]

| ID_PERIODO_PAGO | DESCRIPCIÓN  | PERIODICIDAD |     |
| --------------- | ------------ | ------------ | --- |
| 1               | Cada 3 meses | 3            |     |
| 2               | Cada 6 meses | 6            |     |
| 3               | Cada año     | 12           |     |
| 4               | Cada mes     | 1            |     |
|                 |              |              |     |



## [[MÉTODO_PAGO]]
>En [[6. PAGO]]

| ID_METODO_PAGO | METODO                 |
| -------------- | ---------------------- |
| 1              | Efectivo               |
| 2              | Tarjeta (Débito)       |
| 3              | Tarjeta (Crédito)      |
| 4              | Transferencia bancaria |



>ℹ ***Implementación FUtura***
>METER ENTIDAD TARJETA QUE PERMITA HACER DICHAS BUSQUEDAS


# [[IMPUESTO]]

| ID_IMPUESTO | Nombre | Cantidad |
| ----------- | ------ | -------- |
| 1           | IVA    | 0.16     |


# [[COBERTURA]]
>Ejemplo en su archivo correspondiente