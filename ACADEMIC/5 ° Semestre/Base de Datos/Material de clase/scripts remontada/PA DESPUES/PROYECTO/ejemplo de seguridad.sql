
/*
EJEMPLO PARA CREAR USUARIOS
ROLES Y PRIVILEGIOS
*/

use nombreBaseDatos
go


-- se crea el login usuarioconsulta
create login [usuarioConsulta] with password = N'1234zaq*',
	default_database = [nombreBaseDatos],
	check_expiration = OFF,
	check_policy = OFF
go


-- se agrega ese usuario a la base de datos 
alter authorization on database:: nombreBaseDatos to usuarioConsulta
go

-- se agrega ese usuario al rol para que pueda crear otros usuarios
EXEC master..sp_addsrvrolemember @loginame = N'usuarioConsulta',
@rolename = N'securityadmin'
go


-- se crea el usuario en  la base de datos y se le otorgan los permisos
create user usuarioConsulta for login usuarioConsulta

    ---aqui asignan los permisos a esquemas, procedimientos almacenados
 
	grant select on SCHEMA :: [PERSONAS] to [usuarioConsulta]
	grant exec on SPU_RegistrarReparacion to [usuarioConsulta]
	grant exec on SPU_RegistrarRevision to [usuarioConsulta]
	 
	 	--- incluso pueden poner ciertos permisos
	grant select, insert, delete, update on schema :: [PERSONAS] to [usuarioConsulta]
	grant select, insert, delete, update on schema :: [SERVICIOS] to [usuarioConsulta]

go

--- lo anterior se repite para los usuarios que quieran crear
