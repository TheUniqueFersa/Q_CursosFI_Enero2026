
/*

TEMA 7. DQL


SEMESTRE 2026-1


*/


--ABRIR SU BASE DE DATOS
use [DBUNIVERSIDAD2_89000546];
go


SELECT * FROM empleadosEjemplo


------------EJEMPLOS  ---------

--Ejemplo 1. Obtener nombre, puesto y sueldo de aquellos empleados con aguinaldo mayor a 65000

select paterno, materno, nombre, sueldo, aguinaldo
from empleadosEjemplo
where aguinaldo>65000

--Ejemplo 2: Obtener nombre y puesto de aquellos empleados for�neos y que no 
--hayan recibido aguinaldo

select paterno, materno, nombre, puesto, aguinaldo, ciudad
from empleadosEjemplo
where ciudad!='CIUDAD DE MEXICO' and aguinaldo is NOT null

select paterno, materno, nombre, puesto, aguinaldo, ciudad
from empleadosEjemplo
where ciudad!='CIUDAD DE MEXICO' and aguinaldo is  null



--EJEMPLO 3. Obtener a todos los empleados cuyo apellido paterno este entre BAENA y FLORES

SELECT * FROM empleadosEjemplo
order by paterno

SELECT * FROM empleadosEjemplo
where paterno between 'BAENA' and 'FLORES'
order by paterno

SELECT * FROM empleadosEjemplo
where claveDepto between 25 and 123
order by claveDepto


--Ejemplo Rango 4: Obtenga el nombre de los empleados, sueldo, el puesto y ciudad de aquellos que tienen un salario --entre 12000 y 28000
select nombre+' '+paterno+' '+isnull(materno, '-SIN APELLIDO MATERNO-') as nombreEmpleado, sueldo, puesto, ciudad  
from  empleadosEjemplo


select * from empleadosEjemplo

SELECT nombre+' '+paterno+' '+isnull(materno, '-SIN APELLIDO MATERNO-') as nombreEmpleado, sueldo, puesto, ciudad 
FROM empleadosEjemplo
WHERE sueldo >=12000 AND  sueldo<=28000
order by sueldo desc

SELECT nombre+' '+paterno+' '+isnull(materno, '-SIN APELLIDO MATERNO-') as nombreEmpleado, sueldo, puesto, ciudad  
FROM empleadosEjemplo
where sueldo between 12000 and 28000
order by sueldo desc




--Ejemplo 5:  Nombre de los empleados, sueldo y el puesto de aquellos que ganan 2975, 35000 o 28000.

Select  nombre+' '+paterno+' '+isnull(materno, '-') as nombreEmp, sueldo, puesto 
from empleadosEjemplo
where sueldo in (2975, 35000, 28000) 
order by puesto, sueldo desc


-- los que ganan sueldos diferentes a 2975, 35000 o 28000
Select  nombre+' '+paterno+' '+isnull(materno, '-') as nombreEmp, sueldo, puesto 
from empleadosEjemplo
where sueldo not in (2975, 35000, 28000) 
order by puesto, sueldo desc




--Ejemplo 6:  Liste la clave y nombre del empleado, de aquellos cuyo nombre inicie con la letra D

SELECT clave, nombre+' '+paterno+' '+isnull (materno, '-') as nombre
FROM empleadosEjemplo
ORDER BY NOMBRE, PATERNO, MATERNO 

SELECT clave, nombre+' '+paterno+' '+isnull (materno, '-') as nombre
FROM empleadosEjemplo
WHERE nombre LIKE 'D%';



--Ejemplo 7: Muestre todos los datos de los empleados donde en la tercera posici�n de su apellido paterno 
--tengan una letra A.

SELECT clave, nombre, paterno, materno
FROM empleadosEjemplo
WHERE paterno LIKE '__A%';

SELECT clave, nombre, paterno, materno
FROM empleadosEjemplo
WHERE paterno LIKE '%B%';


SELECT clave, nombre, paterno, materno
FROM empleadosEjemplo
WHERE paterno LIKE '%A';



---HASTA AQUI 31/10/2025


select * from trabajador.BENEFICIARIO


--EJEMPLO 8:  Muestre la clave, nombre y sueldo de los empleados sin apellido materno.

-- IS NULLL busca registros sin informaci�n, IS NOT NULL busca resgistros con informaci�n
SELECT clave, nombre, paterno, materno, sueldo
FROM  empleadosEjemplo
WHERE materno IS  NULL;


--- todos los empleados que recibieron aguinaldo
SELECT clave, nombre, paterno, materno, aguinaldo
FROM  empleadosEjemplo
WHERE aguinaldo IS NOT NULL;



--EJEMPLO 9: Liste el nombre de los empleados que son de honorarios y l�der de proyecto o su sueldo es mayor o igual a $35000


select * from empleadosEjemplo
order by tipo desc, puesto



SELECT nombre+' '+paterno+' '+isnull(materno, '-') as nombreEmp, puesto, sueldo, tipo as 'TIPO EMPLEADO'
FROM empleadosEjemplo 
WHERE TIPO='H' AND (puesto='LIDER DE PROYECTO' or sueldo >= 35000)


