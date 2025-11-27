---
implementado: false
---
El cálculo de una prima se da:
`{([monto_asegurado * tasa_prima] - recargos + descuentos) + coberturas_adicionales} + impuesto`

# `monto_asegurado`

>`monto_asegurado_minimo` Atributo de [[3.TIPO DE SEGURO]]

Indica lo menos que puede asegurar un PLAN.
En palabras prácticas, si se tiene que tu coche tiene un ``valor_comercial`` $x$, y el Plan A tiene `monto_asegurado_minimo` $y$, entonces puedes contratar una póliza para el seguro A si $x\geq y$, pero no si $x < y$

De tal forma que si tu coche es mayor que ``monto_asegurado_minimo``, lo que asegura la ASEGURADORA es el precio comercial de tu coche más coberturas adicionales

Si ``Auto1.valor_comercial`` = $x+c$
y ``Plan A.monto_asegurado_minimo`` = $x$

``monto_asegurado`` será $x+c$
# `tasa_prima`
>Atributo de [[3.TIPO DE SEGURO]], una distinta para cada plan
>Se mide en porcentaje
# `recargos`
>Medido en porcentaje

# `descuentos`
>Medido en porcentaje
# `coberturas_adicionales`
>Catálogo que añade costo al seguro al añadir ciertas coberturas opcionales que el cliente decide adquirir o no

El costo de estas coberturas se le conoce como tarifa y puede ser:
- ``F``: Fija: osea que tiene una tarifa en valor monetario
- `P`: Porcentaje: es decir, dicha cobertura tiene la tarifa correspondiente a aplicar un porcentaje a la del monto_asegurado de la Póliza contratada.

# `impuesto`
>Se aplica a la póliza directamente, debería ser 1 para cada tipo de seguro



