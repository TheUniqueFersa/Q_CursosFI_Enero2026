---
pertenece a:
  - "[[Lab de Bases de Datos]]"
terminado: false
---
![[Pasted image 20251023130530.png]]
# Complementaria
## B
Caso de estudio arrojado: **4**
## **CASO DE ESTUDIO**


## 3. Creación de roles y usuarios
## 4. Creación de objetos
## 5. Modificación de la estructura de una base de datos

## 6. Validación de resultados


# Práctica
# Previo

## Ejercicio 1
- [x] Todo ok ✅ 2025-10-22

## Ejercicio 2
- [x]  ✅ 2025-10-23
- [x] Configurar el coño spool ✅ 2025-10-23


- [x] A. El tipo de auto solo puede ser C = carga o P = Particular ✅ 2025-10-23
- [x] B. Crear la estructura de la tabla pago_auto empleando table constraints. Considerar los siguientes requerimientos. ✅ 2025-10-23
	- [x] ● Se especifica la fecha del sistema como fecha de pago en caso de no ser especificada ✅ 2025-10-23
	- [x] ● El valor de la fecha límite la debe calcular el sistema, corresponde con 10 días después de la fecha de pago (columna virtual) ✅ 2025-10-23
	- [x] ● El importe del pago no debe ser mayor o igual a 10,000 ✅ 2025-10-23
	- [x] ● Para el caso de las 3 banderas con_* solo se deben registrar las siguientes combinaciones ✅ 2025-10-23
		- [x] ○ Solo se puede tener un valor a la vez excepto para los pagos que se registran sin descuento, sin recargo y sin multa. ✅ 2025-10-23
	- [x] ● El folio del recibo debe iniciar con el siguiente carácter: ✅ 2025-10-23
		- [x] O para pagos sin descuentos, sin recargos, y sin multas ✅ 2025-10-23
		- [x] D para los pagos con descuento ✅ 2025-10-23
		- [x] R para los pagos con recargo ✅ 2025-10-23
		- [x] M para los pagos con multa ✅ 2025-10-23
	- [x] ● El folio no puede duplicarse ✅ 2025-10-23
	- [x] ● Se realizan búsquedas muy frecuentes empleando como criterio de búsqueda la selección de pagos con fecha de pago por mes y año. La condición de la consulta implica el siguiente predicado: ✅ 2025-10-23