SELECT nombre+' '+paterno+' '+isnull(materno, '-') as nombreEmp, puesto, sueldo, tipo as 'TIPO EMPLEADO'
FROM empleadosEjemplo 
WHERE ( TIPO='H' AND puesto='LIDER DE PROYECTO') or (sueldo >= 35000)




--De la consulta anterior para el tipo muestre Horarios y Confianza no H o C (CASE)
SELECT nombre+' '+paterno+' '+isnull(materno, '-') as nombreEmp, puesto, sueldo,

(case 
	When tipo='H' then 'HONORARIOS'
    WHEN TIPO='C' then 'CONFIANZA'
	else 'SIN ESPECIFICAR'
 end) as 'TIPO EMPLEADO'
FROM empleadosEjemplo 


SELECT nombre+' '+paterno+' '+isnull(materno, '-') as nombreEmp, puesto, sueldo,

(case 
	When tipo='H' then 'HONORARIOS'
    WHEN TIPO='C' then 'CONFIANZA'
	else 'SIN ESPECIFICAR'
 end) as 'TIPO EMPLEADO'

FROM empleadosEjemplo 
WHERE TIPO='H' AND ( puesto='LIDER DE PROYECTO' or sueldo >= 35000)
order by sueldo


SELECT nombre+' '+paterno+' '+isnull(materno, '-') as nombreEmp, puesto, sueldo,

(case 
	When tipo='H' then 'HONORARIOS'
    WHEN TIPO='C' then 'CONFIANZA'
	else 'SIN ESPECIFICAR'
 end) as 'TIPO EMPLEADO'

FROM empleadosEjemplo 
WHERE (TIPO='H' AND puesto='LIDER DE PROYECTO' ) or sueldo >= 35000
order by sueldo



--Ejemplo 10. Nombre de los empleados ordenados alfab�ticamente en forma descendente.


SELECT paterno, materno, nombre
FROM empleadosEjemplo 
ORDER BY paterno DESC, materno desc, nombre desc;

select 'construyendo un mensaje' as mensaje

-- 4/11/2025



--Ejemplo 11 Obtenga nombre completo en un solo campo, puesto, sueldo y tipo de empleado ordenados por sueldo de mayor de menor y puesto en orden alfab�tico de manera descendiente

SELECT nombre+' '+paterno+' '+isnull(materno, '-') as nombreEmp, puesto, sueldo,
(case 
	When tipo='H' then 'HONORARIOS'
    WHEN TIPO='C' then 'CONFIANZA'
	ELSE 'SIN TIPO'
 end) AS 'TIPO EMPLEADO'
FROM empleadosEjemplo 
order by sueldo desc, puesto --desc




--Ejemplo 12. Obtener la lista de los puestos sin repeticiones

select * from empleadosEjemplo

select distinct ciudad 
from empleadosEjemplo


SELECT DISTINCT puesto
FROM empleadosEjemplo;


--Ejemplo 12. Obtener la lista de ciudades de donde habitan los empleados

SELECT DISTINCT ciudad
FROM empleadosEjemplo;


--Ejemplo 13 Obtener para cada empleado el total ganado (sueldo + aguinaldo), solo de aquellos 
--empleados con valores distintos de NULL


--sin titulo
select paterno, materno, nombre, sueldo, aguinaldo, sueldo+aguinaldo 
from empleadosEjemplo
where sueldo is not null and aguinaldo is not null

--con titulo
select paterno, materno, nombre, sueldo, aguinaldo, sueldo+aguinaldo as 'total ganado'
from empleadosEjemplo
where sueldo is not null or aguinaldo is not null

select paterno, materno, nombre, sueldo, aguinaldo,  sueldo+isnull(aguinaldo,0) as 'total ganado'
from empleadosEjemplo




--EJEMPLO 14 SOME  ANY

SELECT sueldo as 'SUELDO NIVEL'
FROM catalogo.NIVEL
ORDER BY sueldo 

--SELECT distinct SUELDO 
--FROM empleadosEjemplo


SELECT distinct aguinaldo 
FROM empleadosEjemplo



-- obtener la informci�n de los empleados con sueldo menor a todos los sueldos de la tabla nivel
SELECT * FROM empleadosEjemplo
WHERE SUELDO < ALL  (SELECT SUELDO FROM catalogo.NIVEL)
order by sueldo desc

-- obtener la informci�n de los empleados con sueldo menor a alguno de los sueldos de la tabla nivel
SELECT * FROM empleadosEjemplo
WHERE sueldo < SOME  (SELECT SUELDO FROM catalogo.NIVEL)
order by sueldo desc

--
SELECT * FROM empleadosEjemplo
WHERE SUELDO < ANY  (SELECT SUELDO FROM catalogo.NIVEL)


-- AGUINALDO

SELECT * FROM empleadosEjemplo
WHERE aguinaldo > ANY  (SELECT SUELDO FROM catalogo.NIVEL)



--Ejemplo 15:  IF

