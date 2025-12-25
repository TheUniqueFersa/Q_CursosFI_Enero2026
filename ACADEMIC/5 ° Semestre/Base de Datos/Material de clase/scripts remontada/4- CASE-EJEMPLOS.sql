
---------------------------
---------  CASE -----------
----- SEMESTRE 2026-1
---------------------------
/*

La estructura CASE evalúa una lista de condiciones y devuelve una de las varias expresiones de resultado posibles. 
La expresión CASE tiene dos formatos:
	1. La expresión CASE sencilla, compara una expresión con un conjunto de expresiones sencillas para determinar 
	   el resultado.
	2. La expresión CASE buscada, evalúa un conjunto de expresiones booleanas para determinar el resultado.
	Ambos formatos admiten un argumento ELSE opcional.

SINTAXIS
*/

CASE <expresion>
	when <valor_expresion> then <valor devuelto>
	when <valor_expresion1> then <valor_devuelto1>
	.
	.
	.
	else <valor_devuelto2>  --VALOR POR DEFECTO


use [DBUNIVERSIDAD2_89000546]
go


--Ejemplo
--Ejemplo: Declarar una variable donde se le asigne el número del mes, evalúe el valor de la variable y retorne
--el mes en letras

declare @mes int, @mes1 varchar(20)
set @mes=5
set @mes1 = ( case @mes
				when 1	then 'ENERO'
				when 2	then 'FEBRERO'
				when 3	then 'MARZO'
				when 4	then 'ABRIL'
				when 5	then 'MAYO'
				when 6	then 'JUNIO'
				when 7	then 'JULIO'
				when 8	then 'AGOSTO'
				when 9	then 'SEPTIEMBRE'
				when 10	then 'OCTUBRE'
				when 11	then 'NOVIEMBRE'
				when 12	then 'DICIEMBRE'
				else 'No es un mes valido'
			end)
select @mes1


--- select ----

SELECT   id_personal, paterno, materno, nombre, tipoPersonal,   
     tipo= CASE tipoPersonal 
         WHEN 'I' THEN 'INVESTIGADOR'  
         WHEN 'B' THEN 'BECARIOS'  
         ELSE 'SIN ASIGNACION'  
      END,  
      fechaIngreso
FROM trabajador.PERSONAL  
ORDER BY tipo;  



----- order by ------

SELECT id_personal, nombre,paterno, materno, tipoPersonal, fechaIngreso, fechaNacimiento
FROM trabajador.PERSONAL
ORDER BY 
  CASE tipoPersonal 
     WHEN RTRIM(LTRIM('I')) THEN fechaNacimiento
      when RTRIM(LTRIM('B')) THEN  fechaIngreso 
END;


update empleadosEjemplo
set claveDepto=123
where clave=15

update empleadosEjemplo
set claveDepto=25, aguinaldo=46000
where clave=16


select clave, paterno, materno, nombre, tipo, sueldo, aguinaldo, claveDepto
from empleadosEjemplo
ORDER BY  CASE tipo 
				WHEN 'C' THEN sueldo 
		  END DESC,
		  case when tipo='H' 
			then  aguinaldo  
		  else claveDepto 
		  end


---- UPDATE

select * from empleadosEjemplo

begin tran
	select *, sueldo*0.15 as '15%SUELDO' from empleadosEjemplo
	where tipo = 'C'; 

	UPDATE empleadosEjemplo
	SET aguinaldo =   
		( CASE  
			 WHEN ((sueldo *0.15) >5000) THEN sueldo + 5000  
			 ELSE (sueldo + 2000)  
		   END  
		)  
	WHERE tipo = 'C';   

	select * from empleadosEjemplo
	where tipo = 'C'; 
rollback tran



---- HAVING ----


-- obtener para cada PUESTO el pago maximo
SELECT puesto, max(sueldo) as maximoSueldo, tipo
FROM empleadosEjemplo E
group by puesto, tipo


SELECT puesto, max(sueldo) as maximoSueldo, tipo
FROM empleadosEjemplo E
group by puesto, tipo
HAVING ( MAX (CASE 
                  WHEN tipo = 'C'  THEN sueldo  
                  ELSE NULL 
			   END) > 25000
         OR MAX(CASE WHEN tipo  = 'H'   
					THEN sueldo   
					ELSE NULL 
				END) > 30000)  
ORDER BY maximoSueldo DESC;  






/* Ejercicio Case */




 --Case 1	Liste nombre completo de cada proyecto, el número de empleados que trabajan en él, 
 --costo del proyecto y si el costo es menor o igual que 300,000 muestre ‘Costo bajo’, si el costo 
 --es mayor que 300,000 y menor que 500,000 coloque ‘Costo promedio’, si el costo es mayor que 500,00 coloque ‘costo alto’ 


select p.nombre, count(ep.id_personal) totalEmpleados, sum(pa.monto) montopagado,
      DescripcionDelPago = case
							when sum(pa.monto) <= 265000 then 'PAGO BAJO'
							when sum(pa.monto) > 265000 and sum(pa.monto) < 300000 then 'PAGO MEDIO'
							when sum(pa.monto) >= 300000 and sum(pa.monto) < 500000 then 'PAGO ACEPTABLE'
							else 'CASI PAGADO'
	end
from proyecto.proyecto p
inner join proyecto.EMPLEADO_PROYECTO ep on p.id_proyecto=ep.id_proyecto
inner join proyecto.PAGOS pa on p.id_proyecto=pa.id_proyecto
group by p.nombre



