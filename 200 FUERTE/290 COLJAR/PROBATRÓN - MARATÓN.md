---
pertenece a:
  - "[[♣THE CLOVERS SOCIETY]]"
tags:
  - ♣_PROYECTO_♣
Completado: 1
Incompleto: 18
Total: 19
modelo:
  - "[[►Proceso de un Proyecto de Programación]]"
---
# ***PROBATRÓN***
>🔶Implementa🔶 [[►Proceso de un Proyecto de Programación]]
# ℹ Abstract
Proyecto de programación para hacer un videojuego de tipo Maratón para la asignatura de Probabilidad

| *LIGHTVOLTS requeridos*                                   | *LIGHTVOLTS de egreso*                                                        |
| --------------------------------------------------------- | ----------------------------------------------------------------------------- |
| Haber definido [[♣THE CLOVERS SOCIETY]]                   | Tutorial de algunas funciones principales en Allegro 5 -> Discípulos de Karel |
| Conocimiento mínimo en C++ para POO                       | Tutorial de cómo hacer SPRITES                                                |
| Conocimiento mínimo para manejar una base de datos en C++ |                                                                               |
# 0. Definición
## Objetivo principal
Ser un juego visualmente atractivo, que permita generar una dinámica de participación activa en clase, con la temática de un MARATÓN.

Para ellos se usaran preguntas y sus posibles respuestas; los jugadores turnarán para  contestar la pregunta asignada, si se equivoca alguno, la ignorancia avanza; en caso contrario, el jugador mismo avanza. La meta es "recorrer una cierta distancia", esto es, que cierto jugador haya conseguido el puntaje necesario para poder terminar la carrera, evitando que la ignorancia gane.
## Requerimientos
### Requerimientos Funcionales
>Solicitados
- [ ] Fuese de los Simpsons
- [ ] Desplegar preguntas
- [ ] Indicar si fue correcta o no la respuesta
	- [ ] En dado caso de que fuese correcta, el puntaje aumenta, un personaje de los simpson avanza hacia la meta
	- [ ] En caso contario, avanza Homero (la ignorancia)
- [ ] Poder ver el progreso de los jugadores en la carrera
- [ ] Poder ver quien gano, los alumnos u Homero

Implícitos
- [ ] Contar con un sistema de Creación de Preguntas, donde se pueda gestionar las posibles respuestas, además de su categorización por tema

>Propuestos

Sobre todo acerca del aspecto del juego
- [ ] La temática de los Simpson podrá ser desactivada
- [ ] Mapa y aspectos como el turno de cada jugador será una referencia a la FI
- [ ] Poder seleccionar la cantidad de personajes (Simpson) jugables que irán contra Homero
	- [ ] Tener personajes personalizados, con nombres del Usuario
- [ ] Poder seleccionar la cantidad de preguntas, así como de qué tema
- [ ] Guardar los puntajes de los ganadores para tener un "podio"

### Requerimientos NO funcionales
- **SPRITES**
	- [ ] SPRITES originales, en Pixel Art
	- [ ] SPRITES DINÁMICOS para [[#Secuencias|todas las secuencias]]
	- [ ] [[#Personajes]] únicos en formato Simpson
- Escenarios
	- El salón de Clases, en el pizarrón
	- El mapa del MARATON será la DCB

- Audios
	- [ ] Audios de los Simpson, como frases de Homero

- Preguntas
	- Se dividirán por carpetas, cada pregunta es una imagen que se imprime desde la aplicación, pero debe tener un formato

- Controles
	- Simples, solo botones. O también Mouse?
	- [x] Mouse ✅ 2025-01-30

## Planteamiento del Problema
Poder generar un **sistema completo**.
NUCLEO según el objetivo principal
- Sistema de creación de preguntas con sus respectivas respuestas
- Despliegue de dichas preguntas en una dinámica de juego capaz de soportar:
	- Animaciones con SPRITES
	- Imágenes externas desplegadas
- Además de tener un buen diseño, siguiendo la petición principal

Dicho sistema requiere:
- Manejo de ***objetos*** para una mejor dinámica del programa
- Una manera de ***almacenar*** las imágenes y/o preguntas con sus respuestas

## Justificación
Me lo pidio mi profa de PROBA 🧠

## Descripción del proyecto
### Tecnologías a usar
Lógica
- C++
- Allegro

Gráficos
- PixelArt
- 
## Dinámica (Uso de la aplicación)
### Dinámica del *MARATÓN* (*juego principal*)
- Selección de las especificaciones del juego
>Entiéndase esta parte como las distintas formas de elegir la modalidad del juego:
(Juego rápido, configuración avanzada: selección de número de jugadores, selección de los temas abordados, tipos de preguntas que se desplegarán en el juego, etc)

- Designación de turnos
>💡 Número de inscripción y chiste de ASDRII y NP (niño prodigio)

- [[#Bucle MARATON]] que ocurre hasta que alguna de las dos siguientes cosas ocurran:
	- Homero gane
	- Un jugador llegue a la meta
>Se hace la distinción de que el **configuración del juego** de podría establecer que el juego continue para los jugadores restantes y así ver en qué lugar quedan finalmente
 
 #### Bucle MARATON
 (Programa)
 - Elige el tema dentro de los seleccionados desplegables en dicho MARATON
 - Elige la pregunta y la despliega junto con sus posibles respuestas
(JUGADOR)
- Responde la pregunta 

- Se califica su respuesta, desplegando el estado de su personaje después de hacer esto. Si avanza o se queda en la misma posición, permitiendo que Homero avance

Avanza al siguiente turno

### Dinámica del Sistema de Registro de Preguntas
- Se gestionan los temas existentes (carpetas) y sus preguntas internas
>Generación Automática siguiendo Nomenclatura


### Controles
- [[#Teclado]]
- [[#Mouse]]

#### Teclado

| Tecla                | Acción                      |
| -------------------- | --------------------------- |
| Flechas de dirección | Moverse por la interfaz     |
| Enter                | Aceptar opción seleccionada |
| Espacio              | Activar PROBATRON           |
#### Mouse


# CONVENCIONES
Comando para compilar desde terminal
```shell
g++ .\src\*.cpp -o PROBATRON -I"C:/allegro/include" -L"C:/allegro/lib" -lallegro_monolith -Iinclude
```

