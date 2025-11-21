---
links_url:
  - https://github.com/TheUniqueFersa/ASEGURADORA-El-Buen-Retiro/issues/1
Incompleto: 1
---
Cuando se [[ACC. CALCULO DE PRIMA|calcula la prima]], dicha resultado pasa a estar en el valor de 
`monto_prima_total` de [[PÓLIZA]]

==Si el cliente decide que los pagos serán en meses==, etc, entonces se debe indicar al periodo de pago (**CATÁLOGO** en [[PERIODO_PAGO]])

>ℹ **PL/SQL**
>Cuando se cree el registro de [[PÓLIZA]], se crearán los pagos a realizar

Los que se calcularán de acuerdo al ID_PERDIODO_PAGO específicado
> [!example] Ejemplo
> Si `monto_prima_totaL` = 10000
> Y el `ID_PERIODO_PAGO` -> RANGO = 12 MESES
> con 3 MESES DE PERIODO PAGO
> `monto_prima_total / (RANGO_PERIODO_PAGO/PERIODO_PAGO)`
> Y esa cantidad debe ser la que debe tener cada [[6. PAGO]] en `monto_pago`

>❗ Se debe verificar con #SQL/PL-SQL
>Que la suma total de todos los pagos generados si de `monto_prima_total`



- [ ] Como identificar que pago sigue ?