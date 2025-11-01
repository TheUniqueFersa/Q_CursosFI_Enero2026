---
pertenece a:
  - "[[Lab de Bases de Datos]]"
terminado: true
---
![[Pasted image 20251023130530.png]]

![[Pasted image 20251030120638.png]]

Entre las principales funciones que se emplean para construir expresiones complejas se encuentran:
```
to_char
to_date
substr
instr
nvl
nvl2
decode
```

# Complementaria
## B
Caso de estudio arrojado: **4**
## **CASO DE ESTUDIO**
- [x] La secuencia seq_cuenta debe iniciar en 1001, incrementarse de 2 en 2, cíclica con 9 valores en caché. Al reiniciarse debe comenzar en el valor 10. El máximo valor debe ser 500,000 ✅ 2025-10-30

- [x] ● Incluir en el script una instrucción que obtenga los primeros 2 valores de la secuencia y otra instrucción que muestre dicho valor sin incrementarlo. ✅ 2025-10-30
Obtener 2 valores de la secuencia
muestre dicho valor sin incrementarlo

- [x] ● En caso de especificar un titular suplente, la BD debe validar que no sean la misma persona. ✅ 2025-10-30
CHECK TITULAR_ID != TITULAR_SUPLENTE_ID;

- [x] ● Las combinaciones válidas para los atributos es_ahorro, es_inversion son: (1,1),(0,1),(1,0) , es decir, se permite que una cuenta adquiera los 2 roles, uno de ellos , pero debe contar **con al menos un rol**. Se debe validar que no se intente guardar o modificar un valor (0,0). ✅ 2025-10-30

- [x] ● El número de cuenta no debe duplicarse y debe iniciar con el prefijo ‘AH’ si es de ahorro y ‘IN’ si es de inversión. Si la cuenta tiene los 2 roles asignados, su prefijo debe ser ‘INAH’. ✅ 2025-10-30
UNIQUE
CHECK substr(num_cuenta, 1, 2) = 'AH' AND 


- [x] ● El saldo de la cuenta no debe ser menor a los $1,500. ✅ 2025-10-30
CHECK 

- [x] ● En caso de no haberse especificado la fecha de registro se deberá asignar la fecha ✅ 2025-10-30
del sistema.
DEFAULT 

---

- [x] En caso de existir, la fecha de baja debe ser al menos 1 mes después con respecto a la fecha de registro (30 días). ✅ 2025-10-30
- [x] ● El número de tarjeta de débito no debe duplicarse. ✅ 2025-10-30
- [x] ● El monto máximo para retirar de cajero es $12,500 ✅ 2025-10-30
- [/] ● El día de retiro para una cuenta de inversión se refiere al día del mes en el que el titular puede hacer un retiro de su cuenta. Este valor debe estar entre el quinto día del mes y el día 25.
- [x] ● La combinación de valores, rfc, curp del titular no debe duplicarse. Se decide emplear un índice para validar esta regla. ✅ 2025-10-30
### Requerimientos para mejorar desempeño
- [x] Frecuentemente se realizan búsquedas empleando las primeras 5 letras del nombre del titular sin importar si el dato está capturado en minúsculas o mayúsculas. Se decide crear un índice para cuidar el desempeño. ✅ 2025-10-30
- [x] ● De forma similar, se consultan los movimientos de las cuentas con base al campo fecha_movimiento. Las consultas hacen un uso muy frecuente del mes y año en el formato mm/yyyy. Se ha decidido indexar el campo considerando este formato de fechas. ✅ 2025-10-30
- [x] ● Otra consulta de uso frecuente son las operaciones join empleando la FK cuenta_aval_id. Se ha decidido indexar este campo. ✅ 2025-10-30

## Segundo modelo 
- [x] Un curso puede ser online o presencial, pero no ambos a la vez. El discriminante debería ser un solo atributo llamado tipo_curso char(1) en lugar del uso de los atributos es_online, es_presencial. El atributo solo debe permitir los valores ‘O’ y ‘P’. ✅ 2025-10-30
- [ ] ● La calificación asignada a cada uno de los cursos que toma un participante se asigna hasta que el curso ha terminado. La BD no permite asignar un valor hasta el final del curso.
- [x] ● La calificación del curso debe permitir la captura de un decimal, es decir, la calificación de un curso tiene un dominio de [5.0,10.0] La BD debe verificar que el valor de la calificación compla con este rango. ✅ 2025-10-30
- [x] ● El diseñador omitió relacionar el estatus y omitió incluir la fecha de estatus actual del curso (fecha_estatus). Ambas columnas deben ser obligatorias. ✅ 2025-10-30
- [x] ● Observar que la relación de la tabla de histórico de estatus con la tabla curso está invertida. ✅ 2025-10-30
- [x] ● Algunos cursos están asociados a un curso antecedente. Notar que esta asociación solo se realizó para los cursos presenciales, pero debería de aplicar para cualquier tipo de curso, no solo para los presenciales. ✅ 2025-10-30
- [x] ● Se desea que la tabla curso_participante tenga una PK artificial curso_participante_id. Al realizar este cambio, la PK compuesta se eliminará y se perderá el la restricción unique de los 2 atributos: curso_id y participante_id. Adicional al cambio de PK por una artificial, se desea que la restricción unique entre estos 2 atributos se siga conservando. ✅ 2025-10-30

- [x] Notar que el campo que almacena la foto del participante tiene un tipo de dato incorrecto, se deberá corregir. Tip: para cambiar un atributo a tipo blob, primero se deberá eliminar la columna y después crearla con el tipo blob. ==La sentencia alter table nombre modify columna no funciona para este escenario debido al uso de blobs.== ✅ 2025-10-30
- [x] La tabla diploma tiene un nombre incorrecto. Su nombre debe ser reconocimiento. Realizar el cambio de nombre así como el nombre de su PK a reconocimiento_id así como los atributos y FKs que hagan referencia a esta tabla (atributo diploma_id en curso_participante así como el nombre del constraint de referencia: curso_participante_diploma_id_fk ✅ 2025-10-30
- [x] ● Un reconocimiento no puede ser asignado más de una vez. La BD debe verificar esta condición de forma automática. ✅ 2025-10-30
- [x] ● Un reconocimiento no deberá asignarse a un participante para un cierto curso si su calificación es menor a 8. Para validar esta regla, se puede emplear una expresión booleana que deberá evaluar a true cuando se cumpla alguna de las siguientes condiciones: ✅ 2025-10-30
	- [x] ○ que el valor de la FK de reconocimiento_id sea nula. Al ser nula no importa el valor de la calificación. ✅ 2025-10-30
	- [x] ○ Si el valor de la FK de reconocimiento_id es no nulo, se deberá cumplir que la calificación sea mayor o igual a 8. ✅ 2025-10-30

- [x] ● La secuencia seq_curso no debe ser cíclica, debe contar con 10 elementos en el caché, su valor mínimo debe ser 4, incrementable cada 2 valores y tiene como valor máximo 99,999,999. ✅ 2025-10-30

## 3. Creación de roles y usuarios
## 4. Creación de objetos
## 5. Modificación de la estructura de una base de datos

## 6. Validación de resultados
## RESULTADOS
1. [x] usuarios ✅ 2025-10-30
2. [x] objetos creados por admin para 1MR ✅ 2025-10-30
3. [x] sinónimo para 1MR ✅ 2025-10-30
4. [x] ejecutar el script del profe -> **OK** ✅ 2025-10-30
5. [x] s-05 con mis cambios realizados -> **OK** ✅ 2025-10-30

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