
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
where ciudad!='CIUDAD DE MEXICO' and aguinaldo is null

--EJEMPLO 3. Obtener a todos los empleados cuyo apellido paterno este entre BAENA y FLORES

SELECT * FROM empleadosEjemplo
order by paterno

SELECT * FROM empleadosEjemplo
where paterno between 'BAENA' and 'FLORES'
order by paterno

--Ejemplo Rango 4: Obtenga el nombre de los empleados, sueldo, el puesto y ciudad de aquellos que tienen un salario --entre 12000 y 28000
select * from  empleadosEjemplo

SELECT nombre+' '+paterno+' '+isnull(materno, '-SIN APELLIDO MATERNO-') as nombreEmpleado, sueldo, puesto, ciudad 
FROM empleadosEjemplo
WHERE sueldo >=12000 AND  sueldo<=28000


SELECT nombre+' '+paterno+' '+materno as nombreEmpleado, sueldo, puesto, ciudad 
FROM empleadosEjemplo
WHERE sueldo >=12000 AND  sueldo<=28000



--Ejemplo 5:  Nombre de los empleados, sueldo y el puesto de aquellos que ganan 2975, 35000 o 28000.

Select  nombre+' '+paterno+' '+isnull(materno, '-') as nombreEmp, sueldo, puesto 
from empleadosEjemplo
where sueldo in (2975, 35000, 28000) 
order by puesto, sueldo desc



--Ejemplo 6:  Liste la clave y nombre del empleado, de aquellos cuyo nombre inicie con la letra D

SELECT clave, nombre+' '+paterno+' '+isnull (materno, '-') as nombre
FROM empleadosEjemplo
WHERE nombre LIKE 'D%';



--Ejemplo 7: Muestre todos los datos de los empleados donde en la tercera posici�n de su apellido paterno 
--tengan una letra A.

SELECT clave, nombre, paterno, materno
FROM empleadosEjemplo
WHERE paterno LIKE '___A%';

SELECT clave, nombre, paterno, materno
FROM empleadosEjemplo
WHERE paterno LIKE '%B%';

---HASTA AQUI 31/10/2025

--EJEMPLO 8:  Muestre la clave, nombre y sueldo de los empleados sin apellido materno.

SELECT clave, nombre, paterno, materno, sueldo
FROM  empleadosEjemplo
WHERE materno IS  NULL;


--EJEMPLO 9: Liste el nombre de los empleados que son de honorarios y l�der de proyecto o su sueldo es mayor o igual a $35000

SELECT nombre+' '+paterno+' '+isnull(materno, '-') as nombreEmp, puesto, sueldo, tipo as 'TIPO EMPLEADO'
FROM empleadosEjemplo 
WHERE TIPO='H' AND (sueldo >= 35000 or puesto='LIDER DE PROYECTO')

--De la consulta anterior para el tipo muestre Horarios y Confianza no H o C (CASE)

SELECT nombre+' '+paterno+' '+isnull(materno, '-') as nombreEmp, puesto, sueldo,
(case 
	When tipo='H' then 'HONORARIOS'
    WHEN TIPO='C' then 'CONFIANZA'
	else 'SIN ESPECIFICAR'
 end) as 'TIPO EMPLEADO'
FROM empleadosEjemplo 
WHERE TIPO='H' AND (sueldo >= 35000 or puesto='LIDER DE PROYECTO')
order by sueldo

--Ejemplo 10. Nombre de los empleados ordenados alfab�ticamente en forma descendente.


SELECT paterno, materno, nombre
FROM empleadosEjemplo 
ORDER BY paterno DESC, materno desc, nombre desc;



--Ejemplo 11 Obtenga nombre completo en un solo campo, puesto, sueldo y tipo de empleado ordenados por sueldo de mayor de menor y puesto en orden alfab�tico de manera descendiente

SELECT nombre+' '+paterno+' '+isnull(materno, '-') as nombreEmp, puesto, sueldo,
(case 
	When tipo='H' then 'HONORARIOS'
    WHEN TIPO='C' then 'CONFIANZA'
 end) as 'TIPO EMPLEADO'
FROM empleadosEjemplo 
order by sueldo desc, puesto desc


--Ejemplo 11. Obtener la lista de los puestos sin repeticiones


SELECT DISTINCT puesto
FROM empleadosEjemplo;


--Ejemplo 12. Obtener la lista de ciudades de donde habitan los empleados

