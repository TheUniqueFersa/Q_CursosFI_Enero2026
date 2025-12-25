---
estado: STANDBY
tipo_nota: Essentia
Ruta: PROGRAMACIÓN
LIGHTVOLT: ⚡3🟠
Materia: Software de trabajo
pertenece a:
  - "[[♣Platzi Master]]"
  - "[[‼Essentia]]"
Serie_Platzi: I. FUNDAMENTOS
fecha_creado: 2024-05-01
fecha_terminado: 
terminado: false
image: 
Calificación: ⭐⭐⭐⭐
dificultad: ⚪
Completado: 3
Incompleto: 20
Total: 23
profesor(a): Freddy Vega
tags: 
nombre: 
links_url:
  - https://platzi.com/cursos/git-github/
horas_totales: 22
horas_contenido: 6
horas_práctica: 16
horas_empleadas: 4
próxima_clase:
  - https://platzi.com/home/clases/1557-git-github/19978-creando-un-fork-contribuyendo-a-un-repositorio/
próxima_fecha: 
---
# ***Curso Profesional de Git y GitHub***

---
# ¿Qué es Git?
![[Que_es_Git-8f5b6780-47b4-4ff7-9a8a-6fdec5a0f1af.webp]]


>Git fue diseñado para operar en un entorno Linux. Actualmente, es multiplataforma, es decir, es compatible con Linux, MacOS y Windows. En la máquina local se encuentra Git, se utiliza bajo la terminal o línea de comandos y tiene comandos como _merge, pull, add, commit_ y _rebase_, entre otros.


 ## Para qué proyectos sirve Git

>Con Git se obtiene una mayor eficiencia usando archivos de texto plano, ya que con archivos binarios no puede guardar solo los cambios, sino que debe volver a grabar el archivo completo ante cada modificación, por mínima que sea, lo que hace que incremente demasiado el tamaño del repositorio.

>“Guardar archivos binarios en el repositorio de Git no es una buena práctica, únicamente deberían guardarse archivos pequeños (como logos) que no sufran casi modificaciones durante la vida del proyecto. Los binarios deben guardarse en un CDN”.

>No existen cambios, corrupción en archivos o cualquier alteración sin que Git lo sepa. Git cuenta con 3 estados en los que es posible localizar archivos: Staged, Modified y Committed.

# Introducción a Git
## Instalando...

### MinTTY
- [x] Que es? ✅ 2024-07-21

>ℹ Originalmente llamado *MinTTY* siguiendo el ejemplo de PuTTY, pero posteriormente su estilo cambio al de *mintty* para acoplarse más al estilo minimalista del proyecto.
>
>Mintty is based on the terminal emulation and Windows frontend parts of **PuTTY**, but improves on them in a number of ways, particularly regarding xterm compatibility.

