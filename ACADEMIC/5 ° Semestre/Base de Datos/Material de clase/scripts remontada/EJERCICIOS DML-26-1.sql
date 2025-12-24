
/**************************************************************************
----------------    LENGUAJE DE MANIPULACIÓN DE DATOS
****************************************************************************/

/*
Autor: MARTHA LOPEZ PELCASTRE
Fecha: 21/10/2025
Descripción: Ejercicios con sentencias DML
semestre: 2026-1

*/



--ABRIMOS LA BASE DE DATOS

use DBUNIVERSIDAD2_89000546
go


--1. Inserte 5 registros en la tabla nivel con encabeados

EXECUTE sp_help [catalogo.nivel]  -- TIENE IDENTITY


BEGIN TRANSACTION

	insert into catalogo.nivel (descripcion, vigente, sueldo)
	values ('ASOCIADO A',1, 84000),  --marca error por qué?
	       ('TITULAR',1, 44000),
		   ('ASISTENTE',1, 26000),
		   ('DE TIEMPO COMPLETO',1, 65000),
		   ('ASOCIADO B',1, 35600),
		   ('TITULAR C',1, 54000),
		   ('ASISTENTE B',1, 28300);

	select * from catalogo.nivel

ROLLBACK TRANSACTION
--COMMIT TRAN


select * from catalogo.NIVEL


------------------------------------

-- 2. Inserta 5 registros en la tabla parentesco con encabezado



exec sp_help [catalogo.parentesco]  -- NO TIENE  IDENTITY


--- Uso de secuencias


CREATE SEQUENCE  catalogo.secParentesco
 AS INT
 START WITH 1  INCREMENT BY 1

 --llamando a la secuencia

SELECT NEXT VALUE FOR catalogo.secParentesco;  

SELECT NEXT VALUE FOR catalogo.secParentesco;  


-- reiniciar la secuencia
ALTER SEQUENCE catalogo.secParentesco RESTART WITH 1 ;  


--insertando 3 registros más utilizando la secuencia

insert into catalogo.parentesco 
		(id_parentesco, denominacion, vigente)
 VALUES (NEXT VALUE FOR catalogo.secParentesco,'ESPOSO (A)',1),
		(NEXT VALUE FOR catalogo.secParentesco,'HIJO (A)',1),
		(NEXT VALUE FOR catalogo.secParentesco,'MADRE',1);


--utilizando funcion max()
select max(id_parentesco) from catalogo.parentesco

select max(id_parentesco)+1 from catalogo.parentesco

 INSERT INTO catalogo.parentesco   --Los valores deben ir en orden
 select max(id_parentesco)+1 as llave, 'PADRE' as denominacio, 1 as vigente
 from catalogo.parentesco
 
  INSERT INTO catalogo.parentesco   --Los valores deben ir en orden
 select max(id_parentesco)+1 as llave, 'ABUELO (A)' as denominacio, 1 as vigente
 from catalogo.parentesco

  INSERT INTO catalogo.parentesco   --Los valores deben ir en orden
 select max(id_parentesco)+1 as llave, 'TIO (A)' as denominacio, 1 as vigente
 from catalogo.parentesco


select * from catalogo.parentesco



------------------------------------------------------------------------------------------------------
---3.   Insertar 6 registros en la tabla empleado 3 becarios y 3 investigadores, sin encabezados
-----------------------------------------------------------------------------------------------------


execute sp_help[trabajador.personal]  -- si tiene identity

	insert into trabajador.personal values
	( 'MIGUEL','ESTRELLA', 'RICO', 'LANH920113D3N','I', '05-12-2022',5569623695, '11-22-1980', 2)  

	select * from TRABAJADOR.personal

	insert into trabajador.personal values
	('DANIEL','AVALOS', 'RUIZ', 'AANH920113D38','I',  '11-21-2019', 5548769578, '03-26-1980', 1)  

	select * from TRABAJADOR.personal

	--REVISAR 
	insert into trabajador.personal values
	('SUSANA','ZABALETA', NULL, 'ZANH920113D21','Q',  '09-15-2020', 555269874, '03-09-1983', 4)


  -- analizar posibles errores anotarlos y corregir
