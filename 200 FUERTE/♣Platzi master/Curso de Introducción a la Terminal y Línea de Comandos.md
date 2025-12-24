---
estado: STANDBY
tipo_nota: Essentia
Ruta: _LINUXERO
LIGHTVOLT: ⚡3🟠
Materia: Linux
pertenece a:
  - "[[♣Platzi Master]]"
  - "[[‼Essentia]]"
Serie_Platzi: I. FUNDAMENTOS
fecha_creado: 2024-04-22
fecha_terminado: 
terminado: false
image: 
Calificación: ⭐⭐⭐⭐
dificultad: 🟢
Completado: 1
Incompleto: 4
Total: 5
profesor(a): Enrique Devars
tags: 
nombre: 
links_url:
  - https://platzi.com/cursos/terminal/
horas_totales: 11
horas_contenido: 3
horas_práctica: 8
horas_empleadas: 2
próxima_clase:
  - https://platzi.com/home/clases/2292-terminal/37350-variables-de-entorno/
próxima_fecha:
---
---
# ***Curso de Introducción a la Terminal y Línea de Comandos***

| Presentación general del Curso | Apuntes adicionales                                                                                                                                   | Examen |
| ------------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------- | ------ |
|                                | [[diferencia-de-permisos-entre-archivos-y-directorios_2f436ae8-2c28-408d-a7cf-c22e9426b5a2.pdf\|Diferencia de permisos entre archivos y directorios]] |        |
|                                |                                                                                                                                                       |        |
## 🏁 *Objetivos* 🎯
### 🕛⏳ Meta de tiempo ⏰⏲
## 🌿Abstract🌿

## ❓ Preguntas detonadoras ❓

## 📃Guía de Repaso 

## ℹ Índice de contenido

---
# Aprendiendo a caminar en la terminal

![[image(60).webp]]
En la imagen de arriba, se puede apreciar un árbol pequeño de la estructura de carpetas de Linux.
Por defecto uno se encuentra en **home**, donde estarán las carpetas de acuerdo a los usuarios (en la imagen "jono", "mako" y "photos" son usuarios)

## En la terminal:
>`USUARIO`**@**`NOMBRE DEL EQUIPO`:~$

NOMBRE DEL EQUIPO: también conocido como ``HOSTNAME``

### Atajos
#### Virgulilla en Linux (~)
Si se requiere volver al home habría que escribir el siguiente comando:

`cd /home/fersongo` Pero se puede escribir mejor:
`cd ~` Y llegas más rápido.

---
# **Comandos Básicos de la terminal:**

## `ls` Listar archivos
`ls -lh` para ver su peso de una manera mas mas legible

Listar archivos ocultos:
`ls -a` (all)
``-S``: **Bandera** ***Size***, por tamaño
``-r``: Bandera: reversa

## `pwd` Identificar la ruta en la que estamos en nuestro sistema
>*Print Working Directory*

## `cd` Movernos entre directorios

## `mkdir` Crear un directorio
`mkdir [D1] [D2] [D3] [...]`

## `cp` Copiar un archivo
`cp [nombreDelArchivoParaCopiar] [nombreParaLaCopia]`

## `rm` Borrar un archivo
``rm -i`` *interactive*
Sirve para que te pregunte si estás seguro de borrar. **(y/n)** **Tienes que digitar *y***

``rm -r`` :Bandera, *recursive*. repite para todo el contenido dentro
``-f`` Bandera: force, fuerza la eliminación, no le importa el contenido

## `mv` Mover un archivo
`mv [archivoParaMover] [destinoDelArchivo]`
Usas ``mv`` también para ***renombrar***

## `rmdir` Borrar un directorio

## `clear` Limpiar la terminal
También con ``Ctrl + L``


## ``file [elemento]`` Da información acerca del tipo de elemento que le indiques

## ``tree`` Despliega directorios como si fuera un árbol
``tree -L``: Bandera Levels, para profundizar en **n** niveles

## ``touch [archivos]`` Crear archivos
`touch [A1] [A2] [...]`

## Banderas
``-l``: long, más información (de *Long*)
``-h``: human, para visualización humana (por ejemplo el tamaño de los archivos desplegados con su prefijo de Bytes) (de *Human readable*)

