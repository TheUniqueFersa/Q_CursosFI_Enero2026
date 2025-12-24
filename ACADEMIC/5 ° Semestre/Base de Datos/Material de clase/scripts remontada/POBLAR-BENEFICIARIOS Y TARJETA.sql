
----28/10/2025

--21. Registre 3 beneficiarios para los empleados con fecha de nacimiento menor o igual a 31 de diciembre de 1989

	--obteniendo los id de los empleados con esa condición y son empleados de confianza ya que de ellos son los dependientes de acuerdo al modelo de la base de datos
	select * from TRABAJADOR.PERSONAL
	where fechaNacimiento<='1989/12/31' --22,3,4,5,6,7,1,12,13,
	
	

	SELECT * FROM catalogo.parentesco --1,2,3,4,5,6
	
	execute sp_help [trabajador.beneficiario] --identity

	--esposa  --id 1
	 insert into trabajador.BENEFICIARIO(  nombre, paterno, fechaNacimiento, edad, id_parentesco, id_personal)
	values
	('Dayna', 'Suarez', '1989-12-31', 28,1, 2),
	( 'Yarelly', 'Guzman', '1969-11-21', 30, 1, 3),
	('Don', 'Dimadon', '1950-09-05', 29, 1, 5)
	
	SELECT * FROM trabajador.BENEFICIARIO

	
	--madre id 3
	insert into trabajador.BENEFICIARIO(  nombre, paterno, fechaNacimiento, edad, id_parentesco, id_personal)
	values
	('SUSANA', 'FLORES', '1963-12-31', 64,3, 13),
	( 'JULITA', 'AVALOS', '1961-11-21', 65, 3, 3),
	('MAXIMO', 'COLIN', '1959-09-05', 66, 3, 5)
	
	SELECT * FROM trabajador.BENEFICIARIO

	--HIJO  --id 2
	 insert into trabajador.BENEFICIARIO(  nombre, paterno, materno, fechaNacimiento, edad, id_parentesco, id_personal)
	values
	('LUIS', 'RICO', 'SUAREZ', '2011-12-31', 28,2, 2),
	( 'MARCO', 'RUIZ', 'GUZMAN',  '2008-11-21', 30, 2, 3),
	('JULIO', 'JUAREZ','Dimadon', '2005-09-05', 29, 2, 5)


	insert into trabajador.BENEFICIARIO(  nombre, paterno, materno, fechaNacimiento, edad, id_parentesco, id_personal)
	values
	('SOFIA', 'RICO', 'SUAREZ', '2011-12-31', 14,2, 2),
	( 'MAFER', 'RUIZ', 'GUZMAN',  '2008-11-21', 17, 2, 3),
	('ROMAN', 'JUAREZ','Dimadon', '2005-09-05', 15, 2, 5)


	-- PAPÁS DE BECARIOS  ID 4

	insert into trabajador.BENEFICIARIO(  nombre, paterno, materno, fechaNacimiento, edad, id_parentesco, id_personal)
	values
	('RAMON', 'RICO', 'GONZALEZ', '1960-11-30', 65, 4, 5),
	( 'SAUL', 'RUIZ', 'TAPIA',  '1962-10-21', 63, 4, 6),
	('SERGIO', 'JUAREZ','ZAVALA', '1970-06-18', 55, 4, 7)


	SELECT * FROM trabajador.BENEFICIARIO

-- INSERTANDO TARJETA

 SELECT * FROM TRABAJADOR.INVESTIGADOR  -- ID 3,4,9,10,11,12,13

INSERT INTO trabajador.TARJETA (numTrajeta, banco, id_personal)
SELECT LEFT(NEWID(), 18) AS NUMTARJETA, 'BBVA', 3 ;

INSERT INTO trabajador.TARJETA (numTrajeta, banco, id_personal)
 SELECT (SELECT LEFT(NEWID(), 18) AS NUMTARJETA), 'BBVA', ID_PERSONAL
 FROM trabajador.INVESTIGADOR 
 WHERE id_personal>3 AND id_personal<=9

 INSERT INTO trabajador.TARJETA (numTrajeta, banco, id_personal)
 SELECT (SELECT LEFT(NEWID(), 18) AS NUMTARJETA), 'BANAMEX', ID_PERSONAL
 FROM trabajador.INVESTIGADOR 
 WHERE id_personal>9 AND id_personal<=11

  INSERT INTO trabajador.TARJETA (numTrajeta, banco, id_personal)
 SELECT (SELECT LEFT(NEWID(), 18) AS NUMTARJETA), 'SANTANDER', ID_PERSONAL
 FROM trabajador.INVESTIGADOR 
 WHERE id_personal>12


 SELECT * FROM trabajador.TARJETA

