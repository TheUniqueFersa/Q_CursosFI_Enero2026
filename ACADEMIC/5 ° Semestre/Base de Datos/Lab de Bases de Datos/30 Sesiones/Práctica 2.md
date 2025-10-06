---
pertenece a:
  - "[[Lab de Bases de Datos]]"
terminado: true
---
# Contenido

Máquina host, donde se realizará la instalación de Docker, crear y configurar un contenedor base y finalmente generar una imagen.

- SO donde se realizará la instalación
- Instalación del sofware y librerías requeridas para poder crear **bases de datos** (hasta la siguiente práctica)
- Creación y configuración de usuarios y carpetas compartidas

# Actividades esperadas
Instalar Docker o Colima (Container runtimes on macOS)
-  Crear un primer contenedor base llamado ``c0-<ol|centos|ubuntu>-<iniciales>``.
-  Aplicar las configuraciones iniciales al sistema operativo del contenedor.
-  Instalar el software para poder crear bases de datos.
-  Crear una imagen de respaldo llamada ``<iniciales>-<ol|centos|ubuntu>`` versión
1.0 a partir del contenedor creado


Alias para invocar a los comandos docker attach, docker start

> ℹ Al script seleccionado le llamaremos **script de variables de entorno en el contenedor**


# Problemas encontrados
Error al ejecutar `sudo systemctl enable --now docker`

```bash
#DICE:
docker.service falló al iniciar 
```

Al ejecutar
```bash
systemctl is-active docker
```

me decía algo parecido a:  
``error (no había iniciado)``

Inclusive si intentaba reiniciar con `sudo systemctl restart docker` me seguía diciendo que:

```
Job for docker.service failed because the control process exited with error code.
```


Ejecuté entonces el comando

```bash
sudo modprobe overlay
```

y me imprimió

```bash
FATAL: Module overlay not found in directory /lib/modules/6.12.28-1-MANJARO
```

`modprobe overlay`: intenta cargar el módulo `overlayfs` requerido por el driver `overlay2` de Docker.
    
El error “not found” indica que tu kernel no trae el módulo compilado como tal o el árbol de módulos/headers no coincide con el kernel en ejecución.
   
--

Por lo que procedí a

```bash
zcat /proc/config.gz 2>/dev/null | grep -i CONFIG_OVERLAY_FS
```
Consulta la configuración del kernel en ejecución y filtra la opción de overlayfs.

donde lo que me arrojó contenía:
```
CONFIG_OVERLAY_FS=m
```


**=m** significa “compilado como módulo”. Debería existir el .ko correspondiente en `/lib/modules/...`; si falta, suele arreglarse instalando headers y regenerando índices.


por lo que procedí a revisar el kernel
```
# Ver instalados y disponibles
mhwd-kernel -li
mhwd-kernel -l
```

`mhwd-kernel -li`: lista kernels instalados.
`mhwd-kernel -l`: lista kernels disponibles para instalación. Permite decidir si mantener rama actual o migrar a un LTS.

Dándome cuenta que tenía linux-612, por lo que solo era cuestión de actualizar los headers
```bash
sudo pacman -Syu linux612-headers
```
Instala los headers que corresponden exactamente al kernel 6.12. Sin headers correctos no aparecen algunos módulos. Reiniciar aplica el emparejamiento kernel-headers


- Reinicie mi equipo

Después de reiniciar mi equipo, procedí a intentar de nuevo

```
sudo systemctl enable --now docker
```

No me dio error y por ende al ejecutar:
```
systemctl is-active docker
```

me arrojó `active`  

---

Por lo que
```
docker run --rm hello-world
```

Se ejecutó como se esperaba y continué con la práctica.  

---

En general, al momento de familiarizarme con los contenedores, me confundí cuando usar apt o cuando usar dnf, pero era cuestión de leer detenidamente el manual para darme cuenta que:  
mi caso es aquel donde mi máquina host es linux, por lo que me corresponde instalar contenedores que utlizan CentOS, por lo que apt no es un comando disponible, en mi caso debo utilizar `dnf`

Otra cuestión a mencionar fue que tuel comando unzip porque no lo tenía en mi máquina host

```bash
pacman -Syu unzip
```

En Manjaro/Arch el gestor es `pacman`. `-Syu` sincroniza bases, actualiza y luego instala `unzip`.

---

Otro problema que tuve fue al momento de hacer la instalación de paquetes básicos en el contenedor, pues para instalar `rlwrap`, cuando ejecuté por primera vez `./configure` me salto el error:

```
checking for ptytty_create in -lptytty... no configure: error: libptytty not found, install it or specify --without-libptytty
```
El script de configuración detecta ausencia de la librería de desarrollo `libptytty`. Pide instalar `libptytty-devel` o compilar sin esa opción.


Por lo que investigue como instalar `libptytty`
**Instalar toolchain y libs**
```bash
dnf -y install gcc make autoconf automake libtool pkgconfig readline-devel ncurses-devel
```
Instala toolchain y dependencias de compilación: compilador (`gcc`), herramientas de _autotools_, `pkgconfig`, y headers de `readline` y `ncurses` que `rlwrap` usa para manejo de línea.


```bash
dnf -y install 'dnf-command(config-manager)' || true
dnf -y config-manager --set-enabled crb || true
dnf -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-$(rpm -E '%rhel').noarch.rpm
dnf -y install libptytty-devel || true
```

- Instala el plugin `config-manager` para `dnf`.    
- Activa el repositorio **CRB** (Code Ready Builder) que contiene paquetes -devel.
- Añade **EPEL** para ampliar disponibilidad de paquetes en CentOS/Oracle Linux.
- Intenta instalar `libptytty-devel`. Los `|| true` evitan que un fallo corte el script, permitiendo un plan B.


Al momento de generar configure y volverlo a ejecutar ahora no me decía nada, se compiló sin problema

Tras disponer de dependencias, `autoreconf/configure` detectan las librerías y generan Makefiles válidos. `make && make install` completa la instalación de `rlwrap`.

## Cambiar al usuario administrador
Otra cuestión que me parece importante destacar es como cambiar al usuario administrador, siendo que tal vez te encuentras siendo root en un momento dado

```bash
su - <usuario>
# Además uno puede saber el usuario que es en un momento dado ejecutando:
whoami
```


---
# Contenido del reporte
- [ ] Elementos comunes
- [ ] Contenidos solicitados en el documento de instalación de Docker
	- [ ] 
- [ ] $C1$ Salida del validador