### Diferencia entre *-b* y *--bandera*
![[Curso Profesional de Git y GitHub#Diferencia entre comandos `--bandera -b`]]

### Manera de despliegue de banderas
```shell
#Aunque es válido escribir por separado las banderas
comando -b -a -l
#También podemos hacerlo juntas, que es la manera más usada y eficiente
comando -bal
#Tener cuidado de no confundir la forma de comando -b y --b
```

---
# Explorando el contenido de nuestros archivos

## ``head`` Mostrar la cabecera de cualquier archivo (Primeras líneas del archivo)
``head -n [numero de lineas que quieres]`` Muestra las primeras m líneas del archivo

## ``tail`` Muestra las últimas líneas de un archivo

## ``less`` Abrir una interfaz para explorar el contenido del archivo
Dentro de la interfaz, puedes escribir
``/[palabra]``
Para buscar la *palabra* dentro del archivo

## ``xdg-open [archivo]`` Abrir archivos con el editor de texto predeterminado

## ``nautilus [carpeta]`` Abre el sistema de carpetas


``more`` similar a ``less``, pero ``less`` es mejor:
>less is more (dicho de Linux)

### Aportación
Hay aplicaciones que tienen comando propios, como Chrome:

`google-chrome --new-window https://platzi.com/terminal`
Lo que hace es abrir el navegador de Chrome en una página específica

# Comandos con ``CTRL``
## `CTRL + C` mata al programa en proceso

---
# ¿Qué es un comando?
## Tipos de comandos
- ### Un programa ejecutable
- ### Un comando de utilidad de la shell, comando dentro y por defecto del programa
Comando que ya viene por defecto *DENTRO DEL PROGRAMA DE SHELL*

- ### Función de shell
No vienen dentro. Son externas

- ### Un alias


``type``
Indica la clase de comando que es

```shell
fersa@MSI:~$ type cd
cd is a shell builtin
```

**Binario**
```shell
fersa@MSI:~$ type mkdir
mkdir is /usr/bin/mkdir
```

## **Alias**
```shell
fersa@MSI:~$ type ls
ls is aliased to `ls --color=auto'
```


### Crear un Alias
```shell
fersa@MSI:~$ alias l="ls -lh"
fersa@MSI:~$ l
total 0
drwxr-xr-x 1 fersa fersa 4.0K Nov 25  2023  NEWCLOVERS
drwxr-xr-x 1 fersa fersa 4.0K Oct  6  2023  Playground
drwxr-xr-x 1 fersa fersa 4.0K Nov 15  2023  Pruebas
...
```
Cuando se cierra la *terminal* se eliminan los alias


## Pedir ayuda
```shell
[COMANDO] --help #Bandera help

#O

help [COMANDO]

#o

man 
```

`man` de **manual**

```SHELL
info
#es como man pero de manera más resumida
```

```shell
whatis [COMANDO]
```
Descripción muy corte de lo que es

>📌*Ejemplo*
```shell
fersa@MSI:~$ whatis cd
cd: nothing appropriate. #Lol?
fersa@MSI:~$ whatis ls
ls (1)               - list directory contents
```

# Wildcards
>⚡Un superpoder -> *Comodines?*


## * ?
```shell
ls *.txt #Varios caracteres antes de la extensión
ls datos? #Solo 1 caracter después de "datos"
```
## Mayúscula
```shell
ls -d [[:upper:]]*
ls -d [[:lower:]]*
```
>🗨️Muestra solo los directorios que empiezan con mayúscula-minúscula

- [x] Qué era -d? ✅ 2024-07-21

>✅🗨️ Ciertamente habría que recordar que si se pone 
>```shell
>ls [directorio]
>```
>se haría el listado de su contenido, por lo que se se requiere, como arriba, que solo se muestre el nombre de la carpeta, se puede optar por usar -d (información sobre el propio *directorio*)
>>Esto es útil si quieres ver una lista de directorios en el nivel actual sin profundizar en su contenido:
>de tal forma que la sentencia de arriba para obtener los directorios que empiezan con minúsculas o mayúsculas nos arrojaría algo así:
>```SHELL
>fersa@MSI:~$ ls -d [[:upper:]]*
 NEWCLOVERS   Pruebas       'Práctica 11'  'Práctica 6. Lenguaje C'  'Práctica 8'
 Playground  'Práctica 10'  'Práctica 12'  'Práctica 7'              'Práctica 9'
>```



```shell
ls [ad]*
```
Archivos que empiezan con 'a' y con 'i'

## Con números...
`[:alnum:] [:digit:]`

- [ ] 🔍

>

# Redirecciones
## ==Platzi==
### Qué son las entradas y salidas de la terminal

En la consola nosotros generamos una entrada cuando escribimos y una salida casi siempre que ejecutamos un comando.

A las entradas típicamente se les suele llamar **Standard Input** y a las salidas **Standard Output**, además se les suele abreviar como **stdin** y **stdout** respectivamente.

#### Qué son file descriptors

Los file descriptors son números que identifican un recurso. Funciona asociando un número con una acción, archivo o programa, en el caso de la shell tenemos *3 file descriptors*:

![[Curso de Introducción a la Terminal y Línea de Comandos - Redirecciones en shell (stdin, stdout).webp]]


## Redirección
```shell
ls NEWCLOVERS > misRedirecciones.txt
```
Siempre crea un nuevo archivo o lo sobrescribe, para que no lo sobrescriba:
```shell
ls NEWCLOVERS >> misRedirecciones.txt
```

Esto solo redirige el **stdout**, si quiero redirigir el **stderr**, tengo que poner su *file descriptor* (***2***)
```shell
ls oihaskdjfhoa 2> error.txt
```

*Para mandar ambos:* (Se concatena el file descriptor *1 con el 2*)
```shell
ls addasdf > output.txt 2>&1
```


## Redirecciones con *Pipe operator*
Nos permite que el standard output de un comando se convierta en el standard input de otro comando
### Imprimir
```shell
echo "Hola platzi"
#Hola platzi
```

### Concatenar
```shell
cat error.txt output.txt
```

```shell
cat < error.txt
#da lo mismo que 
cat error.txt
```

```shell
tee
```
>Es como <<

- [ ] Revisar más sobre este comando

>

```shell
ls -lh | sort | tee Pictures.txt | less
```

>Para instalar un comando
```shell
sudo apt install [cowsay]
```

![[Curso de Introducción a la Terminal y Línea de Comandos - cowsat y lolcat ejemplo de Pipeoperator.png]]

# Encadenando comandos: Operadores de control
## Manera síncrona
Uno después de otro
```shell
ls ;mkdir holi; cal
```

```shell
cal
# Funcionalidad básica de la terminal que muestra un calendario
```
## Manera *asíncrona*
Abre una nueva consola (segundo plano) utiliza un hilo aparte para el proceso
```shell
ls & date & cal
```

![[Curso de Introducción a la Terminal y Línea de Comandos - comandos asíncronos.png]]
*Creó 2 hilos*
El primero comando se ejecutó en el proceso 1198 y el segundo en el proceso 1199

## Condicional
Si un comando se ejecuta correctamente, se ejecuta otro

```shell
mkdir test && cd test
```
>Primero se ejecuta ``mkdir``, luego si se crea correctamente se cambia a test

## Operador Or
```shell
cd hola || cambia-carpeta hola
```
En este caso, ejecuta solo uno de los comandos, por lo que si uno no es correcto, no importa porque el otro si se ejecutará

- [ ] Checar las notas hechas por ==Platzi== en las últimas dos clases de *redirecciones*


# Permisos
![[Curso de Introducción a la Terminal y Línea de Comandos - Tipos de archivos.png]]

## Tipo de Modo
![[Curso de Introducción a la Terminal y Línea de Comandos - Tipos de modo.png]]
En modo octal en ese orden sería:

| Dueño | Grupo | World |
| ----- | ----- | ----- |
| 7     | 5     | 5     |



![[Curso de Introducción a la Terminal y Línea de Comandos - Permisos en Modo octal.png]]

![[Curso de Introducción a la Terminal y Línea de Comandos - Modo simbólico.png]]


## 🗣 ==Platzi==
Los permisos son las capacidades que tiene cada usuario dentro del sistema operativo, no todos los usuarios pueden hacer todas las acciones sobre ciertos archivos y carpetas.

Cuando listamos archivos utilizando el comando `ls -l` la primera columna que nos aparece es la de permisos.

![image.png](https://static.platzi.com/media/articlases/Images/image%28121%29.png)

## Tipos de archivos

El primer caracter puede ser uno de estos 3:

| Atributo | Tipo de archivo |
| --- | --- |
| - | Es un archivo normal, como un documento de texto, una foto, un video, etc. | 
| d | Por **directory** es un directorio | 
| l | Es un enlace simbólico. Es algo que veremos en próximas clases | 
| b | Bloque especial, son archivos que manejan información para el sistema, como la información de un disco duro |

![Sin título.png](https://static.platzi.com/media/articlases/Images/Sin%20t%C3%ADtulo%284%29.png)

## Permisos de usuario

Los siguientes caracteres se leen de 3 en 3, por cada uno de los tipos de usuario.

### Owner

El dueño del archivo, si no se ha cambiado, es quien lo creo y tiene mayor jerarquía sobre los otros 3. Le corresponden los primeros 3 caracteres de los permisos.

### Group

Se puede crear grupos de usuarios para darle a todos o varios los mismos permisos. A estos usuarios le corresponden el cuarto, quinto y sexto caracter de los permisos de usuarios y tienen mayor jerarquía que el último.

### World

También llamado "otros", es cualquier otro usuario que no pertenezca a un grupo de usuario y tampoco sea el dueño, este tiene la menor jerarquía.

## Tipos de permisos

| Símbolo | Significado | Permiso | 
| --- | --- | --- |
| r | readable | Significa que puede leer su contenido | 
| w | writable | El usuario puede editar el contenido del archivo, también el nombre y los permisos |
| x | executable | El usuario puede ejecutarlo en caso de que sea un programa |

Los permisos se escriben en ese orden rwx. Para indicar que el permiso no está disponible, se escribe un guion.

Ahora que sabes todo esto vamos con un ejercicio. Observa el siguiente grupo de permisos: `drwxr-xr-x` Recuerda que el primer caracter es el tipo y los siguientes se cuentan de 3 en 3 representando cada usuario.

| d | rwx | r-x | r-x | 
| --- | --- | --- | --- | 
| Esto es un directorio | owner | group | world | 
| El dueño puede leer, escribir y ejecutar | El grupo puede leer y ejecutar | Los demás pueden leer y ejecutar |

Vamos con otro

`-rw-r--r--`

| - | rw- | r-- | r-- | 
| --- | --- | --- | --- |
| Esto es un archivo normal, como una imágen o un video | owner | group | world | | 
| El dueño puede leer y escribir | El grupo sólo puede leer | El resto sólo puede leer |

## Representando permisos de forma octal

Si organizamos los permisos de esta forma

| r | w | x | 
| --- | --- | --- |

E indicamos con un cero si el usuario no tiene el permiso y con un uno si el usuario si lo tiene, pongamos de ejemplo el permiso r-x:

| r | w | x | 
| --- | --- | --- |
| 1 | 0 | 1 |

Y ahora esos números los leemos en binario, nos quedaría así.

| r | w | x |
| --- | --- | --- |
| 1 | 1 | 1 | || 7 |

Si repetimos esto con el resto de las combinaciones tenemos un número por cada combinación de permiso, por ejemplo el permiso `r-x` queda así:

| r | - | x |
| --- | --- | --- | 
| 1 | 0 | 1 | || 5 |

Usando todo esto podemos leer el conjunto de permisos `rwxr-xr--`, así:

| r | w | x | | r | - | x | | r | - | - |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | | 1 | 1 | 1| | 1 | 0 | 1 |
| 1 | 0 | 0 | 0 | || 7 |||| 5 |||| 1 |||

## Ejercicios de práctica

Este concepto puede ser algo complicado así que lo mejor es prácticar, te dejaré unos ejercicios para que sea más fácil interpretarlo.

Convierte los siguientes permisos a símbolos y en su representación numérica:

1. De un directorio, el **dueño** tiene permiso de lectura y escritura, el **grupo** tiene permisos de escritura y ejecución y **world** no tiene permisos.
2. De un enlace simbólico el **dueño** tiene todos los permisos, el **grupo** y **world** sólo de lectura.
3. De un archivo comun todos tienen todos los permisos, pero el **world** no tiene permiso de ejecución.

Si sientes que necesitas más información puedes preguntar a la comunidad o prácticar en la terminal.

_Contribución creada con los aportes de: Miguel Gonzalez._

- [ ] Arreglar apuntes


## Modificando permisos en la terminal
### ``chmod``
>Cambia permisos


```shell
chmod 755 [archivo]
```

>💬
>En este caso recordamos los [[#Tipo de Modo|tipos de modo]] y sus diferentes representaciones.
>En este caso se le da un permiso de `-rwxr-xr-x`

### Quitándole y dándole permisos de lectura a un archivo
```shell
# Quitar el permiso de lectura solo al usuario usando el modo simbólico
chmod u-r [archivo]
# -r osea quitarle read


# Ponerle el permiso de lectura
chmod u+r [archivo]
# +r osea darle read
```

![[Curso de Introducción a la Terminal y Línea de Comandos - Intento de leer arch después de quitarle el permiso de lectura.png]]

### Ejercicio
> [!NOTE] Ejercicios con los comandos y permisos
> Usando el modo simbólico, se cambian permisos a un archivo en una sola línea
> ![[Curso de Introducción a la Terminal y Línea de Comandos - Cambio permisos en una línea.png]]
> >☝ Note que el poner espacio entre la coma arroja un error, por lo que no se debe poner
> 


## Cambiar de usuario
### Quienes somos: `whoami`
```shell
whoami
# te dice quienes somos

id
# Te dice el id del usuario (Normalmente el 1000 es el primer usuario en crearse)
```

```shell
su
# Switch user
```
>👀❗📌ℹ
>El comando 
>```shell
>su root
>```
>**en ubuntu no está disponible**, en su lugar:
>```shell
>sudo su
>```


### Ejercicio
> [!NOTE] Ejercicio: Cambio de usuario a root, creación de archivo y demostración que usuarios no roots no pueden eliminar el archivo, para simular ser root se emplea ``sudo``
> ![[Curso de Introducción a la Terminal y Línea de Comandos - Ejercicio root.png]]
> En la imagen se puede apreciar como nos cambiamos de root siendo de ubuntu.
> - Se creo un archivo siendo root
> - Se puede apreciar que entre los permisos solo estan r-
> - Nos cambiamos de vuelta a un usuario no root: No podemos eliminar el archivo creado por un root
> - Para poder simular ser un root, sin tener que iniciar sesión como el, se usa `sudo`

### ``sudo``
```shell
sudo 
# Simula ser root (switch user 'do')
```

### Cambiar contraseña: `passwd`
```shell
passwd
# Cambia contraseña primero pidiendote la actual para cambiarla
```






---
# ***INTERCONN***
## Conexiones
Notas secundarias
Notas que han de considerarse para la revisión de la actual, para tener contexto
## Recursos
### Aportaciones


### Materiales para el Curso

| Clase          | Material                                                                                                                                                                                                   | Estado |
| -------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------ |
| ❓              | [Ejercicios, ejemplos y tests para practicar el STANDAR INPUT, STANDAR OUTPUT y STANDAR ERROR:](https://linuxjourney.com/lesson/stdout-standard-out-redirect)                                              | ❌      |
| [[#Wildcards]] | [[command-line-cheat-sheet_f2552bde-3bb0-4b1c-a1a7-dbd40095fa4f.pdf\|Más comandos y Wildcards cheat-sheet]]                                                                                                | ❌      |
| [[#Permisos]]  | [Cosas que no sabieas sobre el sistema de permisos de linux](https://platzi.com/tutoriales/1667-linux/8811-cosas-que-nos-sabias-sobre-el-sistema-de-permisos-de-linux-realmente-es-octal/)                 | ❌      |
|                | [[diferencia-de-permisos-entre-archivos-y-directorios_2f436ae8-2c28-408d-a7cf-c22e9426b5a2.pdf\|Diferencia de permisos entre archivos y directorios\|Diferencia de permisos entre archivos y directorios]] | ❌      |
**TOTALIDAD DE MATERIALES REVISADOS**:


## Referencias
Referencia a notas externas como fuente de información
Referencias externas de otra fuente de información