SELECT DISTINCT ciudad
FROM empleadosEjemplo;

--Ejemplo 13 Obtener para cada empleado el total ganado (sueldo + aguinaldo), solo de aquellos 
--empleados con valores distintos de NULL


--sin titulo
select paterno, materno, nombre, sueldo+aguinaldo 
from empleadosEjemplo
where sueldo is not null and aguinaldo is not null

--con titulo
select paterno, materno, nombre, sueldo+aguinaldo 'total ganado'
from empleadosEjemplo
where sueldo is not null and aguinaldo is not null

--EJEMPLO 14 SOME  ANY

SELECT * FROM empleadosEjemplo
WHERE SUELDO < ALL  (SELECT SUELDO FROM catalogo.puesto)

SELECT * FROM empleadosEjemplo
WHERE AGUINALDO < SOME  (SELECT SUELDO FROM catalogo.puesto)

SELECT * FROM empleadosEjemplo
WHERE AGUINALDO < ANY  (SELECT SUELDO FROM catalogo.puesto)

--Ejemplo 15:  IF

IF 15000 <=  ANY(SELECT SUELDO FROM empleadosEjemplo)
	print('Los salarios de algunos empleados son iguales o superiores a $15,000');
else
	print('Los salarios de algunos empleados son menores a $15,000');

	IF 15000 <=  all(SELECT SUELDO FROM empleadosEjemplo)
	print('Los salarios de algunos empleados son iguales o superiores a $15,000');
else
	print('Los salarios de algunos empleados son menores a $15,000');



--EXISTS
-- 

SELECT columns
FROM table1
WHERE EXISTS (SELECT columns FROM table2);

--Ejemplo. 16 Obtenga todos los ROLES del catalogo de ROLES que existan en la tabla ejemplo
select * from catalogo.ROL

--UPDATE catalogo.ROL
--SET descripcion='LIDER DE PROYECTO'
--WHERE id_rol=18

select distinct puesto from empleadosEjemplo

select * from catalogo.ROL R
where  exists (select distinct puesto from empleadosEjemplo e
                where R.descripcion=e.puesto  ) 

select * from proyecto.EMPLEADO_PROYECTO
select nombre, paterno, materno, descripcion as rol, id_proyecto
from trabajador.PERSONAL pe
inner join proyecto.empleado_proyecto ep on pe.id_personal=ep.id_personal
inner join catalogo.ROL r on ep.id_rol=r.id_rol
where id_proyecto=6



--17. Cantidad de empleados que son de confianza
SELECT COUNT(clave)
FROM empleadosEjemplo
WHERE tipo='C';

--18. Monto total pagado
select sum(sueldo) from empleadosEjemplo

--19. El sueldo m�ximo pagado a un empleado.
SELECT MAX(sueldo)
FROM empleadosEjemplo ;

--20. Sueldo promedio de los empleados
SELECT AVG(sueldo)
FROM empleadosEjemplo ;

--21. Monto que se paga a los empleados que no tuvieron aguinaldo
select sum(sueldo) from empleadosEjemplo
where aguinaldo is not null

--22. Cantidad de empleados que recibieron aguinaldo, total de los sueldos de dichos empleados, as� como el sueldo promedio
SELECT COUNT(aguinaldo) AS 'CON AGUINALDO', SUM(SUELDO) as totalSueldo, AVG(sueldo) promedio
FROM empleadosEjemplo ;


--EJEMPLO 23, 24
--Monto total necesario para pagar a los empleados de cada puesto.
SELECT puesto, SUM(sueldo)
FROM empleadosEjemplo
GROUP BY puesto;

--EJEMPLO 24 Cuanto se gasta cada puesto en sueldo y aguinaldo
SELECT puesto, SUM(aguinaldo) AS 'SUMA AGUINALDO', SUM(sueldo) AS 'SUMA SUELDO'
FROM empleadosEjemplo
GROUP BY puesto;


--EJEMPLO 27: Obtener el monto total de aguinaldo otorgado por puesto con aguinaldo mayor de 150000
select puesto, sum(aguinaldo) total
from empleadosEjemplo
group by puesto
having sum(aguinaldo)>150000

--EJEMPLO 26. Genere una sentencia que muestre el total del aguinaldo proporcionado a los empleados tester clasificados en base al tipo de empleado
select tipo, puesto, sum(aguinaldo)
from empleadosEjemplo
group by tipo, puesto
having puesto='TESTER'