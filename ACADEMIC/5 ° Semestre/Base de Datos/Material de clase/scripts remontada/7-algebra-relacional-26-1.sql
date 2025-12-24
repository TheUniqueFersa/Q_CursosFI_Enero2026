/*

AUTOR: Martha lópez
DESCRIPCION: Algebra relacional
			SEM 26-1
FECHA: 27/10/2025

*/

use DBUNIVERSIDAD2_89000546

select * from trabajador.PERSONAL

-- SELECCION

select * from trabajador.PERSONAL
where tipoPersonal='I'

-- PROYECCION

select paterno, materno, nombre,fechaIngreso 
from trabajador.PERSONAL



-- PROYECCION Y SELECCIÓN

select paterno, materno, nombre, tipoPersonal, fechaIngreso  
from trabajador.PERSONAL
where tipoPersonal='I'

--- UNION

/*
 Se quiere dar un estimulo de  $30,000 a los empleados que ingresaron en  2018
adicionalmente a los epleados becarios. Generar una sentencia sql
que muestre la lista de empleados que tendrá dicho aumento

*/
select paterno, materno, nombre, tipoPersonal, fechaIngreso, fechaNacimiento, 'POR FECHA INGRESO'  AS MOTIVO 
from trabajador.PERSONAL
where fechaIngreso>='01/01/2018' and fechaIngreso<='12/31/2018'
UNION
select paterno, materno, nombre, tipoPersonal, fechaIngreso, fechaNacimiento, 'ES BECARIO'  AS MOTIVO   
from trabajador.PERSONAL
where tipoPersonal='B'
ORDER BY paterno, materno, NOMBRE


-- REGRESA DUPLICADOS

select paterno, materno, nombre, tipoPersonal, fechaIngreso, fechaNacimiento, 'POR FECHA INGRESO'  AS MOTIVO 
from trabajador.PERSONAL
where fechaIngreso>='01/01/2018' and fechaIngreso<='12/31/2018'
UNION ALL
select paterno, materno, nombre, tipoPersonal, fechaIngreso, fechaNacimiento, 'ES BECARIO'  AS MOTIVO   
from trabajador.PERSONAL
where tipoPersonal='B'
ORDER BY paterno, materno, NOMBRE


--INTERSECT

/*

Se requiere un listado de todas las madres beneficiarias, mayores de 60 años
*/
select paterno, materno, nombre, fechaNacimiento
from trabajador.BENEFICIARIO AS B
where B.edad >60
intersect
select paterno, materno, nombre, fechaNacimiento
from trabajador.BENEFICIARIO AS B
where id_parentesco=(SELECT id_parentesco from catalogo.PARENTESCO where denominacion='MADRE')


/*
PRODUCTO CARTESIANO
*/

	SELECT * FROM trabajador.PERSONAL,
	catalogo.PARENTESCO

	SELECT * FROM trabajador.PERSONAL
	CROSS JOIN catalogo.PARENTESCO


/*
JOIN

Obtener a todo el personal con su domiclio

*/

select * from trabajador.PERSONAL p
join trabajador.DOMICILIO d on p.id_personal=d.id_personal









