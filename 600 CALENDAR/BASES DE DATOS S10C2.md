---
event-id: 43g5t88b486fktib7sovvvef7s_20251016T130000Z
estado:
status:
tipo_nota: primaria
ptetra: "[[♣Legend]]"
fecha_creado: 2025-10-16
próxima_fecha:
serie:
scope:
modelo:
  - "[[►Recolección Wissen-Garden]]"
Completado:
Incompleto:
Total:
tags:
Materia:
Saga:
---
# ***BASES DE DATOS S10C2***

**Servidor**: servicio de computo donde instale el manejador

De la misma versión puedo instalar varias veces 

Para conectarse al servidor local debemos tener prendidos (`running`):
- SQL Server
- SQL Server Browser

**SQL Server Agent**: crear a los DBAs crear tareas que se van a ejecutar automáticamente
Server Browser

**Objeto relacional**
Objetos que tiene características y métodos propios

Stored procedures

Los **scripts** ==no son objetos==, *son solo código*


## Usando Microsoft 
Nombre del Servidor
```
NOMBRE_EQUIPO/NOMBRE_DEL_SERVIDOR
```


Se puede usar
- Windows Authentication (con el usuario de windows se autentifica)
- Con SQL Server Identification



| Palabra reservada del manejador |     |
| ------------------------------- | --- |
| `GO`                            |     |
|                                 |     |


| Comando        | Que hace               |
| -------------- | ---------------------- |
| `USE <nombre>` | Abrir la base de datos |

# Renombrar tabla
```sql
USE nombreBase;
GO
EXEC sp_rename 'nombre Origen', 'Nombre nuevo';
```

>💭 El nombre del comando completo es EXECUTE, pero el manejador entiende cual comando es y puedes no escribirlo completo


# Eliminar una tabla
>`DROP` suprime todas las restricciones de integridad referencial que hagan referencia a llaves de la tabla eliminada

FK para el manejador son CONSTRAINTS
```sql
DROP TABLE <nombre tabla> [CASCADE CONSTRAINTS]
```

# Modificar una tabla
```sql

```

**Sql Server** permite crear columnas calculadas
Operaciones dentro de la misma tabla

```sql
CREATE TABLE dbo.venta
	(
		idventa int IDENTITY (1,1) NOT NULL
		, cantidad smallint
		, precio money
		, total AS cantidad * precio
	)
;
```

## Agregar


# Restricciones de integridad
1. Restricciones de dominio
	- `CHECK`
2. Restricciones relacionadas con tablas
	1. Restricciones de columna
		- NOT NULL
		- UNIQUE, PRIMARY KEY
		- Referencial FOREIGN KEY
		- CHECK
	2. Restricciones de tabla
		1. Únicas UNIQUE
		2. Referencial FOREIGN KEY
		3. CHECK
3. Afirmaciones

Para crear constraints
```sql
constraint []
```

## FOREIGN KEYS
Crear el campo en la tabla y luego conectarla
```sql
FOREIGN KEY	
	(...)
	REFERENCIES ...
	[A]
```
A:
ON DELETE: Qué hará cuando se elimine


## DEFAULT
>Aplican en atributos opcionales


# Identity

# Esquemas
>Son **objetos** de la base de datos (se crea con create)

Permite disponer de más flexibilidad en la administración de los permisos de objeto de base de datos.
Un esquema es un contenedor con nombre para objetos de base de datos, que permite agrupar objetos en espacios de nombres independientes.

1. `dbo`: en caso de que no se usen esquemas
2. `guest` permite solo consultar
3. 

```sql
CREATE SCHEMA <nombre> AUTHORIZATION DBO
```

## Modificar esquema
```sql
ALTER SCHEMA ...
```

# índices
6.5.6
>ℹ️ Optimizar las consultas

Tiene una estructura de **árbol**



Es físicamente un archivo que ordena los registros de una tabla
Por cada índica de una tabla se genera un archivo
Tiene los registros ordenados

Cuando voy a hacer una consulta
el manejador ve si hay índices

## índice Clustered
Ubicación física

## índice Non-Clustered
Me da un apuntador
Voy a esa ubicación

>SQL Sever permite que haya por tabla solo un clustered


>- [ ] ❓Diferencia entre Clustered y non-clustered y cuando usarlos


**Como** si fueran índices de un libro.

>Se recomienda tener indices en las **llaves foráneas**

Los UNIQUE podrían tener índices

Campos que los ocupo frecuentemente podrían tener índice

Si una tabla tiene muchos índices
Cuando insertamos, cada uno de los índices se reordena

Por cada índice, lo coloca donde debe ir.
El INSERT puede tardar

Si las consultas son lentas puede ser que sea por exceso de índices


---
# Base de datos `master`

---
Vamos a implementar el ejercicio del archivo de "*6.5 DDL-ejercicios*"



TE la crea por default como CLUSTERED

En PROGRAMABILITY/Functions/System Functions/

Hay funciones útiles que puedes ocupar del manejador
(Como validar la longitud de una cadena)


Cadena o fecha -> Llevan comillas simples

>El manejador crea un índice siempre para la llave primaria



Campos y luego constraints
Defino primero campos y luego los constraints

### Constraint de columna
Defino el atributo y ahí mismo defino su columna