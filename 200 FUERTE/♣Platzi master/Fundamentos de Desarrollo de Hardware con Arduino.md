---
estado: STANDBY
tipo_nota: Essentia
Ruta: PROGRAMACIÓN
LIGHTVOLT: ⚡3🟠
Materia: Hardware
pertenece a:
  - "[[♣Platzi Master]]"
  - "[[‼Essentia]]"
Serie_Platzi: I. FUNDAMENTOS
fecha_creado: 2024-07-05
fecha_terminado:
terminado: false
image:
Calificación:
dificultad:
Completado: 0
Incompleto: 2
Total: 2
profesor(a): Ricardo Celis
tags:
nombre:
links_url:
  - https://platzi.com/cursos/fundamentos-arduino/
horas_totales: 17
horas_contenido: 5
horas_práctica: 12
horas_empleadas: 1
próxima_fecha: 
---
# ***Fundamentos de Desarrollo de Hardware con Arduino***
| Presentación general del Curso                                                             | Apuntes adicionales | Examen |
| ------------------------------------------------------------------------------------------ | ------------------- | ------ |
| [[slides-del-curso-de-fundamentos_4ec24175-489e-4431-8b26-80b0f16a1f12.pdf\|Presentación]] |                     |        |
## 🏁 *Objetivos* 🎯

### 🕛⏳ Meta de tiempo ⏰⏲

## 🌿Abstract🌿

## ❓ Preguntas detonadoras ❓
¿Qué más hay de interesante en los String y los arreglos?

## 📃Guía de Repaso 

## ℹ Índice de contenido

---
# Introducción al Hardware Libre
## Microcontrolador
Especie de computadora
![[Fundamentos de Desarrollo de Hardware con Arduino - Microcontrolador.png]]

![[Pasted image 20240705124533.png]]


### *Resumen de Platzi*
Arduino es una tarjeta donde podemos realizar prototipos o proyectos interactivos. Funciona con un **micro-controlador** _Atmel_ y sus objetivos son hacer lo más fácil posible el manejo de entrada y salida de datos con **pines**, estandarizar el **Layout** _(la disposición de todos los elementos de la tarjeta)_ y extender sus funcionalidades con el uso de **expansiones** (Ethernet, WIFI, conexión a motores, etc).

Arduino también cuenta con su propio **IDE** adaptado a _wiring_ (un framework para el manejo de micro-controladores).

Un **micro-controlador** es una especie de computadora con objetivos mucho más específicos, se encargan de procesar toda la información que ingresa a Arduino.

Cuenta con CPU, Memoria _(EEPROM y SRAM)_ reloj de sistema y periféricos _(entrada y salida de datos a través de pines)_.

Los micro-controladores están en todas partes, se utilizan en lavadoras, pantallas inteligentes, maquinas de correr, cámaras, neveras, etc.

Existen otras placas como: _Arduino Leonardo_, _Arduino 101_, _Arduino Mega_, _Arduino 0_, entre otros.

## ¿Cómo se desarrolla Hardware? (Págs ==2-12==)
1. **Objetivos**: En el caso del Arduino, nuestro objetivo es claro: una tarjeta con la cual podamos crear prototipos de forma muy fácil y rápida.
2. **Diseño**: No solo nos ocupamos de dibujar, debemos preparar todos los elementos electrónicos y mecánicos para funcionar en conjunto. No queremos tener ningún error en la etapa de fabricación.
3. **Pruebas y Manufactura**: Una vez tenemos nuestro diseño, podemos hacer un prototipo. Este es una versión física de nuestros diseños con el fin de encontrar nuevos errores que no consideramos en la etapa de diseño.

En la etapa de manufactura debes tener en cuenta los siguientes elementos:

- **Elección de Componentes y MSRP** _(precio sugerido para fabricantes)_
- **Proveedores** _(DigiKey, Newark o element14 y Mouser Electronics)_
- **Diseño Electrónico y Mecánico**: Tus componentes deben funcionar correctamente entre sí para conseguir un desarrollo optimo. Para la etapa de diseño puedes usar **Kicad** una herramienta desarrollada y utilizada por el CERN.
### (1) Elección de *componentes* y *MSRP*
Componentes: qué electrónica se va a usar

### Proveedores (***Presentación***)

