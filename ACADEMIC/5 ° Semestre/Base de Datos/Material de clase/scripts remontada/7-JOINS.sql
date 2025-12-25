/*

Autor: 
Fecha: 
Descripción: 

26-1
JOINS


*/

USE DBUNIVERSIDAD2_89000546
GO


--Ejemplo 28. Obtener la información de los empleados y sus BENEFICIARIOS económicos (inner)
select * from trabajador.PERSONAL as P
inner join trabajador.BENEFICIARIO B
on P.id_personal=B.id_personal
inner join catalogo.PARENTESCO as PA
on B.id_parentesco=PA.id_parentesco


--Ejemplo 29. Obtener la información de los empleados y en su caso de sus BENEFICIARIOS económicos (left)
select * from trabajador.PERSONAL as P
LEFT join trabajador.BENEFICIARIO B
on P.id_personal=B.id_personal
inner join catalogo.PARENTESCO as PA
on B.id_parentesco=PA.id_parentesco


--Ejemplo 30. Obtener todos los NIVELES y los empleados que los ocupan (right)

select * from trabajador.PERSONAL AS P
JOIN trabajador.INVESTIGADOR AS I ON P.id_personal=I.id_personal
RIGHT JOIN catalogo.NIVEL AS N ON I.id_nivel_actual=N.id_nivel


-- Ejemplo 31 cross join

select *
from trabajador.PERSONAL e
cross join catalogo.PARENTESCO;

--ejemplo 32. Seleccionar el nombre, apellidos y nivel de los empleados que trabajan en el proyecto 7
select nombre, paterno, materno, tipoPersonal, n.descripcion as nivel, r.descripcion as roll, ep.id_proyecto
from trabajador.PERSONAL p
left join trabajador.INVESTIGADOR as i on p.id_personal=i.id_personal
left join catalogo.nivel n on i.id_nivel_actual=n.id_nivel
inner join proyecto.empleado_proyecto ep on p.id_personal=ep.id_personal
inner join catalogo.ROL r on ep.id_rol=r.id_rol
where id_proyecto=7


-- Ejemplo 33. Obtener a los becarios  y de su coordinador  --self join


select 'self join', b.id_personal id_becario, b.id_carrera id_carr_becario, b.id_coordinador coord_becario,
coord.id_coordinador idCoordinador, coord.id_carrera carrCoordinador
from trabajador.BECARIO b 
left join trabajador.BECARIO as coord on b.id_coordinador=coord.id_personal



-- Ejemplo 34 full outer join
select 'full outer join', b.id_personal id_becario, b.id_carrera id_carr_becario, b.id_coordinador coord_becario,
coord.id_coordinador as idCoordinador, coord.id_carrera carrCoordinador, coord.id_personal as becario
from trabajador.BECARIO b 
full outer join trabajador.BECARIO as coord on b.id_coordinador=coord.id_personal
order by b.id_personal


--Ejemplo 35. Obtener los datos de los becarios, su coordinador y el investigador responsable

select  b.id_personal id_becario, b.id_carrera id_carr_becario, b.id_coordinador coord_becario,
coord.id_coordinador idCoordinador, coord.id_carrera carrCoordinador,
b.id_investigador_responsable, id_nivel_actual as nivelnvResponsable
from trabajador.BECARIO b 
left join trabajador.BECARIO as coord on b.id_coordinador=coord.id_personal
join trabajador.INVESTIGADOR as inv on b.id_investigador_responsable=inv.id_personal
