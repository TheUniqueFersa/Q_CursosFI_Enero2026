---
pertenece a:
  - "[[Lab de Bases de Datos]]"
terminado: true
---
# Contenido
`CDB`: Base de datos contenedora
`PDB`: Pluggable database


Un PDB se puede crear a partir de una semilla (PDB seed)

y CDB tiene 1 PDB raíz llamada `cdb$root`, una PDB seed llamada ``pdf$seed`` y 0 o más PDBs

>A partir de la versión 23ai Free de Oracle el nombre de la CDB debe ser ``free``
>el dominio puede ser cualquier otro valor
>`free.fi.unam`

El valor de la variable `ORACLE_SID` apuntará siembre al nombre de la CDB
## Objetivo
Conocer y poner en práctica las actividades requeridas para crear una base de datos
contenedora (CDB) con al menos una pluggable database (PDB).
## Secuencia de pasos



- [x] Configurar alias ✅ 2025-10-03

Se configura el siguiente alias
```bash
alias dockerBd1='docker start c1-bd-slm && docker attach c1-bd-slm'
alias dockerBd1T='docker exec -it c1-bd-slm bash
```
Que inicia y se mete al contenedor de Docker `c1-bd-slm`
```bash
dockerBd1
dockerBd1T
# Hace lo mismo que arriba
```

- [x] Saber el nombre del host ✅ 2025-10-16
```
hostname
```


Verificar que la confiugración del ambiente gráfico es correcta
Siendo usuario administrador en la máquina host
```shell
xhost +
#debe arrojar:
# access control disabled, clients can connect from any host
```

Imprime el valor `:0` `:1` ó `:0.0` indicando que se hará uso del ambiente gráfico en el primer monitor conectado a la computadora
```bash
echo $DISPLAY
```


>❗ Se debe configurar la variable DISPLAY justo después de entrar a sesión con el usuario oracle, siempre que se quiera ejecutar alguna aplicación gráfica por parte del usuario `oracle`

```bash
su -l oracle
export DISPLAY=:<RESULTADO echo $DISPLAY>
```

Ahora se podrá ejecutar

```bash
xterm
#desde el contenedor usando oracle
```
Y se debe abrir una terminal gráfica


### Configuración inicial del ambiente de la BD
- [x] Configuración del editor de texto para el buffer de SQL\*Plus empleando la variable _editor. ✅ 2025-10-16
- [x] Configurar ``rlwrap``. ✅ 2025-10-16
- [x] Configurar el ``prompt`` de SQL*Plus empleando el archivo glogin.sql. ✅ 2025-10-16
- [ ] Comprender el uso del concepto de spool.

#### `spool`


---
>Ni el listener ni la instancia de Oracle se inician automáticamente al arrancar el sistema, por lo que si se reinicia, se deberá levantar manualmente ambos servicios

- [x] ❓ ¿Cuál sería la secuencia correcta a seguir si quiero tener todo listo? ✅ 2025-10-19
# Secuencia para entrar a *sqlplus*
1. Abrir una terminal y cambiarse al usuario `oracle`
2. [[#Levantar el listener creado en la práctica|Levantar el listener]]
3. Cambiarse a sesión del usuario ``administrador`` en el s.o.
4. Entrar a SQL \*Plus
5. [[#Levantar la instancia]]

## Acerca del listener
**Dentro del contenedor usando el usuario ``oracle``**
### Levantar el listener creado en la práctica
```bash
lsnrctl start
```

### Revisar el status del listener
>Puede hacerlo cualquier usuario
```BASH
lsnrctl status #este ultimo debe imprimir al final (para indicar que está prendido, pero la instancia no):
# The listener supports no services
# The command completed successfully


# (si la instancia si está levantada):
#Service "jrcbd_s1.fi.unam" has 1 instance(s).
#Instance "free", status READY, has 1 handler(s) for this service...
#The command completed successfull
```

### Detener listener
```bash
lsnrctl stop
```

## Acerca de la instancia
>**Se realiza con el usuario** `administrador`


### Levantar la instancia
```bash
# se prefiere que se haga con el usuario administrador
su -l samuel
sqlplus sys/system1 as sysdba
# dentro de sqlplus:
startup
```

### Acceder a sqlplus (Forma general del anterior comando)
>Ya se debe tener el listener y la instancia levantado
```bash
su -l <usuario>
sqlplus <usuario>/<password> as sysdba
```

### Detener la instancia
```bash
sqlplus sys/system1 as sysdba
# dentro de sqlplus
shutdowm immediate
exit
```




# Problemas encontrados
## No encuentra el comando xhost
Se instalo lo necesario con
```bash
sudo pacman -Syu xorg-xhost xorg-xwayland xterm
#Comprobando
echo $XDG_SESSION_TYPE #x11
echo $DISPLAY #:0
```




# Contenido del reporte
- Elementos comunes
- $C1$ Status Listener: instancia y listener detenidos
- $C2$: Status listener: instancia detenida, listener iniciada
- $C3$: Status listener: instancia y listener iniciados
==Hasta aquí Viernes==
- $C4$: Pantalla con SQL Developer o con la herramienta seleccinoada con el resultado de la consulta realizada en ``cdb$root``
- $C5$: Pantalla con SQL Developer o con la herramienta seleccionada con el resultado de la consulta realizada en la PDB
- $C6$: Salida del primer validador
- $C7$: Salida del segundo validador

# BEYOND
## Lineamientos para entrega de archivos SQL en las prácticas
Todos los archivos que contengan código SQL (scripts SQL) que se soliciten, ya sea dentro
de un reporte, ejercicio o de forma separada como archivo con extensión sql, deberán
incluir el siguiente encabezado:
```txt
--@Autor: <Nombre del autor o autores>
--@Fecha creación: <Fecha de creación>
--@Descripción: <Breve descripción del contenido del script>
```

- [ ] la extensión Code Blocks de Google Docs (empleada en este mismo documento), etc.


# Contraseña de sqlserver
```
system1
```

---
# Ajustar dimensiones de la terminal

```sqlserver
col name format a30
set linesize window
```
