/*

Tema 8. Programación
Triggers
26-1

*/
---triggers 

use [DBUNIVERSIDAD2_89000546]
go


--SINTAXIS
CREATE [ OR ALTER ] TRIGGER [ Esquema . ]NombreTrigger
ON { tabla | vista }
{ FOR | AFTER | INSTEAD OF }
{ [ INSERT ] [ , ] [ UPDATE ] [ , ] [ DELETE ] }
AS
Begin
	Instrucciones T-SQL
End
go
--Ejemplos

CREATE OR ALTER TRIGGER catalogo.trNivel
ON catalogo.NIVEL
FOR INSERT, UPDATE, DELETE
AS
	begin
		SELECT 'CONTENIDO DE INSERTED: ',INSERTED.* FROM INSERTED
		SELECT 'CONTENIDO DE DELETED: ', DELETED.* FROM DELETED
		PRINT 'Actualización de los registros de Puestos'
	end
GO

--Probando el trigger
select * from catalogo.NIVEL
select * from catalogo.NIVEL
WHERE id_nivel=14

update catalogo.NIVEL
set descripcion='INTERINO 2'
WHERE id_nivel=14

go


--- modificar

ALTER TRIGGER catalogo.trNivel
ON catalogo.nivel
FOR INSERT, UPDATE, DELETE
AS
	select 'Modificación del mensaje del trigger' as mensaje
go

select * from catalogo.NIVEL

insert into catalogo.NIVEL
values( 'TITULAR 2', 1, 43000);

select * from catalogo.NIVEL;
go

delete from catalogo.NIVEL 
where descripcion='TITULAR 2'
go

--Deshabilitar un trigger:

DISABLE TRIGGER catalogo.trNivel on catalogo.NIVEL;
GO  



update catalogo.NIVEL
set sueldo=68000
WHERE descripcion='AYUDANTE'
go


--Habilitar un trigger:
ENABLE TRIGGER catalogo.trNivel on catalogo.NIVEL;



DELETE FROM catalogo.NIVEL
 WHERE descripcion='AYUDANTE GENERAL';
 GO

 select * from catalogo.NIVEL



-- >>  Triggers

/*1. Realice un trigger que verifique al insertar un registro en la tabla
INVESTIGADOR no esté ya registrado en BECARIOS. (tgInsertaINVESTIGADOR)*/

go
--====================================================
--Nombre: tgInsertaConfianza
--Autor: Martha López Pelcastre
--Descripción: trigger que revisa si un empleado INVESTIGADOR no está registrado como BECARIO
--Fecha de elaboración: 15/11/2025
--====================================================

create or alter TRIGGER trabajador.tgInsertaInvestigador
on trabajador.investigador
instead of insert --entra primero el trigger y no se inserta
as
begin
	--declarando variables
    declare @v_idempleado int, 
		@v_numplaza char(5),
		@fecha_nivel date

    select @v_idempleado=id_personal, @fecha_nivel=fecha_nivel_actual
	from inserted

	--revisando si ya existe ese id en Becarios

	IF exists (select id_personal from trabajador.becario 
	            where id_personal=@v_idempleado)
		print 'El empleado ya existe como BECARIO'

    ELSE --si no existe, revisando si está ya registrado
		if exists (select id_personal from trabajador.INVESTIGADOR
		            where id_personal=@v_idempleado) 
			print 'El empleado ya existe en la tabla INVESTIGADOR'

		else 
			begin
		    -- validando que sea un INVESTIGADOR
				if   exists (select id_personal from trabajador.PERSONAL 
				              where tipoPersonal='I' and id_personal=@v_idempleado)
					--- validamos que la fecha de nivel actual sea mayor o igual a la fecha de contratación (fecha de ingreso)
					if @fecha_nivel>=(select fechaIngreso from trabajador.PERSONAL where id_personal=@v_idempleado)
						----insertamos
						INSERT INTO trabajador.INVESTIGADOR 
						SELECT id_personal, doctorado, tipo_contrato, id_nivel_actual, fecha_nivel_actual, correo
						FROM INSERTED
					else
						print 'La fecha del nivel actual debe ser mayor o igual a la fecha de ingreso'
                 else
					print 'El empleado no es INVESTIGADOR'
			end
end

-- VALIDANDO 
SELECT * FROM trabajador.PERSONAL AS P
LEFT JOIN trabajador.BECARIO AS B ON P.id_personal=B.id_personal
LEFT JOIN TRABAJADOR.INVESTIGADOR AS I ON  P.id_personal=I.id_personal
ORDER BY tipoPersonal


