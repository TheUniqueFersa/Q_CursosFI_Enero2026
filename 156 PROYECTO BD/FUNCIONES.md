---
pertenece a:
  - "[[Proyecto BD]]"
---
# ``dbo.fnEdadCliente``

Descripción: Calcula la edad de una persona en años basada en su fecha de nacimiento.

| Atributo         | Descripción                      | Longitud | Tipo de dato |
| ---------------- | -------------------------------- | -------- | ------------ |
| @FechaNacimiento | Fecha de nacimiento del cliente. | -        | DATE         |
| (RETURNS)        | Edad calculada en años.          | -        | INT          |


# ``dbo.fnDiasTranscurridos``

Descripción: Calcula el número de días que han pasado desde una fecha específica hasta hoy.

| Atributo  | Descripción                     | Longitud | Tipo de dato |
| --------- | ------------------------------- | -------- | ------------ |
| @Fecha    | Fecha del evento a evaluar.     | -        | DATETIME     |
| (RETURNS) | Cantidad de días transcurridos. | -        | INT          |


# ``dbo.fnMontoAsegurado``

Descripción: Compara el valor comercial y el mínimo permitido, devolviendo el mayor.

| Atributo        | Descripción                      | Longitud | Tipo de dato |
| --------------- | -------------------------------- | -------- | ------------ |
| @ValorComercial | Valor comercial del vehículo.    | 12,2     | NUMERIC      |
| @MontoMinimo    | Monto mínimo asegurado del plan. | 12,2     | NUMERIC      |
| (RETURNS)       | Monto efectivo asegurado.        | 12,2     | NUMERIC      |


# ``dbo.fnTarifaCobertura``

Descripción: Calcula el costo monetario de una cobertura según si su tarifa es fija o porcentual.

| Atributo        | Descripción                              | Longitud | Tipo de dato |
| --------------- | ---------------------------------------- | -------- | ------------ |
| @TipoTarifa     | Tipo de cálculo ('F'ija o 'P'orcentaje). | 1        | CHAR         |
| @Tarifa         | Valor de la tarifa (monto o porcentaje). | 12,2     | NUMERIC      |
| @MontoAsegurado | Monto base para cálculo porcentual.      | 12,2     | NUMERIC      |
| (RETURNS)       | Costo final de la cobertura.             | 12,2     | NUMERIC      |


# ``dbo.fnCoberturasAdicionalesTotal``

Descripción: Suma el costo de todas las coberturas adicionales de una póliza.

| Atributo  | Descripción                 | Longitud | Tipo de dato |
| --------- | --------------------------- | -------- | ------------ |
| @IdPoliza | Identificador de la póliza. | 10,0     | NUMERIC      |
| (RETURNS) | Suma total de costos extra. | 12,2     | NUMERIC      |


# ``dbo.fnSaldoPendiente``

Descripción: Calcula la deuda actual (Prima Total menos Pagos Realizados).

| Atributo  | Descripción                 | Longitud | Tipo de dato |
| --------- | --------------------------- | -------- | ------------ |
| @IdPoliza | Identificador de la póliza. | 10,0     | NUMERIC      |
| (RETURNS) | Saldo pendiente por pagar.  | 12,2     | NUMERIC      |



# ``plan_seguro.fn_DescTipo``

Descripción: Devuelve la descripción textual del tipo de seguro ('A'->'Automovil', etc.).

| Atributo  | Descripción                      | Longitud | Tipo de dato |
| --------- | -------------------------------- | -------- | ------------ |
| @T        | Carácter identificador del tipo. | 1        | CHAR         |
| (RETURNS) | Descripción completa.            | 20       | VARCHAR      |
