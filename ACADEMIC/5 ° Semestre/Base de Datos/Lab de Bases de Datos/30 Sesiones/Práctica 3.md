---
pertenece a:
  - "[[Lab de Bases de Datos]]"
terminado: false
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

### Se debe configurar la variable DISPLAY justo después de entrar a sesión con el usuario oracle

```bash
su -l oracle
export DISPLAY=:0
```


- [x] Configurar alias ✅ 2025-10-03

```bash
dockerBd1
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