-- El empleado ID 2  es INVESTIGADOR y no está dado de alta en su tabla subtipo
-- 10 es INVESTIGADOR y ya está dado de alta
--el 9 es becario su tipo es I, sin embargo, está dado de alta en losdos lados
-- el 14 es becario

--- COMPROBANDO

-- checando que no inserte porque no es investigador
SELECT * FROM catalogo.NIVEL
SELECT * FROM trabajador.INVESTIGADOR


--revisando que no inserte porque ya está en la tabla investigador

BEGIN TRAN

	insert into trabajador.INVESTIGADOR (id_personal, doctorado, tipo_contrato, id_nivel_actual, fecha_nivel_actual, correo)
	SELECT * FROM trabajador.INVESTIGADOR WHERE id_personal=10

ROLLBACK TRAN

--revisando que no inserte porque ya está en la tabla becario

BEGIN TRAN

	insert into trabajador.INVESTIGADOR (id_personal, doctorado, tipo_contrato, id_nivel_actual, fecha_nivel_actual, correo)
	values (14, 0, 9, 3, '2025-06-15', null )

ROLLBACK TRAN

-- ahora  insertamos el 2
BEGIN TRAN
	insert into trabajador.INVESTIGADOR (id_personal, doctorado, tipo_contrato, id_nivel_actual, fecha_nivel_actual, correo)
	values (2, 0, 9, 3, '2022-05-11', null )  -- la fecha de ingreso es menor que la fecha de ingreso
	SELECT * FROM trabajador.INVESTIGADOR WHERE id_personal=2
ROLLBACK TRAN

go

/*2. Realice un trigger para la actualización de la información de la tabla nivel,
que valide que no se modifique el sueldo y envie un mesaje al usuario “El sueldo no pueden
modificarse. La actualización no se realizó” en caso contrario que muestre como estaba el registro antes
y después de ser modificado.tfModificaPuesto*/
--====================================================
--Nombre: tfModificaPuesto
--Autor: Martha López Pelcastre
--Descripción: trigger que verifica la actualización de sueldos
--Fecha de elaboración: 8/11/2025
--====================================================


/*
UPDATE()
Devuelve un valor booleano que indica si se realizó un intento de INSERT o UPDATE en una columna específica de una 
tabla o vista. UPDATE() se utiliza en cualquier parte dentro del cuerpo de un disparador INSERT o UPDATE de Transact-SQL
para probar si el disparador debe ejecutar determinadas acciones.

*/