begin tran
	insert into trabajador.PERSONAL values
	('ISAAC','FLORES', 'JUAREZ', 'ISDF850423NHR',  'B',  '11-21-2019', 5548769578, '03-26-1980', NULL),  
	('CESAR','AGRUILAR', 'COLIN', 'UJIO891123JUY', 'B',  '04-16-2018', 5548769578, '04-23-1989', 3),        
	('XIMENA','ALCANTARA', 'MARROQUIN', 'SEDF800512KIU',  'B',  '02-26-2019', 5548769578, '02-26-1986', 4),   
	('ALEJANDRA','BAENA', 'AGUIRRE', 'IJUY880727K87',  'B',  '09-01-2018', 5548769578, '09-14-1990', 1),   
	( 'DIEGO','HERNANDEZ', 'BARRON', 'DGTH851128Y7U',  'I',  '07-15-2018', 5548769578, '07-27-1994', NULL)     
 
 commit transaction

-- rollback transaction

   select * from trabajador.PERSONAL

 select * from trabajador.PERSONAL order by tipoPersonal desc

 --4. Poblar el catalogo de carreras

 insert into catalogo.CARRERA 
 values (1, 'INGENIERO EN COMPUTACIÓN'),
		(2, 'LICENCIADO EN SISTEMAS'),
		(3, 'INGENIERO EN CIENCIAS DE LA COMPUTACIÓN'),
		(4, 'LIC EN SISTEMAS DE INFORMACIÓN');



 --5. LOS EMPLEADOS CON RFC SIGUIENTES SON becarios: ISDF850423NHR, DGTH851128Y7U, UJIO891123JUY
 --registrelos en la tabla correspondiente

 --** PRIMERO DEBE EXISTIR LAS CARRERAS
 ---obtenemos primero la llave primaria ya que es heredada

 select * from trabajador.PERSONAL
 where rfc='ISDF850423NHR'

  select * from trabajador.PERSONAL
 where rfc='DGTH851128Y7U'

  select * from trabajador.PERSONAL
 where rfc in ('UJIO891123JUY', 'ISDF850423NHR','DGTH851128Y7U' )


SELECT * FROM trabajador.BECARIO

--Es importante revisar las fks a insertar 

 insert into trabajador.BECARIO (id_personal, id_coordinador, id_investigador_responsable, semestre, numCreditos, fechaTermino, id_carrera)
 values (5, NULL, 2, 8, 420, '11-20-2025', 1 ), --ES COORDINADOR POR LO TANTO EL CAMPO ID_COORDINADOR ES NULL
		(6, 5, 2, 8, 455, '12-16-2025', 1 ),
		(8, 5, 2, 8, 436, '10-30-2025', 1 );

  --6.  LOS EMPLEADOS, DIEGO, DANIEL Y SUSANA SON INVESTIGADORES
     
select * from trabajador.PERSONAL
 where nombre='DIEGO'

 select * from trabajador.PERSONAL
 where nombre='DANIEL'

 select * from trabajador.PERSONAL
 where nombre='SUSANA'
	 
SELECT * FROM trabajador.INVESTIGADOR

-- OBTENEMOS LOS NIVELES
SELECT * FROM catalogo.NIVEL


--DIEGO, DANIEL, SUSANA
  insert into trabajador.INVESTIGADOR (id_personal,  doctorado, tipo_contrato, id_nivel_actual, fecha_nivel_actual, correo)
  values (1, 0, 9, 1, '01/11/2024', 'difg45@gmail.com' ),
		(2, 1, 9, 1, '01/01/2025', 'danyboy23@gmail.com' ),
		(4, 1, 12, 1, '15/10/2024', 'susi25418@yahoo.com' );

	
SELECT * FROM trabajador.INVESTIGADOR



-- 7. Inserte para los empleados con id 1 al 6  su domicilio


exec sp_help[trabajador.domicilio]
select * from trabajador.domicilio