>✅💬 **[[#Mintty]]** es un emulador de terminal gratuito y de código abierto para Cygwin, el entorno similar a Unix (diseñado) para Windows. Es el emulador de terminal predefinido en la terminal de Cygwiny también es utilizado por **Git Bash**

>🤖🗣 *Compatible con estándares de terminal Unix, MinTTY permite una amplia configuración de fuentes, colores y apariencia, soporta funciones avanzadas como selección de texto con el ratón y múltiples pestañas, y se integra con el portapapeles de Windows, destacándose por su buen rendimiento y manejo eficiente de operaciones de entrada/salida.*

>🤖🗣 **Cygwin**
>*Cygwin es una colección de herramientas de código abierto que permite a los usuarios de Windows ejecutar aplicaciones y comandos nativos de Unix en su sistema, proporcionando una capa de compatibilidad que emula el entorno de Unix sobre Windows. Ofrece un entorno de desarrollo completo similar al de Unix, incluyendo compiladores, bibliotecas y herramientas, así como un shell de Unix (bash) y comandos comunes. Además, emula un sistema de archivos similar al de Unix, integrándose con el de Windows, facilitando la transición entre ambos entornos para desarrolladores y administradores de sistemas.*

>🧠 **MinGW**, anteriormente conocido como MinGW32, es una implementación de los *compiladores GCC* para la plataforma Win32
### OpenSSL
- [ ] Qué es OpenSSL?


# Comandos básicos en Git
```bash
git status
git add
git commit -m ""
git config --list
git config --list --show-origin
git config --global user.name "theuniqueFersa"
git config --global user.email "apoco@fersa.com"
```

## Diferencia entre comandos `--bandera -b` 
Los comandos con solo 1 ``-`` indican que las letras que siguen son cada uno un comando y lo quieres juntar en una sola llamada, ejemplo:
`ls -al` -a y -l son cada uno un comando

Los comandos con 2 `--`  indican que las letras que siguen son 1 solo comando de nombre 'tal', ejemplo:
`git --global` (NO es -g -l -o ..., sino que es el comando *global*)
## Analizar cambios en los archivos de tu proyecto con Git
### ``git show``
- [ ] Poner conversación con mi tío


## *``git diff``*
- [ ] Hacer ejemplo gráfico de lo que es *git diff* y su poder de verdad

# Estados de un **commit**
- [x] Hacer o piratear diagrama ✅ 2024-07-01

>Gracias compañero por este aporte:
![[Github Profesional. Estados de un Commit.webp]]

- [ ] Hay más estados que **tracked** y **untracked**?

# Volver al tiempo con *``checkout``* y *``reset``*

## ``git reset``

### Con bandera `--hard`
El **más agresivo**
Literalmente vuelve en el tiempo, porque todo se pasa a como era en el commit solicitado, esto quiere decir que tu trabajo del "ahora futuro" se borra y ahora tu **head** está en ese commit, pero ahora ningún commit posterior existe.
### Con bandera `--soft`


## Ejemplo de ``git diff``
En este caso, se tenían ya commiteados los archivos, pero se hicieron cambios.
Como se puede ver, al hacer git status dice *modified*
![[Curso Profesional de Git y GitHub - Ej. git diff.png]]

Al ejecutar ``git diff`` uno se puede dar cuenta que para cada archivo que se ha modificado y se encuentra *not staged* se hace una impresión de los cambios que se han hecho.
Con **rojo** en lo que se ha quitado y *verde* lo que se ha añadido


## ``git log --stat``
Imprime los cambios realizados en los archivos de manera general

> [!NOTE] Ejemplo ``git log`` normal
> ![[Curso Profesional de Git y GitHub - git log normal.png]]

> [!NOTE] Ejemplo ``git log --stat``
> ![[Curso Profesional de Git y GitHub - git log --stat.png]]

## ``git checkout``
Comando para ver como era una versión en un commit


- [ ] Por resumir
Los comandos git reset y git rm tienen utilidades muy diferentes, pero pueden confundirse fácilmente.

## Resumen ==Platzi==
### Git reset

El comando `git reset` es una herramienta poderosa que te permite deshacer o revertir cambios en tu repositorio de Git. Lo puedes ejecutar de tres maneras diferentes, con las líneas de comando `--soft, --mixed y --hard`.

Pero no como `git checkout` que nos deja ir, mirar, pasear y volver. Con `git reset` volvemos al pasado sin la posibilidad de volver al futuro. Borramos la historia y la debemos sobreescribir. No hay vuelta atrás.

### Tres árboles en Git

Para entender lo anterior, recordemos que los “tres árboles” de Git son estructuras de datos basadas en nodos y punteros que Git utiliza para hacer seguimiento a un cronograma de ediciones, aunque no sean estructuras en forma de árbol en el sentido tradicional.

La mejor forma de entender estos mecanismos es creando un conjunto de cambios en un repositorio y siguiéndolos a través de los tres árboles. Averigüémoslo.

```{code-block]
$ mkdir git_reset_test
$ cd git_reset_test/
$ git init .
Initialized empty Git repository in /git_reset_test/.git/
$ touch reset_lifecycle_file
$ git add reset_lifecycle_file
$ git commit -m"initial commit"
[main (root-commit) d386d86] initial commit
1 file changed, 0 insertions(+), 0 deletions(-)
create mode 100644 reset_lifecycle_file
```

![arboles-git.png](https://static.platzi.com/media/user_upload/arboles-git-3092a895-4d68-4d40-b397-033e2d5f0767.jpg)

### ¿Cómo funciona Git Reset en tu flujo de trabajo?

`git reset` permite moverte entre diferentes commits para deshacer o rehacer cambios. Git guarda todos lo nuevo del repositorio como commits, que son instantáneas del estado del código en un momento dado y existen variaciones de este comando.

#### Variaciones de Git Reset

- `git reset --soft`: Borra el historial y los registros de Git de commits anteriores, pero guarda los cambios en Staging para aplicar las últimas actualizaciones a un nuevo commit.
- `git reset --hard`: Deshace todo, absolutamente todo. Toda la información de los commits y del área de staging se elimina del historial.
- `git reset --mixed`: Borra todo, exactamente todo. Toda la información de los commits y del área de staging se elimina del historial.
- `git reset HEAD`: El comando `git reset` saca archivos del área de staging sin borrarlos ni realizar otras acciones. Esto impide que los últimos cambios en estos archivos se envíen al último commit. Podemos incluirlos de nuevo en staging con `git add` si cambiamos de opinión.

Ten en cuenta que, si deshaces commits en un repositorio compartido en GitHub, estarás cambiando su historia y esto puede causar problemas de sincronización con otros colaboradores.

### ¿Qué es git reset HEAD?

`git reset HEAD` es un comando que te permite revertir los cambios que ya habías preparado para subir, y moverlos de vuelta a tu proyecto. Con este comando puedes cancelar los cambios que ya habías agregado, para que puedas revisarlos, modificarlos o deshacerlos antes de confirmarlos con un commit.

### Git rm

Por otro lado, `git rm` es un comando que nos ayuda a eliminar archivos de Git sin eliminar su historial del sistema de versiones. Para recuperar el archivo eliminado, necesitamos retroceder en la historia del proyecto, recuperar el último commit y obtener la última confirmación antes de la eliminación del archivo.

Es importante tener en cuenta que `git rm` no puede usarse sin evaluarlo antes. Debemos usar uno de los flags siguientes para indicarle a Git cómo eliminar los archivos que ya no necesitamos en la última versión del proyecto.

#### Variaciones de Git rm

- `git rm --cached`: Elimina archivos del repositorio local y del área de staging, pero los mantiene en el disco duro. Deja de trackear el historial de cambios de estos archivos, por lo que quedan en estado `untracked`.
- `git rm --force`: Elimina los archivos de Git y del disco duro. Git guarda todo, por lo que podemos recuperar archivos eliminados si es necesario (empleando comandos avanzados).

¡Al usar git rm lo que haremos será eliminar este archivo completamente de git!

### ¿Cuál es la diferencia entre git rm y git reset Head?

La diferencia principal entre `git rm` y `git reset HEAD` radica en que `git rm` elimina archivos del repositorio y de la historia del proyecto, mientras que `git reset` saca los cambios del área de preparación y los mueve del espacio de trabajo, sin afectar la historia del repositorio.

![git-reset (1).png](https://static.platzi.com/media/user_upload/git-reset%20%281%29-77a1294a-fb8b-43d0-aace-a517c1a05c2e.jpg)

Es importante tener en cuenta el efecto que cada comando tiene en el proyecto y usarlos según tus necesidades y objetivos específicos.

### ¿Cuándo utilizar git reset en lugar de git revert?

Para reescribir la historia del repositorio y eliminar confirmaciones anteriores, se utiliza `git reset`. Para deshacer cambios de confirmaciones anteriores de forma segura sin modificar la historia del repositorio, se emplea `git revert`.

![lifecycle.png](https://static.platzi.com/media/user_upload/lifecycle-674998bf-5510-4dc9-9840-edcbe86bf1e8.jpg)

### Resumen

Para evitar problemas en el trabajo, es valioso entender las implicaciones y riesgos de cada comando y elegir el enfoque adecuado según las necesidades y el flujo de trabajo del proyecto.

Con `git rm` eliminamos un archivo de Git, pero mantenemos su historial de cambios. Si no queremos borrar un archivo, sino dejarlo como está y actualizarlo después, no debemos usar este comando en este commit.

Empleando `git reset HEAD`, movemos los cambios de Staging a Unstaged, pero mantenemos el archivo en el repositorio con los últimos cambios en los que hicimos commit. Así, no perdemos nada relevante.
### Siguientes pasos

Bueno, todos los cambios están en el área de Staging, incluido el archivo con los cambios que no están listos. Esto significa que debemos sacar ese archivo de Staging para poder hacer commit de todos los demás.

- [ ] No entendí la diferencia entre git rm y git reset (las banderas que no son HEAD)


- [ ] Para qué sirve git revert


# Flujo de trabajo básico en Git

![[Curso Profesional de Git y GitHub - comandos variados.png]]
Ambos conceptos de ``git fetch`` y ``git merge`` se fusionan en un único comando llamado ``git pull``


## ``git commit -a``
Comando que incluye el add
*Solo funciona para archivos previamente añadidos*

## Ramas
### ``git branch``
```shell
git branch # Muestra todas las ramas en local
```
>Crear una rama


### ``git checkout``
```shell
git checkout [rama]
```
>Cambiar a una rama


> [!NOTE] Aportación de comunidad
> Las ramas [(branches)](https://platzi.com/clases/1557-git-github/19947-que-es-un-branch-rama-y-como-funciona-un-merge-en-/) son la forma de hacer cambios en nuestro proyecto sin afectar el flujo de trabajo de la rama principal. Esto porque queremos trabajar una parte muy específica de la aplicación o simplemente experimentar.
La cabecera o `HEAD` representan la rama y el commit de esa rama donde estamos trabajando. Por defecto, esta cabecera aparecerá en el último commit de nuestra rama principal. Pero podemos cambiarlo al crear una rama (`git branch rama`, `git checkout -b rama`) o movernos en el tiempo a cualquier otro commit de cualquier otra rama con los comandos (`git reset id-commit`, `git checkout rama-o-id-commit`).

## Cómo funcionan las ramas en GIT

Las ramas son la manera de hacer cambios en nuestro proyecto sin afectar el flujo de trabajo de la rama principal. Esto porque queremos trabajar una parte muy específica de la aplicación o simplemente experimentar.

- **git branch -nombre de la rama-**: Con este comando se genera una nueva rama.
    
- **git checkout -nombre de la rama-**: Con este comando puedes saltar de una rama a otra.
    
- **git checkout -b rama**: Genera una rama y nos mueve a ella automáticamente, Es decir, es la combinación de git branch y git checkout al mismo tiempo.
    
- **git reset id-commit**: Nos lleva a cualquier commit no importa la rama, ya que identificamos el id del tag., eliminando el historial de los commit posteriores al tag seleccionado.
    
- **git checkout rama-o-id-commit**: Nos lleva a cualquier commit sin borrar los commit posteriores al tag seleccionado.
    
*Aporte creado por: Carlos Eduardo Diaz*


## Fusión de ramas con ``git merge``
El comando:
```shell
git merge [branch]
```
hace la fusión de la rama "*branch*" con la rama en la que uno está posicionado, de esta forma si se quiere hacer un MERGE de la rama *main* con la rama "*branch*" se tiene que posicionar/cambiar a la rama main primero y después ejecutar el comando de arriba para empezar el MERGE

>☁**Recuerda**: El comando para cambiar la rama es
```shell
git checkout [rama]
```
## *Conflictos*

>La sintaxis de conflictos es 
```shell
>>>>>>HEAD
//código en conflicto versión de la HEAD
========
//código en conflicto versión en la rama 'branch'
>>>>> branch
```
Y esta se escribe sobre tus documentos donde tienes que corregirlo.

Se puede hacer desde el bloc de notas, solo es eliminar la que no quieres y dejar la que quieres
Desde *VSCode* los botones de accept te facilitan la tarea de estar eliminando manualmente, pero hace básicamente lo mismo

>👁‍🗨Un **MERGE** es básicamente un commit, por lo que este contiene también debe contener un mensaje

Cuando el MERGE se puede hacer de manera automática el comando `git merge [rama]` debería bastar para abrir VIM y poner un mensaje de *commit*

# Trabajando con repositorios remotos en GitHub
## Llaves públicas y privadas
![[Curso Profesional de Git y GitHub - Llaves públicas y privadas.png|450]]


## Configura tus llaves SSH en local
Usaría el método HTTPS

Tenemos que añadirle un candado adicional

Tus contraseñas se quedan localmente
>- [x] 💭 Como se puede ver en *credenciales* **de windows** ✅ 2024-07-21

En tu entorno local (en la computadora)

Mejor ocupamos el método **SSH**
- [ ] 🔍Buscar más sobre SSH

>ℹ **SSH** Secure Shell

- [ ] No tener que poner nombre y contraseña? ❓

>
### Crear una llave SSH
- 1. Estar en *home*
```shell
ssh-keygen -t rsa -b 4096 -C "holafersa@gmail.com"
```
- 2. Contraseña adicional de texto a tu llave (*passphrase*)
Una vez acabe y te de el *randomart*:

- 3. Revisar que el servidor de llaves *SSH* esté prendido
```shell
eval $(ssh-agent -s)
```
![[Curso Profesional de Git y GitHub - eval $.png]]
Así se vería cuando se ejecuta correctamente (lo hace en *git bash*)
- 4. Agregar la **llave privada que acabamos de crear**
```shell
ssh-add ~/.ssh/id_rsa
```
![[Curso Profesional de Git y GitHub - ssh added to local computer.png]]
>ℹ Se visualiza cuando ya se ha añadido la llave privada ☝

- [ ] Investigar más sobre este comando

>

- 5. Finalmente, en [github settings/keys](https://github.com/settings/keys) añadimos nuestra **llave pública**

- [ ] Verificar si este es todo lo que hay que hacer en la clase de nuevo y en un video aparte en Youtube

- [ ] Que es un randomart?

>

>Ya creamos nuestro entorno local, ahora queda:
>- Conectarnos con GitHub
>- Reemplazar conexión HTTPS por SSH
>- Empezar a hacer ``git pull`` y ``push``

- [ ] 🔍Diferencia entre HTTPS y SSH y porque aún puedo hacerlo por HTTPS?
- [ ] Hay alguna vulnerabilidad?

>💬
>Se puede decir que uno empieza con HTTPS, pero SSH es más seguro
>- [ ] Aquí entra lo que no conozco, si GitHub realmente obliga a todos los repositorios a usar SSH
>Creamos nuestra llave SSH por equipo, es decir por usuario (computadora)
>
>Esa la usaremos para encriptar nuestros proyectos y justamente sería la **conexión** que tenemos desde un *repositorio en línea* con *nuestro entorno local*, o sea computadora.

*Una vez que ya creamos las llaves localmente, nos conectamos con GitHub y reemplazamos nuestras conexiones, ya podemos empezar a trabajar*

## Primer ``push``
```shell
PS C:\xampp\htdocs\ejs_git> git remote -v
#Para que sea "verbal"
origin  https://github.com/TheUniqueFersi/web_playgrounds.git (fetch)
origin  https://github.com/TheUniqueFersi/web_playgrounds.git (push)
```

```shell
git branch -m main
# Le indicas que esta es la rama principal con la que estas trabajando
git push origin main
# empujar a la rama principal en el repositorio remoto
```

```shell
git pull origin main
# Trae todo lo del origen rama "main"
git pull origin main --allow-unrelated-histories
# Permite el merge ante el error
fatal: refusing to merge unrelated histories
```

![[#Primer ``push`` *==Platzi==* <- *Alumno*]]

En caso de que al hacer `git pull` diga algo así como:
```shell
There is no tracking information for the current branch.
Please specify which branch you want to merge with.
...
```
 ejecuta:
```shell
git pull origin main
# Para específicar que rama
```

- Una vez que actualizaste la URL a una SSH, cuando hagamos pull o push nos lanzará el mensaje:
```shell
The authenticity of host 'github.com (140.82.112.3)' can't be established.
ED25519 key fingerprint is SHA256: ...
```
![[Curso Profesional de Git y GitHub -  solicitud de fingerprint al cambiar a SSH.png]]
>ℹ Se puede apreciar en la imagen que ☝ reconoció la nueva conexión

- Por lo que nos pide que confirmemos con "``yes``"
- Además si se añadió originalmente un *passphrase key*, se le es solicitado. Cuando es verificado procede a hacer lo usual

De tal forma que ahora al ejecutar
```shell
PS C:\xampp\htdocs\ejs_git> git remote -v
origin  git@github.com:TheUniqueFersi/web_playgrounds.git (fetch)
origin  git@github.com:TheUniqueFersi/web_playgrounds.git (push)
```
las conexiones han cambiado a **SSH**

>💬 Actualización de conexiones
>- Se creó localmente una llave SSH
>	- Se hizo que el equipo reconociera dicha llave (**privada**)
>- Se añadió la **llave pública** en GitHub para que desde allá se pueda *encriptar* los datos y solo yo pueda *desencriptarlos*
>- Se actualizó la URL para que el repositorio use **SSH**, de tal forma que ahora la comunicación entre *origin* y mi equipo *local* es por SSH

## Tags
- [ ] Investigar más sobre los tags

>
![[#Tags ==Platzi==]]

```bash
git log --all --graph --decorate --oneline
# O puedes crear un alias (mundo de linux)
alias arbolito ="git log --all --graph --decorate --oneline"
```

- [ ] revisar como poder guardar el álias de manera permanente desde config

```shell
git tag -a v0.1 -m "Resultado de las primera clases del curso" [HASH]

# Muestra la lista de todos los tags existentes
git tag

# Saber a que hash esta asignado un tag
git show-ref --tags

history
```
>- [ ] Después de asignarle un tag, el hash cambia?

**Hay que mandarlo a internet**
```shell
# Manda los tags locales al repositorio en línea
git push origin --tags
```

### Corregir un *tag errado*
```shell
git tag -d [nombredelTag]

# Traer del repo
git pull origin master
git push origin --tags
```

>👀 No se borran en GitHub de manera automática, para eso:

```shell
# Borra definitivamente en el remoto
git push origin :refs/tags/[nombreTagAEliminar]
```

## Empujar ramas al servidor
```shell
git show-branch #cuales son las ramas que existen pero con su historia
git show-branch --all #más info
gitk # abre en un software la historia de manera visual
```

```shell
git push origin [nombreRamaAEmpujar]
```

>📌🤓🧠
>``gitk`` -> Abre interfaz visual para ver las versiones oooo:


## Múltiples colaboradores
- [ ] No se requieren usuario y contraseña porque el repo es público?


>- [ ] 👁‍🗨❓
>En el ejercicio de la clase el repositorio es ¿público?
>No nos pide *usuarios y contraseña* al momento de hacer ``git push``
>Pero si cuando hacemos `git push` 
>- Tenemos que añadirlo como usuario colaborador si queremos que esa usuario pueda hacer push

# Pull Requests

> [!NOTE] Detonadores
> ❓ ¿Para que nos sirven los Pull requests?
> ❓ ¿Cómo hago un Pull Request?

![[#Pull Requests ==*Alumno*==]]




---
# ***INTERCONN***
## Conexiones
Notas secundarias
Notas que han de considerarse para la revisión de la actual, para tener contexto
## Recursos
### Aportaciones
#### [[#Analizar cambios en los archivos de tu proyecto con Git]]
![[Analizar cambios en los archivos de tu proyecto con Git-f6f2fe08-e2e9-46ef-86fa-6180354bc151.webp]]
Recursos para estudiar o revisar temas relacionado. -> Para seguir aprendiendo

---
#### [[#Flujo de trabajo básico en Git]]

> [!NOTE] Aportación de la comunidad -> Comandos útiles para trabajo en repositorios colaborativos
> Algunos comandos que pueden ayudar cuando colaboren con proyectos muy grandes de github:
1. git log --oneline - Te muestra el id commit y el título del commit.
2. git log --decorate- Te muestra donde se encuentra el head point en el log.
3. git log --stat - Explica el número de líneas que se cambiaron brevemente.
4. git log -p- Explica el número de líneas que se cambiaron y te muestra que se cambió en el contenido.
5. git shortlog - Indica que commits ha realizado un usuario, mostrando el usuario y el titulo de sus commits.
6. git log --graph --oneline --decorate y
7. git log --pretty=format:"%cn hizo un commit %h el dia %cd" - Muestra mensajes personalizados de los commits.
8. git log -3 - Limitamos el número de commits.
9. git log --after=“2018-1-2” ,
10. git log --after=“today” y
11. git log --after=“2018-1-2” --before=“today” - Commits para localizar por fechas.
12. git log --author=“Name Author” - Commits realizados por autor que cumplan exactamente con el nombre.
13. git log --grep=“INVIE” - Busca los commits que cumplan tal cual está escrito entre las comillas.
14. git log --grep=“INVIE” –i- Busca los commits que cumplan sin importar mayúsculas o minúsculas.
15. git log – index.html- Busca los commits en un archivo en específico.
16. git log -S “Por contenido”- Buscar los commits con el contenido dentro del archivo.
17. git log > log.txt - guardar los logs en un archivo txt

---
#### [[#Fusión de ramas con ``git merge``]]

- **Git nunca borra nada**, a menos que nosotros se lo indiquemos. Cuando usamos los comandos `git merge` o `git checkout` estamos cambiando de rama o creando un nuevo _commit_, no borrando ramas ni _commits_ (recuerda que puedes borrar commits con `git reset` y ramas con `git branch -d`).

Git es muy inteligente y puede resolver algunos conflictos automáticamente: cambios, nuevas líneas, entre otros. Pero algunas veces no sabe cómo resolver estas diferencias, por ejemplo, cuando dos ramas diferentes hacen cambios distintos a una misma línea.

Esto lo conocemos como **conflicto** y lo podemos resolver manualmente. Solo debemos hacer el _merge_, ir a nuestro editor de código y elegir si queremos quedarnos con alguna de estas dos versiones o algo diferente. Algunos editores de código como Visual Studio Code nos ayudan a resolver estos conflictos sin necesidad de borrar o escribir líneas de texto, basta con hacer clic en un botón y guardar el archivo.

Recuerda que siempre debemos crear un nuevo commit para aplicar los cambios del merge. Si Git puede resolver el conflicto, hará commit automáticamente. Pero, en caso de no pueda resolverlo, debemos solucionarlo y hacer el commit.

Los archivos con conflictos por el comando `git merge` entran en un nuevo estado que conocemos como **_Unmerged_**. Funcionan muy parecido a los archivos en estado _Unstaged_, algo así como un estado intermedio entre Untracked y Unstaged. Solo debemos ejecutar `git add` para pasarlos al área de staging y `git commit` para aplicar los cambios en el repositorio.

##### Cómo revertir un merge

Si nos hemos equivocado y queremos cancelar el merge, debemos usar el siguiente comando:

```
git merge --abort
```

##### Conflictos en repositorios remotos

Al trabajar con otras personas, es necesario utilizar un repositorio remoto.  
­  
-Para copiar el repositorio remoto al directorio de trabajo local, se utiliza el comando `git clone <url>`, y para enviar cambios al repositorio remoto se utiliza `git push`.  
-Para actualizar el repositorio local se hace uso del comando `git fetch`, luego se debe fusionar los datos traídos con los locales usando `git merge`.

- Para traer los datos y fusionarlos a la vez, en un solo comando, se usa `git pull`.  
    ­- Para crear commits rápidamente, fusionando `git add` y `git commit -m ""`, usamos `git commit -am ""`.  
    ­- Para generar nuevas ramas, hay que posicionarse sobre la rama que se desea copiar y utilizar el comando `git branch <nombre>`.
- Para saltar entre ramas, se usa el comando `git checkout <branch>`  
    ­- Una vez realizado los cambios en la rama, estas deben fusionarse con `git merge`.
- El merge ocurre en la rama en la que se está posicionado. Por lo tanto, la rama a fusionar se transforma en la principal.
- Los merges también son commits.
- Los merges pueden generar conflictos, esto aborta la acción y pide que soluciones el problema manualmente, aceptando o rechazando los cambios que vienen.
---
#### [[#Llaves públicas y privadas]]
Las **llaves públicas y privadas**, conocidas también como cifrado asimétrico de un solo camino, sirven para mandar mensajes privados entre varios nodos con la lógica de que firmas tu mensaje con una llave pública vinculada con una llave privada que puede leer el mensaje.

Las llaves públicas y privadas nos ayudan a cifrar y descifrar nuestros archivos de forma que los podamos compartir sin correr el riesgo de que sean interceptados por personas con malas intenciones.

##### Cómo funciona un mensaje cifrado con llaves públicas y privadas

- 1. Ambas personas deben crear su llave pública y privada.
- 2. Ambas personas pueden compartir su llave pública a las otras partes (recuerda que esta llave es pública, no hay problema si la “interceptan”).
- 3. La persona que quiere compartir un mensaje puede usar la llave pública de la otra persona para cifrar los archivos y asegurarse que solo puedan ser descifrados con la llave privada de la persona con la que queremos compartir el mensaje.
- 4. El mensaje está cifrado y puede ser enviado a la otra persona sin problemas en caso de que los archivos sean interceptados.
- 5. La persona a la que enviamos el mensaje cifrado puede emplear su llave privada para descifrar el mensaje y ver los archivos.

Nota: puedes compartir tu llave pública, pero nunca tu llave privada.

>*Aporte creado por: David Behar*



---
#### [[#Primer ``push``]] *==Platzi==* <- *Alumno*
##### Actualizar la URL del repo de HTTP a SSH
Ahora podemos actualizar la URL que guardamos en nuestro repositorio remoto, solo que, en vez de guardar la URL con HTTPS, vamos a usar la URL con SSH:

```BASH
git remote set-url origin url-ssh-del-repositorio-en-github
```

##### Comandos para copiar la llave SSH: (Al portapapeles)

- **Mac**:

```
pbcopy < ~/.ssh/id_rsa.pub
```

- **Windows (Git Bash)**:

```
clip < ~/.ssh/id_rsa.pub
```

- **Linux (Ubuntu)**:

```
cat ~/.ssh/id_rsa.pub
```

> Descubre cómo funcionan los [Git Tags](https://platzi.com/clases/1557-git-github/19952-tags-y-versiones-en-git-y-github/).


> [!NOTE] 👥 Aporte de: Juan Luis Rojas

---


#### [[#Tags]] ==Platzi==
En Git, las etiquetas o **Git tags** tienen un papel importante al asignar versiones a los commits más significativos de un proyecto. Aprender a utilizar el comando git tag, entender los diferentes tipos de etiquetas, cómo crearlas, eliminarlas y compartirlas, es esencial para un flujo de trabajo eficiente.

![tagging (1).png](https://static.platzi.com/media/user_upload/tagging%20%281%29-12fce53a-7a10-4eab-9b45-c37111d925f8.jpg)

##### **Creación de etiquetas en Git**

Para crear una etiqueta, ejecuta el siguiente comando:

```{code-block}
git tag >
```

Sustituye con un identificador semántico que refleje el estado del repositorio en el momento de la creación. Git admite etiquetas anotadas y ligeras.

Las etiquetas anotadas almacenan información adicional como la fecha, etiquetador y correo electrónico, y son ideales para publicaciones públicas. Las etiquetas ligeras son más simples y se emplean como “marcadores” de una confirmación específica.

##### **Listado de etiquetas**

Para obtener una lista de etiquetas en el repositorio, ejecuta el siguiente comando:

```{code-block}
git tag
```

Esto mostrará una lista de las etiquetas existentes, como:

```{code-block}
v1.0
v1.1
v1.2
```

Para perfeccionar la lista, puedes utilizar opciones adicionales, como **`-l`** con una expresión comodín.


#### [[#Pull Requests]] ==*Alumno*==
![[Curso Profesional de Git y GitHub - Pull Requests.webp]]



### Materiales para el Curso

| Clase                | Material                                                                                                 | Estado |
| -------------------- | -------------------------------------------------------------------------------------------------------- | ------ |
|                      | https://platzi.com/blog/cambios-en-github-master-main/                                                   | ❌      |
| [[#Primer ``push``]] | 👥 [How to manage the passphrase for an SSH key](https://www.simplified.guide/ssh/set-remove-passphrase) | ❌      |
**TOTALIDAD DE MATERIALES REVISADOS**:


## Referencias
Referencia a notas externas como fuente de información
Referencias externas de otra fuente de información