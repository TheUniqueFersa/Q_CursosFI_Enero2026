/*


---- CREACION DE TABLA EJEMPLO
SEMESTRE 25-2

*/


-- ABRIR SU BASE DE DATOS
use [DBUNIVERSIDAD2_89000546]
go

-- CREAR  TABLA EJEMPLO
create table empleadosEjemplo
 (
 clave int identity primary key,
 paterno varchar(30) not null,
 materno varchar(30)  null,
 nombre varchar(30) not null,
 sueldo money,
 claveDepto smallint,
 tipo varchar(40),
 puesto varchar(80),
 aguinaldo money,
 ciudad varchar(40)
 
 )
 
 -- insertamos en nuestra  tabla de emplos

 insert into empleadosEjemplo (paterno, materno, nombre) 
 select paterno, materno, nombre from trabajador.PERSONAL
 
 select * from empleadosEjemplo

  UPDATE empleadosEjemplo
 SET aguinaldo= 73000
 WHERE CLAVE  IN (10, 15, 5);


 UPDATE empleadosEjemplo
 SET aguinaldo= 65000
 WHERE CLAVE not IN (10, 15, 5) and aguinaldo is  null;


 update empleadosEjemplo
 set sueldo=35000
 where clave<=7;

  update empleadosEjemplo
 set sueldo=25000
 where clave<=12 and clave>7;

update empleadosEjemplo
 set sueldo=28000
 where  clave>12;

 update empleadosEjemplo
 set ciudad='TORREON'
 where clave in (1,3,5,7);

  update empleadosEjemplo
 set ciudad='JUAREZ'
 where clave in (2,6,8);

  update empleadosEjemplo
 set ciudad='JALISCO'
 where clave in (9,10,11,12);

 update empleadosEjemplo
 set ciudad='CIUDAD DE MEXICO'
 where clave in (4, 13,14);

--PUESTOS
update empleadosEjemplo
set puesto='DISEÑADOR'
WHERE clave in (1,4);

update empleadosEjemplo
set puesto='ANALISTA'
WHERE clave in (8,10);


update empleadosEjemplo
set puesto='DBA'
WHERE clave in (2,3);

update empleadosEjemplo
set puesto='TESTER'
WHERE clave in (5,6,7);

update empleadosEjemplo
set puesto='DESARROLLADOR'
WHERE clave in (10,9,11);

update empleadosEjemplo
set puesto='LIDER DE PROYECTO'
WHERE clave=12;

update empleadosEjemplo
set puesto='ANALISTA DB'
WHERE clave in (13,14);

select * from empleadosEjemplo

--- TIPO DE EMPLEADO

update empleadosEjemplo
set tipo='C'
where clave in (1,3,5,7,9,11,13)

update empleadosEjemplo
set tipo='H'
where clave in (2,4,6,8,10,12,14)

select * from empleadosEjemplo

-- DEPARTAMENTO

update empleadosEjemplo
set claveDepto=25
where clave in (10,7)

update empleadosEjemplo
set claveDepto=13
where clave in (1,4,8,11,12)

update empleadosEjemplo
set claveDepto=123
where clave in (2,3,5)

update empleadosEjemplo
set claveDepto=123
where clave in (6,9,13)

select * from empleadosEjemplo

UPDATE empleadosEjemplo
SET PATERNO='AVALOS'
WHERE Materno='AGUIRRE' AND nombre='SOFIA'

UPDATE empleadosEjemplo
SET ciudad='CHETUMAL'
WHERE clave in (14,15,16,17)

UPDATE empleadosEjemplo
SET aguinaldo=NULL
WHERE clave in (14,15,16,17)

UPDATE empleadosEjemplo
SET sueldo=14000
WHERE clave=15

SELECT * FROM empleadosEjemplo