-- la pk es la llave foranea id_personal
begin tran
	insert into trabajador.domicilio (id_personal, calle, numero, colonia, alcaldia, CP)
	 values
	(1,'MANZANAS', 67, 'CARRILLO', 'COYOACAN', '02574'),
	(2,'CALLE 10', 345, 'JUAREZ', 'TLALPAN','52369'),
	(3,'MIGUEL DOMINGUEZ', 876, 'EL ROSEDAL','BENITO JUAREZ', '36250'),
	(4,'JUAN ES CUTIA', 546, 'MORA', 'COYOACAN', '02136'),
	(5,'TECNICOS', 1009, 'EL ROSELDAL', 'IZTAPALA', '23145'),
	(6, 67, 'CARRILLO','P', 'IZTACALCO','02689');

	select * from trabajador.domicilio

rollback tran
--commit tran 


--verificando

select * from TRABAJADOR.DOMICILIO


--8. Realizar un update
 -- Los empleados con id menor o igual a 4 son de la alcaldía coyoacan

select * from trabajador.domicilio

-- verificando la condición que pondremos en el update
select * from trabajador.domicilio
where id_personal<=4 

-- sustituyendo las condiciones en la instrucción update()

update trabajador.domicilio
set alcaldia='COYOACAN'
where id_personal<=4


-- 9. Registre 6  empleados con encabezados, 2 INVESTIGADORES DE TIEMPO COMPLETO, 2 TITULARES 
--Y 2 BECARIOS QUE ESTUDIAN LIC EN SISTEMAS (uno coordinador del otro)


select * from trabajador.PERSONAL
select * from catalogo.CARRERA
where nom_carrera='LICENCIADO EN SISTEMAS' --3

select * from catalogo.NIVEL  -- obtener las claves de los niveles solicitados


--revisar y en su caso sustituir en la sentencia insert con los id correspondientes a su base de datos

-- revisando la estructura de la tabla
exec sp_help[trabajador.personal]

begin tran

	insert into trabajador.PERSONAL (nombre, paterno, materno, RFC, tipoPersonal, numHijos, fechaNacimiento,  telefono, fechaIngreso )
	values
	('SONIA','ESTRELLA', 'RICOS', 'SOER920113D3N', 'I',   3, '1992-06-12', 5523669875, '2002-06-12' ), --,  7
	('LUIS','AVALOS', 'COLIN', 'LUAC920113D3N', 'I',    3, '1988-07-12', 5548778541, '2008-07-12'), --,   7
	('MARCOS','AGRUILAR', 'COLIN', 'MAAC891123JUY', 'I',   3, '1989-03-23', 5523652366,'2010-03-23' ), --,  5
	('SOFIA','ALCANTARA', 'AGUIRRE', 'SOAA800512KIU', 'I',  2, '1986-06-26', 5236547896, '2015-06-26'), --,  5
	('AURORA','BAENA', 'AGUIRRE', 'AUBA880727K87', 'B',   NULL, '1999-05-14', 4752152368, '2025-05-14'),--'aurora74@gmail.com',   3
	('PEDRO','HERNANDEZ', 'JUAREZ', 'PEHJ851128Y7U', 'B',    NULL, '1999-02-27', 6985321458, '2025-02-27' ) --'juarezph5@gmail.com',  3

commit tran


select * from trabajador.PERSONAL
select * from trabajador.INVESTIGADOR



--10.  SONIA, LUIS, MARCOS y SOFIA son investigadores  y el resto BECARIOS

select * from trabajador.PERSONAL
where nombre in ('SONIA','LUIS','MARCOS', 'SOFIA')

--OBTENER SU LLAVE PRIMARIA


-- OBTENEMOS LOS NIVELES
SELECT * FROM catalogo.NIVEL


--2 INVESTIGADORES DE TIEMPO COMPLETO, 2 TITULARES  
  insert into trabajador.INVESTIGADOR (id_personal,  doctorado, tipo_contrato, id_nivel_actual, fecha_nivel_actual, correo)
  values (1, 0, 9, 1, '01/05/2025', 'soñaer@yahoo.com' ),
		(2, 1, 6, 2, '01/03/2025', 'luisac@gmail.com' ),
		(4, 1, 6, 3, '15/06/2025', 'marcosac@gmail.com'),
		(4, 1, 12, 4, '15/12/2024', 'alsofy45@gmail.com');

SELECT * FROM trabajador.INVESTIGADOR


