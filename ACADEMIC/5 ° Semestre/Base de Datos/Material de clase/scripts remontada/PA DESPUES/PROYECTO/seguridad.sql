
use tiendaProyecto
go

create role cliente
go 
create role invitado
go
create role gestor 
go

create login usuarioConsulta with password = N'1234zaq', default_database = [tiendaProyecto],  CHECK_EXPIRATION=OFF
go
create user usuarioConsulta for login usuarioConsulta 
go
alter role invitado add member usuarioConsulta
go

grant execute on object ::catalogo.pr_busquedaProductos to invitado, cliente, gestor
go
grant execute on object ::infoPersona.pr_nuevoCliente to invitado, cliente, gestor
go
grant execute on object ::infoPersona.pr_nuevoGestor to gestor
go
grant execute on object ::infoPersona.pr_nuevoVendedor to gestor
go
grant execute on object ::infoPersona.pr_suscribirse to cliente
go
grant execute on object ::infoPersona.pr_telefonos to cliente
go
grant execute on object ::ofertas.pr_verOfertas to cliente, gestor
go
grant execute on object ::ventas.pr_crearCesta to cliente
go
grant execute on object ::ventas.pr_crearCompraTienda to cliente 
go
grant execute on object ::ventas.pr_eliminarProductosCesta to cliente
go
grant execute on object ::ventas.pr_ingresarProductosCesta to cliente
go
grant execute on object ::ventas.pr_ingresarProductosCompraTienda to cliente, gestor
go
grant execute on object ::ventas.pr_pagoCompraEnLinea to cliente
go
grant execute on object ::ventas.pr_pagoCompraEnTienda to invitado, cliente, gestor
go
grant execute on object ::ventas.pusuProductosMasComprados to gestor
go
grant execute on object ::ventas.pusuVendedorVentas to gestor
go
grant execute on object ::ventas.pusuVentasPorEpoca to gestor
go
grant execute on object ::ventas.pusuVentasPorMedio to gestor
go
grant select on object ::catalogo.vi_detalleProducto to invitado, cliente
go
grant select on object ::catalogo.vi_mostrarProductos to invitado, cliente
go
grant select on object ::ventas.vi_cestasPropias to cliente
go

grant select, insert, update, delete on catalogo.categoria to gestor
go
grant select, insert, update, delete on catalogo.producto to gestor
go 
grant select, insert, update, delete on infoPersona.Gestor to gestor
go
grant select, insert, update, delete on ofertas.oferta to gestor
go
grant select, insert, update, delete on ventas.inventario to gestor
go

grant alter any user to gestor 
go

CREATE or ALTER PROCEDURE procSeguridad
as 
begin
	declare 
		@usuario varchar(40),
		@contrasena varchar(40),
		@newUserCommand varchar(256),
		@newUserCommand2 varchar(256),
		@newUserCommand3 varchar(256),
		@curp varchar(18)

		-- validar las condiciones de las contraseñas
	
	set @newUserCommand = 'create login '+@usuario+' with password ='''+@contrasena+''',
	default_database = [tiendaProyecto],  CHECK_EXPIRATION=OFF'
	
	execute (@newUserCommand)
	
	set @newUserCommand2 = CONCAT('CREATE USER "',@usuario,'" for login "',@usuario,'"')
	
	execute (@newUserCommand2)


	if exists(select curp from infoPersona.cliente where curp = @curp ) and not exists(select curp from infoPersona.gestor where curp = @curp)
		begin
			set @newUserCommand3 = 'alter role cliente add member '+@usuario
		end
	else if exists(select curp from infoPersona.gestor where curp = @curp ) and not exists(select curp from infoPersona.cliente where curp = @curp)
		begin 
			set @newUserCommand3 = 'alter role gestor add member '+@usuario
		end
	execute(@newUserCommand3)
end
go