
## GIT
(Comandos)
git config --global user.name "Mona Lisa"
git config --global user.email "a@a"

///---///---///---///---///---///---///---///---///---///---///---



# LINUX
https://learn.microsoft.com/en-us/windows/wsl/install-manual


0. Escribir -lcurses en las configuraciones de la extension de C compile & run 




## DEBIAN

1.- sudo apt update


2.- sudo apt install build-essential
2.1.- [...]


3.- Instalar Git
{
	sudo apt-get update
	sudo apt-get install git

}

4.- Instalar VSCode
{
	
	sudo apt update
	sudo apt install software-properties-common apt-transport-https curl
	curl -sSL https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
	sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"


	(sudo apt install software-properties-common apt-transport-https
	sudo wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
	sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main")

	sudo apt update
	sudo apt install code

}


5.- Clonar el repo ese (como no me dejaba por HTTPS asi no mas:)
{
	sudo apt update
	sudo apt install gh
(por primera vez sando GitHub CLI):
	gh auth login
(Algunas preguntas)
	? What account do you want to log into? GitHub.com
	? What is your preferred protocol for Git operations? HTTPS
	? Authenticate Git with your GitHub credentials? Yes
	? How would you like to authenticate GitHub CLI? Login with a web browser

->Copiar el codigo que se te proporciona
	(Si no abre en la terminal, abre desde un navegador:)
	https://github.com/login/device
e ingresa el codigo anteriormente proporcinado
	(Inicia sesion desde el navegador, y al mismo tiempo auoriza el dispositivo)
-Regresa a la terminal y presiona ENTER
[
	✓ Authentication complete.
	- gh config set -h github.com git_protocol https
	✓ Configured git protocol
	✓ Logged in as TheUniqueFersi
]


	
	(comando que esta en github): (Ni lo use XDD) porque ya con lo anterior
	hecho, puedes hacer los clone con los HTTPS normales, como siempre :D
		gh repo clone []
		

}


6.- Instalar Biblioteca nCurses desde Debian
{
	sudo apt update
	sudo apt-get install libncurses5-dev libncursesw5-dev
}


Cuando no puede compilar:

7.1.- Moverte al directorio donde esta el juego
(con cd /)[Usando ruta absoluta]
7.2.- Escribir el comando
"sudo chmod 777 -R [archivos_texto]"

-----------------------------------------------------------------------------------
8.0.- Correr el Juego desde la terminal de VSCode o desde Debian 
Desde VSCode:
Debido a que se instaló la extension de C compile & run, presionar F6 basta para
correr el codigo (compilarlo)


Desde Debian:
Escribir en la terminal: 
"./juego"
Esto porque se crea un archivo ejecutable y este, se abre con el comando indicado

-----------------------------------------------------------------------------------



Yo la llame y me devuelva el numero de puntos
La cago -> cero puntos
Si le atino, le devuelva dependiendo de la dificultad

Trivia:
Incluir trivia.c

Llamar a la funcion

Acumula strikes (3 strikes) cambia el batiador
Siguiente bateador le meten 3 strikes.
3 outs cambia el jugador.


A las 4 preguntas, cambias de jugador.




Out
A los 3 out se acaba el equipo 












	Funcion que lea archivos de texto
Agarra una ventana (NULL, ruta que va a tomar en el archivo de texto, 2 caracteres con los que inicie y, 2)

Lectura de texto
----
Poner nivel de dificultad

Tenga un programa.
Agarre una pregunta al azar
Que agarre las respuestas que le corresponden a esa pregunta.


-> Emuladores de consola.
-> Empezar a meterme en una ventana

FUNCION CREAR_VENTANA
Crear una ventana por cada cosa que vas a hacer
: Es mas facil correr las cosas
: Es mas facil modificar cada cosa

Despues de crear la funcion
LLamar a la funcion REFRESH

Tabien borrar las ventanas cuando ya no las uses
DESTRUIR_VENTANAS




Una función que yo le meta un número 
(va a ser el número de carreras), un nombre (del jugador) 
yyyy pues que eso lo ponga en un archivo


pero estaría padre que en el archivo solamente se pongan los 5 puntajes más altos









-Instalar gh en Lunux:
https://github.com/cli/cli/blob/trunk/docs/install_linux.md

-Opcional-
sudo apt install tree

COMANDOS (DEBIAN // LINUX)
mkdir = crear directorios
cd
clear

Links que me ayudaron:
https://www.atlassian.com/es/git/tutorials/install-git#linux
https://noviello.it/es/como-instalar-visual-studio-code-en-debian-10-buster/

Funciones Rand()
https://www.chuidiang.org/clinux/funciones/rand.php

Fecha actual:
https://parzibyte.me/blog/2019/07/31/c-obtener-formatear-fecha-actual/#:~:text=Obtener%20fecha%20actual%20en%20C,-Veamos%20el%20siguiente&text=Primero%20obtenemos%20el%20tiempo%20actual,la%20variable%20t%20antes%20mencionada.


///---///---///---///---///---///---///---///---///---///---///---




///---///---///---///---///---> BIOS <---///---///---///---///---///---
Para intentar arreglar lo de la BIOS
https://www.youtube.com/watch?v=-9RnIj-EcdQ


///---///---///---///---///---///---///---///---///---///---///---



Hola Santii
Antes que nada si te pido una gran disculpa, sé que cuando me preguntaste si queria ser parte del equipo era
porque confiabas en mi para hacer un trabajo completo, y mas que nada, que yo diera atencion completa.
Tengo varias cosas que atender en mi casa y ciertamente problemas de organizacion, pero no es momento de escusas;
Te admiro por tu valor y tus ganas de entregar este producto, pero quiero que sepas, que yo NO voy a abandonar al equipo
(aun cuando podemos decir que lo descuide bastante antes, cosa de la cual me arrepiento y me disculpo contigo)

No se si vas a ir a lo de Dani, creo que si confirmaste, pero yo ya le habia dicho que si iba a ir, entonces no puedo
trabajar en esas horas, pero el domingo y el lunes, hasta su hora de entrega, con esepcion de algunas horas por mi 
trabajo de Jovenes, le daré a lo del juego, arreglando los bugs y cosas que tenga.

Hice unos cambios en el repo, te pido que no lo abandones y sigas actualizando tus cambios ahí, mis cambios son de lo que anduvimos hablando el Lunes.


Todavia podemos, disculpa por ser tan incompetente, pero siempre hay que seguir adelante.



Sugiero nos reunamos el domingo mientras le damos y andamos actualizando, pero de que tiene que quedar, tiene que quedar.





Contra de Jovenes: (Feria de la Ciencias)
Nombre de Usuario: feria1653
Contraseña: rgpc9483



Mi nueva contra de Zoom
SUNIEemployee5

Codigo para que me registrara con mi cuenta de github para debian.
8C87-C53D
