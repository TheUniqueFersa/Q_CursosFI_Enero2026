---
terminado: true
pertenece a:
  - "[[Lab de Bases de Datos]]"
Total: 7
Completado: 6
Incompleto: 1
---

>ℹ Notas sobre la práctica 1

>La máquina donde se aloja el linux instalado se le llamará **máquina host**

>📌 Para de de bases de datos, el linux de los contenedores Docker será: **CentOS Stream 9**

>Construcción de un abmiente de desarrrollo con bases de datos empleando contenedores Docker

ℹ La **máquina host** tendrá contenedores docker que incluirán una distribución Linux compatible con las bds empleadas durante el curso

# Hostname
- [x]  ✅ 2025-09-30
Forma del hostname
```
pc-bd-slm.fi.unam
```

- Cambiar el ``hostname``
```bash
sudo hostnamectl set-hostname pc-bd-<tus_iniciales>.fi.unam
```

# Idioma inglés
- [x]  ✅ 2025-09-30

# Zona horaria debe corresponder a la zona de Ciudad de México
- [x]  ✅ 2025-09-30
 - Cambiar la zona horaria
```bash
sudo timedatectl set-timezone America/Mexico_City
```

# ℹ **Usuario administrador**
Usuario que puede hacer uso del comando ``sudo`` para realizar tareas administrativas
Usuario cuyo username coincida con alguno de los nombres del estudiante: `samuel`

---
>Lo anterior era la *instalación*
# Actividades posteriores a la instalación
## Variables de entorno en la **máquina host**

> ℹ **Script de variables de entorno en la máquina host**


```bash
sudo nano /etc/profile.d/99-unam-env.sh
export UNAM_HOME=/unam
```
Guardar y cerrar

```bash
source /etc/profile.d/99-unam-env.sh
echo $UNAM_HOME
```


## Dependencias en la **máquina host**

```bash
sudo pacman -Syu lshw
```


## Carpeta de trabajo



---
# Contenido del reporte
- [x] A. Elementos comunes especificados en la rúbrica general de prácticas indicadas en el documento ``presentacion-curso.pdf`` ✅ 2025-09-30
- [x] $C1$ Ruta relativa empleada para el ejercicio con el comando ``touch`` ✅ 2025-09-30
- [x] $C2$ Salida completa del validador ✅ 2025-09-30


- [ ] Práctica 1 COMPLETA #AEM #XCH

---
# Secuencia de acciones
- Crear otro usuario de linux con nombre ``samuel``

```bash
sudo hostnamectl set-hostname pc-bd-slm.fi.unam #Hostname
sudo timedatectl set-timezone America/Mexico_City #Zona horaria

# --[ VARIABLES DE ENTORNO ]--
sudo nano /etc/profile.d/99-unam-env.sh
#ESCRIBIR EN EL ARCHIVO ABIERTO: ------
export UNAM_HOME=/unam
# ----- GUARDAR Y SALIR

source /etc/profile.d/99-unam-env.sh
echo $UNAM_HOME
```
- Reiniciar


```bash
# --[ DEPENDENCIAS ]--
sudo pacman -Syu lshw
# --[ CARPETA DE TRABAJO ]--
sudo mkdir -p $UNAM_HOME/bd
sudo chown $USER:$USER $UNAM_HOME/bd
sudo chmod 755 $UNAM_HOME/bd

```

# ***INTERCONN***
## Conexiones
Notas secundarias
Notas que han de considerarse para la revisión de la actual, para tener contexto
## Recursos

| **Material**                                                                                                    |                                                          |
| --------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------- |
| [Manual básico](https://github.com/jorgerdc/diplomado-bd-aspirantes/tree/main/guia-examen/08-fundamentos-linux) | En caos de no contar cono conocimientos básicos en Linux |


## Referencias
Referencia a notas externas como fuente de información
Referencias externas de otra fuente de información