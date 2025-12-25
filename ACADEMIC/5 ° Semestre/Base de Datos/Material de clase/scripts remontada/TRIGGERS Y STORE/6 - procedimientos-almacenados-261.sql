--------------------------------------------------------------------------------------------------
---------- >>>    PROCEDIMIENTOS ALMACENADOS  >>>>>> ----------------------------------------------
----------------------- 24/11/2024--------------------------------------------------------------


--Sintaxis: 
create procedure procedureName
	(@parameter_name datatype output[, @parameter_name datatype output...] ) 
as 
	sentencias
return

--Borrar
drop nombredelprocedimiento

Actualizar un procedimiento
ALTER PROCEDURE [@param1 , ...]
 
--Para ejecutar el procedimiento
EXECUTE nombreprocedimiento [@param1 , ...]



/*
Un procedimiento almacenado puede:
� Seleccionar y modificar datos 
� Crear tablas temporales y permanentes 
� Llamar otros procedimientos almacenados 
� Referenciar objetos de bases de datos 

Un procedimiento almacenado no puede ejecutar:
� use database 
� create view 
� create default 
� create rule 
� create procedure
� create trigger
*/


--Para permitir que otros usen un procedimiento almacenado, el propietario debe dar los respectivos permisos 

--Sintaxis: 
grant execute on nombreProcedimiento to usu1, usu2, ...


--- procedimientos almacenados

USE [DBUNIVERSIDAD2_89000546]
GO

--- Ejemplo: Creamos un procedimiento almacenado al cual le enviamos 2 n�meros y retorna el promedio
CREATE or alter PROCEDURE pa_promedio
	-- Definimos los par�metros de entrada y salida
	 @n1 decimal(4,2),
	 @n2 decimal(4,2),
	 @resultado decimal(4,2) output
AS
BEGIN
    -- Colocamos las sentencias del procedimiento almacenado
        select @resultado=(@n1+@n2)/2;
END
GO

-- ejecutamos

 declare @promedioSalida decimal(4,2)   --Recibe  @resultado
 
 execute pa_promedio 5,6, @promedioSalida output
 
 select  @promedioSalida as promedio

 print 'El promedio es: ' +cast(@promedioSalida as varchar(30));
 go



use [DBUNIVERSIDAD2_89000546]
go




-- Ejercicio 1.	Crear un procedimiento almacenado que obtenga los empleados que hayan realizado el mayor n�mero 
--de proyectos y calcule un abono para cada uno del 30 % de su sueldo. 
--Muestre nombre completo, sueldo, el abono y el sueldo final. (pro_CalculaAbono)


select * from proyecto.EMPLEADO_PROYECTO
order by id_personal


-- obteniendo el total de proyectos de cada empleado
select id_personal, count(id_proyecto) totalproyecto
from proyecto.EMPLEADO_PROYECTO
group by id_personal
order by totalproyecto desc

go


CREATE or ALTER PROCEDURE trabajador.pu_CalculaAbono
AS
BEGIN
	declare @numProyMax int

	---obteniendo el n�mero m�ximo de proyectos
	set @numProyMax = (select  top 1 count(*) as numProy from proyecto.EMPLEADO_PROYECTO
	group by id_personal order by numProy desc);

	select  @numProyMax AS 'NUM PROYECTOS'
	select e.id_personal, i.id_nivel_actual, nombre, paterno, materno, sueldo, sueldo * 0.30 as abono, sueldo * 1.30 as sueldoFinal 
	from trabajador.PERSONAL as e
	left join trabajador.INVESTIGADOR i on e.id_personal=i.id_personal
	left join catalogo.NIVEL as n ON i.id_nivel_actual = n.id_nivel
	where e.id_personal in (select id_personal from proyecto.EMPLEADO_PROYECTO
	group by id_personal having count(*)=@numProyMax)

END
GO

execute trabajador.pu_CalculaAbono





-- Ejercicio 1.b	Crear un procedimiento almacenado que obtenga los empleados que hayan participado en un proyecto en espec�fico y 
--y calcule un abono para cada uno del 30 % de su sueldo. Pasando como par�metro el nombre del proyecto
--Muestre nombre completo, sueldo, el abono y el sueldo final. (pro_CalculaAbonoProyecto)


select * from proyecto.EMPLEADO_PROYECTO
order by id_proyecto    --proyecto 4 
select * from proyecto.PROYECTO
-- obteniendo el total de proyectos de cada empleado
select id_personal, count(id_proyecto) totalproyecto
from proyecto.EMPLEADO_PROYECTO
group by id_personal
order by totalproyecto desc


