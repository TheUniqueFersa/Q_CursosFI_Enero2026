/*
Autor:  Martha López Pelcastre
Descripción: While
Fecha: 12/11/2025

-La estructura WHILE ejecuta en forma repetitiva un conjunto o bloque de instrucciones SQL 
siempre que la condición especificada sea verdadera. 
-Se puede controlar la ejecución de instrucciones en el bucle WHILE con las palabras clave BREAK y CONTINUE. 
-Es el único tipo de bucle del que dispone Transact SQL


*/


while <expresión>
begin
	...
end
go


--Ejemplo


DECLARE @contador integer
SET @contador = 0 
WHILE (@contador < 100) 
BEGIN 
   SET @contador = @contador + 1 
   IF (@contador %2 =0) 
             PRINT cast(@contador AS varchar) +' es un Número Par' 
   ELSE 
             PRINT cast(@contador AS varchar) + ' es un Número Impar' 
end;
go



--Podemos pasar a la siguiente iteración del bucle utilizando CONTINUE

DECLARE @contador integer
SET @contador = 0 
WHILE (@contador < 100) 
BEGIN 
   SET @contador = @contador + 1 
   IF (@contador %2 =0) 
   begin
		continue
   end     
	PRINT 'Siguiente iteración del bucle '+cast(@contador AS varchar)
end
go

--break

DECLARE @contador integer
SET @contador = 0 
WHILE (@contador <=100) 
BEGIN 
   SET @contador = @contador + 1 
   IF (@contador % 50 =0) 
   begin
		break
	end

   PRINT 'Iteración del bucle '+cast(@contador AS varchar)
end
go


use [DBUNIVERSIDAD2_89000546]
go


-- Ejercicios

-- 1. Ponga la fecha de término a cada proyecto que aún no la tenga, ponga la fecha del sistema

--También podemos utilizar el bucle WHILE conjuntamente con subconsultas.

declare @v_id_proyecto int

while exists(select * from proyecto.proyecto
             where fechafin is null) -- ojo, la subconsulta se ejecuta una vez por cada iteración del bucle
begin
	set @v_id_proyecto = (select top 1 id_proyecto from proyecto.proyecto
	                      where fechafin is null)

	select @v_id_proyecto

	update proyecto.proyecto
	set fechafin=getdate()
	where id_proyecto=@v_id_proyecto

	select * from proyecto.proyecto

end

select * from proyecto.proyecto


UPDATE proyecto.proyecto
set fechafin=null
where id_proyecto IN (3,5)

GO


----  
declare @v_id_proyecto int, @V_CONTADOR SMALLINT, @V_total SMALLINT

set @V_CONTADOR=1

select @v_total=count(*) from proyecto.proyecto


while @V_CONTADOR<=@V_total
begin
	
	if exists (select * from proyecto.proyecto where id_proyecto=@V_CONTADOR and fechafin is null)
		begin
			update proyecto.proyecto
			set fechafin=getdate()
			where id_proyecto=@V_CONTADOR

			select * from proyecto.proyecto where id_proyecto=@V_CONTADOR
		end
    else
		select 'el proyecto tiene fecha fin',  * from proyecto.proyecto where id_proyecto=@V_CONTADOR
   
   set @V_CONTADOR=@V_CONTADOR+1
end


--2. Para cada empleado registre por lo menos 1 domicilio, si ya tiene envié mensaje 
--‘El empleado (nombre del empleado) ya tiene domicilio’

begin tran

	--Antes de checar e insertar valores
	select  e.id_personal, paterno, materno, nombre, calle, colonia, numero,  e.tipoPersonal
	from trabajador.PERSONAL as e
		left join trabajador.domicilio as d
			on e.id_personal=d.id_personal

	declare @contador int, @contadorDom int

	set @contador=1
	
	while @contador <= (select max(id_personal) from trabajador.PERSONAL)
	begin
		
		select @contador 'CONTADOR'
		--Si existe el empleado con valor igual al contador se entra al if
		if exists(select id_personal from trabajador.PERSONAL where id_personal=@contador)
		begin
			if not exists (select id_personal from trabajador.domicilio
			           where id_personal=@contador) -- verifica si el empleado tiene un domicilio
			begin
				insert into trabajador.domicilio (id_personal, calle, colonia, numero, alcaldia,  CP)
				values
				(@contador, concat('CALLE: ', @CONTADOR), concat('COLONIA: ', @CONTADOR), concat('NO: ', @CONTADOR), 'COYOACAN',   '00256');
                
				select  concat('SE INSERTO REGISTRO PARA EL EMPLEADO: ', @contador)
			end
			else
				print'El empleado: '+ltrim(rtrim((CAST ( @contador AS char  ))))  +' ya tiene domicilio'   -- '   15   '
		end
		set @contador=@contador+1
	end

	select  e.id_personal, paterno, materno, nombre, calle, colonia, numero, alcaldia, E.tipoPersonal
	from trabajador.PERSONAL as e
		left join trabajador.domicilio as d
			on e.id_personal=d.id_personal
	
rollback tran