--====================================================
--Nombre: tfModificaPuesto1
--Autor: Martha López Pelcastre
--Descripción: trigger que verifica la actualización de sueldos
--Fecha de elaboración: 8/11/2025
--====================================================
create or alter trigger catalogo.trModificaPuesto1
ON catalogo.nivel
for update --si se llega a actualizar los datos
AS
BEGIN
	if (update(descripcion) or update(vigente) or update(nivel)) and
		not (update(sueldo) ) --update devuelve 1 si hubo actualización de un campo válido
	begin
		select d.id_nivel,
			(d.descripcion+'-'+ cast(d.vigente as char)) as 'registro anterior',
			(i.descripcion+'-'+ cast(i.vigente as char)) as 'registro actualizado'
			from deleted as d join inserted as i
			on d.id_nivel=i.id_nivel
	end
	else --entra si el sueldo se actualizó
	begin
		raiserror('El sueldo no pueden modificarse. 
					La actualización no se realizó.', 10, 1)  -- genera un mensaje de error
		rollback transaction --deshace la actualización que se hizo
	end
end;
go


--probando, si hay un ck, entrará primero que el trigger
BEGIN TRAN 
	UPDATE catalogo.NIVEL set descripcion='PRUEBA 1', sueldo=10000 WHERE id_nivel=2
	select 'después de lanzar update'
	select * from catalogo.NIVEL
ROLLBACK
go


--deshabilitando el check en sueldo
--alter table catalogo.Puesto 
--	nocheck constraint ck_pagoPermitido;

-- VALIDANDO 

SELECT * FROM catalogo.NIVEL 
-- valida que no se modifique el sueldo
BEGIN TRAN 
	UPDATE catalogo.NIVEL 
	set vigente=0
	WHERE id_nivel=7
	select 'después de lanzar update'
	SELECT * FROM catalogo.NIVEL 
ROLLBACK

--- validando un registro que no existe
BEGIN TRAN 
	UPDATE catalogo.NIVEL 
	set sueldo=46000, vigente=0
	WHERE id_nivel=18
	select 'después de lanzar update'
	SELECT * FROM catalogo.NIVEL 
ROLLBACK

-- validando el update
BEGIN TRAN 
	UPDATE catalogo.NIVEL 
	set sueldo=45000, vigente=0
	WHERE id_nivel=7
	select 'después de lanzar update'
	SELECT * FROM catalogo.NIVEL 
	WHERE id_nivel=7
ROLLBACK


drop  TRIGGER catalogo.tfModificaPuesto
go


/*3. Realice un trigger que al borrar un parentesco verifique que no haya sido utilizado, 
de ser así envié 
mensaje y no elimine la información.trBorraParentesco*/

--====================================================
--Nombre: trBorraParentesco
--Author: Martha López Pelcastre 
--Descripción: trigger que verifica que al borrar un concepto, haya sido usado
--Fecha de elaboración: 8/11/2025
--====================================================
create or alter trigger catalogo.trBorraParentesco 
on catalogo.parentesco
instead of delete --no se borra sin antes verificar
as
begin
	--si hay coincidencia, quiere decir que ha sido utilizado el parentesco
	--los datos se recuperan en la tabla deleted

	if exists (select be.id_parentesco from trabajador.BENEFICIARIO be  
		inner join deleted D on be.id_parentesco = d.id_parentesco)
		
		select 'EL PARENTESCO HA SIDO UTILIZADO. NO SE PUEDE ELIMINAR.'
	
	else --si no hubo coincidencia, se PUEDE  borrar
	begin
		
		delete from catalogo.parentesco where id_parentesco = (select D.id_parentesco from deleted D)
		select 'CONCEPTO ELIMINADO'

	end
end

--probando
select * from catalogo.parentesco
select * from trabajador.BENEFICIARIO

--utilizados 1,3,2

begin tran 
	select * from catalogo.parentesco
	delete from catalogo.parentesco where id_parentesco = 1
	select 'Verificando si borró'
	select * from catalogo.parentesco
rollback tran


begin tran 
	select * from catalogo.parentesco
	delete from catalogo.parentesco where id_parentesco = 6
	select 'Verificando si borró'
	select * from catalogo.parentesco
rollback tran



/*4. Realice un trigger que al modificar algún dependiente, se almacene en una bitácora, toda
la información del dependiente antes de ser modificado, incluyendo fecha y hora. tgModificaDependiente*/

--creando la tabla bitacora
create table trabajador.bitacora (
	idBitacora     integer IDENTITY (1,1)  primary key,
	edad           numeric(2,0) NULL,
	nombre         varchar(30)  NULL , 
	paterno        varchar(30)  NULL ,
	materno        varchar(30)  NULL ,
	fechanacimiento date not null,
	id_parentesco   tinyint  NULL ,
	id_personal		int not NULL ,
	id_dependiente  smallint not NULL ,
	fecha          datetime 
)


drop table trabajador.bitacora

go

/*====================================================
--Nombre: tgModificaDependiente
--Author: Martha López Pelcastre
--Descripción: trigger que almacena en una bitacora los cambios de BENEFICIARIO
--Fecha de elaboración: 15/11/2025
====================================================*/
create trigger trabajador.tgModificaDependiente
on trabajador.BENEFICIARIO
after update --si es after, tomamos los datos anteriores de la tabla deleted
as
begin
	insert into trabajador.bitacora (edad, nombre, paterno, materno, idparentesco, id_dependiente, idEmpleado, fecha, fechaNacimiento)
		select edad, nombre, paterno, materno, idparentesco, idDependiente, idEmpleado, getdate(), fechaNacimiento
			from deleted; --copiamos los valores anteriores tal cual 
end



--Probando..
begin tran
	select * from trabajador.BENEFICIARIO order by id_dependiente
	select * from trabajador.BITACORA
	update trabajador.BENEFICIARIO set nombre='PRUEBA' where id_dependiente=1 
	select * from trabajador.BITACORA
	select * from trabajador.BENEFICIARIO
rollback tran

go

-- 6. Realice un trigger que al insertar o actualizar el pago de un proyecto actualice el total_pagado en la tabla proyecto

create or alter trigger proyecto.tgActualizaAdeudo
on proyecto.pagos
for insert, update
as
begin
	declare @vtotpago as money
	
	select @vtotpago=monto from inserted --obtenemos la cantidad pagada d la tabla inserted

	select 'Antes del update', * from deleted

	update proyecto.proyecto
	set totalpagado=totalpagado+@vtotpago
	where id_proyecto=(select id_proyecto from inserted)



end

go

--verificando el funcionamiento
select * from proyecto.PAGOS
order by id_proyecto, id_pago

--actualizando

update proyecto.PAGOS
set monto=35000
where id_proyecto=3

select 'Después del update', * from proyecto.PAGOS


--insertando

insert into proyecto.PAGOS (id_proyecto, id_pago, fecha, monto)
values (3,5, '2025-06-15', 20000)

select 'Después del insert', * from proyecto.PAGOS