### (2) Diseño Electrónico y Mecánico
**KiCAD**

- [ ] Qué es **KiCAD**?


## Limitaciones de Arduino y qué es el hardware libre
Es de hardware libre, *pero la marca Arduino es protegida*

>Arduino es un proyecto que funciona como hardware libre, lo podemos usar siempre y cuando no copiemos la marca, ni el color. Debemos siempre respetar las patentes que tenemos en nuestro desarrollo del hardware. (*Platzi*)

# Sensores, Actuadores y Procesadores
**Sensores**: Un sensor es un dispositivo, módulo o subsistema cuyo propósito principal es detectar eventos o cambios en el ambiente y enviar información a otros electrónicos, usualmente a una computadora o un procesador.  
**Actuadores**: Complementan el flujo de automatización, pueden ser motores que generen distintos tipos de movimiento.  
**Procesadores**: Tomarán la información de los sensores y realizaran los procesos necesarios para el correcto funcionamiento de nuestro sistema.

![[Fundamentos de Desarrollo de Hardware con Arduino - Sensores.webp]]

## Sensores
Hay sensores de tres tipos:
### Analógicos
*Señal directa*


### Digitales
*Hay o no hay*

### Inteligentes
Procesar la señal
*Da la información ya procesada*


![[Fundamentos de Desarrollo de Hardware con Arduino - Que podemos medir.webp]]

*Ver pág. 46*


## Clasificación de los Actuadores
![[Fundamentos de Desarrollo de Hardware con Arduino - Clasificación de los Actuadores.png]]
### Lineal
*Como los pistones*

### Rotativo
*Da vueltas*


## Diferencias entre *electricidad* y *electrónica*
Ya estamos a punto de comenzar a trabajar con nuestro Arduino. Sin embargo, antes debemos  
discutir sobre un tema muy importante: la diferencia entre la electricidad y la electrónica.

**La electricidad y la electrónica no son nombre diferentes para una misma cosa.**

La principal diferencia entre circuitos electrónicos y eléctricos es que **los circuitos eléctricos no toman decisiones** y manejan **voltajes mucho mayores** a los de sus contrapartes electrónicas.

La electronica funciona por **corriente directa**, esta corriente se mueve en **una sola dirección** y por lo general se utilizan entre **5, 3 y 12 volts**. Esta energía se genera con **fuentes de poder** o por medio de **baterías**, todas las baterías funcionan generando corriente directa.

Por otra parte, la electricidad funciona por **corriente alterna**, puede alcanzar **voltajes altísimos** y recibe su nombre porque el flujo de electrones varia de un punto a otro y luego regresa.

Para que trabajen juntas necesitas una **fuente de poder**. Funciona convirtiendo la corriente eléctrica a una corriente de voltaje directo para alimentar todos los circuitos electrónicos. Todos nuestros aparatos electrónicos _(celulares, laptops, cámaras, tv, etc)_ tienen una fuente de poder.

*Todos los componentes* ***electrónicos***
Trabajan con **corriente directa**

### **Fuentes de poder**
Transforma la electricidad de **corriente alterna** a **directa**

## Tipos de componentes electrónicos
### Resistencias
![[Fundamentos de Desarrollo de Hardware con Arduino - Resistencias.png]]

### Capacitor
### LED
>_(diodo emisor de luz)_

Ademas de fines estéticos, también se utilizan para indicar el estado de otros componentes. El color de la luz puede generarse por el color del plástico que lo envuelve o por componentes químicos que reaccionan a la electricidad.

### Transistor
Funcionan como interruptores que se accionan accionado mediante un voltaje pequeño, que cierra el circuito y permite el paso de electricidad. Se compone de tres elementos: _colector_, _base_ y _emisor_ _(siendo la base la encargada de cerrar el circuito)_.
![[Fundamentos de Desarrollo de Hardware con Arduino - Transistor.png]]


### Circuito Integrado
Son todos los componentes de un circuito _(con resistencias, capacitores, etc)_ integrados en un solo circuito completo.

## Puertos de un arduino y sus funciones
### ICSP
>*Integrated Circuit Serial Programming*


- [ ] Falta poner la imagen de las partes del Arduino



# Introducción a la Electrónica


# Manos a la obra


# Automatización de procesos 