go


CREATE or ALTER PROCEDURE trabajador.pu_CalculaAbonoProyecto
	@par_nomProyecto varchar (90)
AS
BEGIN
	
	IF EXISTS(SELECT * FROM proyecto.PROYECTO WHERE nombre=@par_nomProyecto)

		select e.id_personal, i.id_nivel_actual, nombre, paterno, materno, sueldo, sueldo * 0.30 as abono, sueldo * 1.30 as sueldoFinal 
		from trabajador.PERSONAL as e
		left join trabajador.INVESTIGADOR i on e.id_personal=i.id_personal
		left join catalogo.NIVEL as n ON i.id_nivel_actual = n.id_nivel
		where e.id_personal in (select id_personal from proyecto.EMPLEADO_PROYECTO as ep
								join proyecto.PROYECTO  as p on ep.id_proyecto=p.id_proyecto
								where nombre=@par_nomProyecto)
	ELSE
		print 'El proyecto: '+@par_nomProyecto+' no existe'
END
GO

execute trabajador.pu_CalculaAbonoProyecto @par_nomProyecto='CONTROL DE GESTION'




/*
Ejericicio 2. Realice un procedimiento almacenado para registrar un proyecto, tome en cuenta 
que solo: ADEUDO Y FECHA_FIN pueden ser nulos. Valide que el costo no sea menor a $250,000, 
recibe como par�metro el id del proyecto. pro_updateProyecto
*/
GO
CREATE OR ALTER PROCEDURE proyecto.pro_updateProyecto
@p_nombre varchar(30) = null,
@p_fechaInicio date= null,
@p_fechaFin date= null ,
@p_duracion numeric(2,0)= null,
@p_costo decimal (9,2)= null,
@p_adeudo varchar(10)= null,
@p_estatus char(2)= null,
@p_investigador_responsable integer= null,
@p_totalPagado money= null,
@id_proyecto smallint
AS
BEGIN

	IF (@p_nombre is not null and
		@p_fechaInicio is not null and
		@p_duracion is not null and
		@p_costo is not null and
		@p_estatus is not null and
		@p_investigador_responsable is not null and
		@p_totalPagado is not null and
		@id_proyecto is not null and
		@p_costo >= 250000)   -- SE PUEDE ACTUALIZAR, NO SE VALIDAN ADEUDO Y FECHA_FIN
	  BEGIN
		UPDATE proyecto.proyecto
			SET nombre = COALESCE(@p_nombre, nombre), --COALESCE asegura que si un par�metro es NULL, se mantenga el valor actual del campo
				fechainicio = COALESCE(@p_fechaInicio, fechainicio),
				fechafin = COALESCE(@p_fechaFin , fechafin),
				duracion = COALESCE(@p_duracion, duracion),
				costo = COALESCE(@p_costo , costo),
				adeudo = COALESCE(@p_adeudo , adeudo),
				estatus = COALESCE(@p_estatus , estatus),
				id_investigador_responsable = COALESCE(@p_investigador_responsable, id_investigador_responsable),
				totalPagado = COALESCE(@p_totalPagado, totalPagado)
			WHERE id_proyecto=@id_proyecto
	  END
	ELSE IF (@p_costo < 250000)
		SELECT 'El costo nuevo no puede ser menor a 250,000' AS 'INFORMACION DEL ERROR'
	ELSE 
		SELECT 'Falta algun dato obligatorio' AS 'INFORMACION DEL ERROR'
END



/*
Ejericicio 3. Realice un procedimiento almacenado para registrar un proyecto, tome en cuenta 
que solo: ADEUDO Y FECHA_FIN pueden ser nulos. Valide que el costo no sea menor a $250,000, 
recibe como par�metro el id del proyecto. pro_updateProyecto
*/