--OBTENER LA LLAVE PRIMARIA, 2 BECARIOS QUE ESTUDIAN LIC EN SISTEMAS (uno coordinador del otro) 

 insert into trabajador.BECARIO (id_personal, id_coordinador, id_investigador_responsable, semestre, numCreditos, fechaTermino, id_carrera)
 values (5, NULL, 2, 9, 390, '11-20-2025', 2 ), --ES COORDINADOR POR LO TANTO EL CAMPO ID_COORDINADOR ES NULL
		(6, 5, 2, 10, 433, '12-16-2025', 3 ); -- EL BECARIO ANTERIOR ES SU COORDINADOR

SELECT * FROM trabajador.BECARIO  --6 registros



--11. Registre los siguientes 5 proyectos en una transacción

execute sp_help [proyecto.proyecto]


begin tran  --valdidando las columnas obligatorias

	insert into proyecto.proyecto ( nombre, fechainicio, fechafin, costo, id_investigador_responsable, duracion, adeudo, estatus)
	values ('CONTROL DE INVENTARIOS', '01-21-2020', '2020-08-30', 150000.00, 1, 14,80000, 'D'),
	('CONTROL DE GESTION', '01-15-2020', '10-30-2020', 400000.00, 2, 18, 150000, 'EC'),
	('PAGOS Y NOMINA','03-20-2020', NULL, 550000.00, 3, 12, 255000, 'D'),
	('REGISTRO DE ASISTENCIAS', '02-16-2020', '09-15-2020', 380000.00, 4,19, 205000, 'EC'),
	('REGISTRO DE VIATICOS', '04-18-2020', NULL, 600000.00, 5,18, 450000, 'T')

	select * from proyecto.proyecto


commit tran

exec sp_help[nomina.reciboPago]  -- TIENE IDENTITY

DBCC CHECKIDENT ('proyecto.proyecto', NORESEED);
GO 


DBCC CHECKIDENT ('proyecto.proyecto', RESEED,15);
go



--12. Insertar 3 pagos para cada proyecto

insert into proyecto.PAGOS (id_proyecto, id_pago, fecha, monto)
Select id_proyecto, 1, 10-01-2025, costo*0.15
from proyecto.PROYECTO

insert into proyecto.PAGOS (id_proyecto, id_pago, fecha, monto)
Select id_proyecto, 2, 12-12-2024, costo*0.13
from proyecto.PROYECTO

insert into proyecto.PAGOS (id_proyecto, id_pago, fecha, monto)
Select top 80 percent  id_proyecto, 3, 08-10-2024, costo*0.5
from proyecto.PROYECTO

Select top 60 percent  id_proyecto, 4, 05-05-2025, costo*0.8
from proyecto.PROYECTO



-- 13. Insertar roles

insert into catalogo.rol
values ('ANALISTA', 1),
('PROGRAMADOR DE BD', 1),
('DESARROLLADOR FRONTEND', 1),
('DESARROLLADOR FULLSTACK', 1),
('DISEÑADOR DE BD', 1),
('LIDER', 1);


SELECT * FROM catalogo.ROL

--14. Registre para cada proyecto 2 investigadores y 3 becarios

select * from proyecto.PROYECTO
select * from trabajador.investigador
select * from trabajador.becario

-- Proyecto  'CONTROL DE INVENTARIOS'

insert into proyecto.EMPLEADO_PROYECTO (id_proyecto, id_personal, numHoras, id_rol)
values (1, 2, 40, 4),
(1, 2, 25, 6),
(1, 2, 36, 8),
(1, 2, 70, 10),
(1, 2, 45, 12);

--	Proyecto 'CONTROL DE GESTION'
insert into proyecto.EMPLEADO_PROYECTO (id_proyecto, id_personal, numHoras, id_rol)
values (1, 2, 40, 4),
(1, 2,26, 6),
(1, 2, 38, 8),
(1, 2, 40, 10),
(1, 2, 60, 12);

--	Proyecto 'PAGOS Y NOMINA'
insert into proyecto.EMPLEADO_PROYECTO (id_proyecto, id_personal, numHoras, id_rol)
values (1, 2, 40, 8),
(1, 2, 40, 10),
(1, 2, 60, 12),
(1, 2, 70, 14),
(1, 2, 50, 16);