--IF
	--begin
	--	sentencias +1 ---
	--end
--	IF
--	ELSE
		--select ...
--ELSE
--	IF


IF 150000 <=  ANY(SELECT SUELDO FROM empleadosEjemplo)
	begin
		print('Los salarios de algunos empleados son  superiores a $150,000');
	end
else
	begin
		print('Los salarios de algunos empleados son menores a $150,000');

		IF 150000 <=  all(SELECT SUELDO FROM empleadosEjemplo)

			print('Los salarios de todos los empleados son superiores a $150,000');
		
		else
			begin
				print('Los salarios de algunos empleados son menores a $150,000');
			end
	end

--EXISTS
-- 

SELECT columns
FROM table1
WHERE EXISTS (SELECT columns FROM table2);


--Ejemplo. 16 Obtenga todos los ROLES del catalogo de ROLES que existan en la tabla ejemplo

select * from catalogo.ROL
order by descripcion
--UPDATE catalogo.ROL
--SET descripcion='LIDER DE PROYECTO'
--WHERE id_rol=18

select distinct puesto from empleadosEjemplo

select * from catalogo.ROL as R
where  exists (select distinct puesto from empleadosEjemplo as E
                where R.descripcion=E.puesto  ) 


select * from proyecto.EMPLEADO_PROYECTO
select nombre, paterno, materno, descripcion as rol, id_proyecto
from trabajador.PERSONAL pe
inner join proyecto.empleado_proyecto ep on pe.id_personal=ep.id_personal
inner join catalogo.ROL r on ep.id_rol=r.id_rol
where id_proyecto=6



--17. Cantidad de empleados que son de confianza
SELECT COUNT(clave)
FROM empleadosEjemplo

SELECT COUNT(clave)
FROM empleadosEjemplo
WHERE tipo='C';

SELECT COUNT(aguinaldo)
FROM empleadosEjemplo


--18. Monto total pagado
select sum(sueldo) from empleadosEjemplo



--6/11/2025


-- 19. OBTENER LA CANTIDAD TOTAL DE AGUINALDO PAGADO A LOS EMPLEADOS DE HONORARIOS
select sum(aguinaldo) as sumaAguinaldo
from empleadosEjemplo
WHERE tipo='h'



--20. El sueldo m�ximo pagado a un empleado.
SELECT MAX(sueldo) as MaximoSueldo
FROM empleadosEjemplo ;



--21. Sueldo promedio de los empleados
SELECT AVG(sueldo) as promedioSueldo
FROM empleadosEjemplo ;



--22. Monto que se paga a los empleados que no tuvieron aguinaldo
select sum(sueldo) as montoPagado
from empleadosEjemplo
where aguinaldo is not null


--23. Cantidad de empleados que recibieron aguinaldo, total de los sueldos, as� como el sueldo promedio de todos los empleados
SELECT COUNT(aguinaldo) AS 'CON AGUINALDO', 
		SUM(SUELDO) as totalSueldo, 
		AVG(sueldo) promedio
FROM empleadosEjemplo ;


--23.a Cantidad de empleados que recibieron aguinaldo, total de los sueldos de dichos empleados, as� como el sueldo promedio de todos los empleados
SELECT COUNT(aguinaldo) AS 'CON AGUINALDO', 
		SUM(SUELDO) as totalSueldo, 
		AVG(sueldo) promedio
FROM empleadosEjemplo
where aguinaldo is not null


--EJEMPLO 24

--Monto total necesario para pagar a los empleados de cada puesto.
select * from empleadosEjemplo

SELECT  SUM(sueldo)
FROM empleadosEjemplo
GROUP BY puesto;


SELECT puesto, SUM(sueldo)  --cada campo en el select que se requiera y no tenga una funci�n de agregaci�n, debe estar en el group by
FROM empleadosEjemplo
GROUP BY puesto;

SELECT claveDepto, puesto, SUM(sueldo)  --cada campo en el select que se requiera y no tenga una funci�n de agregaci�n, debe estar en el group by
FROM empleadosEjemplo
GROUP BY claveDepto, puesto
order by claveDepto, puesto


--EJEMPLO 25 Cuanto se gasta cada puesto en sueldo y aguinaldo

SELECT puesto, SUM(sueldo) AS 'SUMA SUELDO', SUM(aguinaldo) AS 'SUMA AGUINALDO'
FROM empleadosEjemplo
GROUP BY puesto
order by puesto


--EJEMPLO 26: Obtener el monto total de aguinaldo otorgado por puesto, pero solo de aquellos puestos con aguinaldo mayor a 150,000
select puesto, sum(aguinaldo) total
from empleadosEjemplo
group by puesto
having sum(aguinaldo)>150000   -- cuando hay una condici�n sobre el grupo se utiliza having




--EJEMPLO 27. Genere una sentencia que muestre el total del aguinaldo proporcionado a los empleados tester clasificados en base al tipo de empleado

select tipo, puesto, sum(aguinaldo) as totalAguinaldo
from empleadosEjemplo
group by tipo, puesto
having puesto='TESTER'