exec sp_help [proyecto.proyecto]
GO
CREATE OR ALTER PROCEDURE proyecto.pro_insertaProyecto
@p_nombre varchar(30),
@p_fechaInicio date,
@p_fechaFin date ,
@p_duracion numeric(2,0),
@p_costo decimal (9,2),
@p_adeudo varchar(10),
@p_estatus char(2),
@p_investigador_responsable integer,
@p_totalPagado money
AS
BEGIN

	IF (@p_nombre is not null and
		@p_fechaInicio is not null and
		@p_duracion is not null and
		@p_costo is not null and
		@p_estatus is not null and
		@p_investigador_responsable is not null and
		@p_totalPagado is not null and
		@p_costo >= 250000)   -- SE PUEDE ACTUALIZAR
	  BEGIN
		insert into proyecto.proyecto (nombre, fechainicio, fechafin, duracion, costo, adeudo, estatus, id_investigador_responsable, totalPagado  )
					VALUES (@p_nombre, @p_fechaInicio, @p_fechaFin ,  @p_duracion, @p_costo , @p_adeudo , @p_estatus , @p_investigador_responsable,@p_totalPagado);
	  END
	ELSE IF (@p_costo < 250000)
		SELECT 'El costo nuevo no puede ser menor a 250,000' AS 'INFORMACION DEL ERROR'
	ELSE 
		SELECT 'Falta algun dato obligatorio' AS 'INFORMACION DEL ERROR'
END
GO

-- COMPROBACION, COSTO MENOR DE 250,000
	SELECT * FROM proyecto.proyecto

BEGIN TRANSACTION

	EXECUTE proyecto.pro_insertaProyecto @p_nombre='BECAS', @p_costo=222000, 
	                                    @p_duracion=13,  @p_fechaInicio='2024-01-16',
									    @p_fechafin=null, @p_adeudo=0, @p_estatus='EC', @p_investigador_responsable=5,
										@p_totalPagado=0
	SELECT * FROM proyecto.proyecto
	ORDER BY id_proyecto DESC
ROLLBACK TRANSACTION
GO


-- COMPROBACION, COSTO MAYOR DE 250,000
	SELECT * FROM proyecto.proyecto
	SELECT * FROM trabajador.INVESTIGADOR
BEGIN TRANSACTION

	EXECUTE proyecto.pro_insertaProyecto @p_nombre='BECAS', @p_costo=262000, 
	                                    @p_duracion=13,  @p_fechaInicio='2024-01-16',
									    @p_fechafin=null, @p_adeudo=0, @p_estatus='EC', @p_investigador_responsable=4,
										@p_totalPagado=0
	SELECT * FROM proyecto.proyecto
	ORDER BY id_proyecto DESC
ROLLBACK TRANSACTION
GO

-- no hubo actualizaci�n, ya que se utilizo 
select * from proyecto.PROYECTO



--3.	Realice un procedimiento almacenado para obtener toda la informaci�n de un empleado 
--datos personales y  proyectos en los que ha participado 
--recibir� como par�metros el CURP o el nombre completo. (personal.pu_informeEmpleado)


select * from trabajador.vis_Empleado_Tipos
go
create or alter procedure trabajador.Pro_informeEMpleado
	@pFiltro varchar(40)
	as 
	begin
		select v.id_personal, nombreEmpleado as 'Nombre completo', rfc,  tipopersona,
			fechaNacimiento,    DATEDIFF(YEAR, FechaNacimiento, GETDATE()) -
								CASE
									WHEN (MONTH(FechaNacimiento) > MONTH(GETDATE())) OR
										 (MONTH(FechaNacimiento) = MONTH(GETDATE()) AND DAY(FechaNacimiento) > DAY(GETDATE()))
									THEN 1
									ELSE 0
								END AS Edad,
		    domicilio,doc, tipo_contrato, correo, fecha_nivel_actual, nivel, semestre, nom_carrera, investigadorResponsable,
			pr.nombre,pr.fechainicio, DATEADD(month, duracion, fechainicio) AS FechaTermino, pr.costo, totalPagado, adeudoCal
			from trabajador.vis_Empleado_Tipos as v
			left join proyecto.EMPLEADO_PROYECTO as ep
			on v.id_personal = ep.id_personal
			inner join proyecto.proyecto as pr
			on ep.id_proyecto = pr.id_proyecto
		where v.rfc = @pFiltro or v.nombreEmpleado = @pFiltro
	end
go

-- probando
select * from proyecto.EMPLEADO_PROYECTO
order by id_personal

select * from trabajador.PERSONAL
 exec trabajador.Pro_informeEMpleado '<CURP o Nombre completo>'
 exec trabajador.Pro_informeEMpleado 'ISDF850423NHR'
 exec trabajador.Pro_informeEMpleado  'JUAREZ FLORESISAAC'
go 
 
 select * from trabajador.vis_Empleado_Tipos
 where rfc='ISDF850423NHR'