--	Proyecto 'REGISTRO DE ASISTENCIAS'
insert into proyecto.EMPLEADO_PROYECTO (id_proyecto, id_personal, numHoras, id_rol)
values (1, 2, 26, 18),
(1, 2, 75, 16),
(1, 2, 80, 14),
(1, 2, 95, 12),
(1, 2, 77, 10);

--	Proyecto 'REGISTRO DE VIATICOS'
insert into proyecto.EMPLEADO_PROYECTO (id_proyecto, id_personal, numHoras, id_rol)
values (1, 2, 32, 8),
(1, 2, 56, 6),
(1, 2, 42, 4),
(1, 2, 33, 6),
(1, 2, 60, 8);







-- 15. Inserte para cada empleado al menos 2 niveles utilice fechas posteriores al 01/01/2010
select * from catalogo.NIVEL;

select * from trabajador.INVESTIGADOR;

exec sp_help [trabajador.historico_nivel]  --NO ES IDENTITY

insert into trabajador.HISTORICO_NIVEL( id_personal, fechaInicio, fechaFin, id_nivel)
values
	(3,'03-01-2013','03-01-2020',1),
	(3,'03-01-2020','03-01-2022',2),
	(4,'01-02-2015','01-02-2019',3),
	(4,'01-02-2020','03-02-2023',4),
	(2,'01-15-2014','01-15-2018',5),
	(2,'01-15-2018','01-15-2024',5),
	(6,'01-30-2013','01-30-2016',6),
	(6,'01-30-2016','01-30-2022',4),
	(5,'01-31-2013','01-31-2016',3),
	(5,'01-31-2020','01-31-2024',2);


select * from trabajador.HISTORICO_NIVEL
go



-- 16. Muestre los datos que contiene la tabla empleado, ordene por el paterno de forma descendiente

select * from trabajador.PERSONAL order by  tipoPersonal, fechaIngreso desc; --observe que el primer registro es de RUIZ y el último AGUILAR
go

-- 17.  Borre el empleado con RFC='KAML920113D3N' y verifique el borrado en cascada
 

 -- PRIMERO INSERTAMOS EL REGISTGRO
	insert into trabajador.PERSONAL (nombre, paterno, materno, RFC, tipoPersonal, numHijos, fechaNacimiento,  telefono, fechaIngreso )
	values
	('KARLA','MORALES', 'LOPEZ', 'KAML920113D3N', 'B', NULL, '01-31-2020', 557485632514, '01-31-2025' )

	insert into trabajador.domicilio (id_personal, calle, numero, colonia, alcaldia, CP)
	 values
	((SELECT MAX(ID_PERSONAL) FROM trabajador.PERSONAL),'MANZANAS', 67, 'CARRILLO', 'COYOACAN', '02574');


 --Consultando
	select * from trabajador.PERSONAL where RFC='KAML920113D3N'
	
	select * from trabajador.domicilio
	where id_personal = (select id_personal from trabajador.PERSONAL where RFC='KAML920113D3N')



--Se borrará el registro CON RFC='KAML920113D3N'
begin tran 
	select * from trabajador.PERSONAL where RFC='KAML920113D3N'
	select * from trabajador.domicilio 
	where id_personal=(select id_personal from trabajador.PERSONAL where RFC='KAML920113D3N')   
	
	DELETE FROM trabajador.PERSONAL 
	WHERE id_personal=(select id_personal from trabajador.PERSONAL where rfc='KAML920113D3N')
		
	--comprobar
	print 'consultando empleado con RFC=KAML920113D3N' -- aparece en el apartado de messages no en results
	select 'consultando empleado con RFC=KAML920113D3N' -- aparece en el apartado de messages no en results

	select * from trabajador.PERSONAL where RFC='KAML920113D3N'
	select * from trabajador.domicilio 
	where id_personal=(select id_personal from trabajador.PERSONAL where RFC='KAML920113D3N')   

ROLLBACK tran

select * from trabajador.PERSONAL
go


/*
--TAREA 

1. INSERTAR LAS TARJETAS DE LOS INVESTIGADORES

2. INSERTAR PARA 3 BECARIOS COMO BENEFICIARIOS A SU PAPÁS

3. INSERTAR PARA 4 INVESTIGADORES A SU ESPOSA Y UN HIJO COMO BENEFICIARIOS

*/

