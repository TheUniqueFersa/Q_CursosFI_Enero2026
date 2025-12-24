---
estado: STANDBY
tipo_nota: Essentia
Ruta: PROGRAMACIÓN
LIGHTVOLT: ⚡3🟠
Materia: Fundamentos de Programación
pertenece a:
  - "[[♣Platzi Master]]"
  - "[[‼Essentia]]"
Serie_Platzi: I. FUNDAMENTOS
fecha_creado: 2024-04-25
fecha_terminado:
terminado: true
image: "[[-- DIPLOMA -- Curso de Historia de la Programación. Lenguajes y Paradigmas.png]]"
Calificación: ⭐⭐
dificultad: 🟢
Completado: 0
Total: 28
Incompleto: 28
profesor(a): Héctor Vega
tags:
  - STORMED
  - Active_kanban/♣PM_Historia_LenguajesYParadigmas
nombre: LenguajesYParadigmas
links_url:
  - https://platzi.com/cursos/historia-programacion/
horas_totales: 14
horas_contenido: 2
horas_práctica: 12
horas_empleadas: 1
próxima_fecha:
---
# ***Curso de Historia de la Programación. Lenguajes y Paradigmas***
``` dataviewjs
function projectTracker(dv, query) {
    let searchPagePaths = dv.pages(query).file.path
    
    for(let i=0; i < searchPagePaths.length; i++){
        if(dv.page(searchPagePaths[i]).Total){
                    let title = dv.page(searchPagePaths[i]).nombre;
                    console
                    let total = dv.page(searchPagePaths[i]).Total;
                    let status = ((dv.page(searchPagePaths[i]).Completado / dv.page(searchPagePaths[i]).Total) * 100).toFixed();
                    const progress = "![pb|500](https://progress-bar.dev/" + status + "/?scale=" + "100" + "&title=" + title + "&width=400)"; //you could set any width if you need
                    dv.paragraph(progress);
                    //dv.paragraph("<br>"); //use this if you have many projects to track.
        }
    }
} 

projectTracker(
    dv,
    "#Active_kanban/♣PM_Historia_LenguajesYParadigmas" //change tag if you need
)
```

| Presentación general del Curso | Apuntes adicionales | Examen                                                                          |
| ------------------------------ | ------------------- | ------------------------------------------------------------------------------- |
|                                |                     | [[-- EXAM -- Curso de Historia de la Programación. Lenguajes y Paradigmas.pdf]] |
![[-- DIPLOMA -- Curso de Historia de la Programación. Lenguajes y Paradigmas.png]]

---
# Máquina Abstracta
Una **máquina abstracta** es una computadora digital que ejecuta **algoritmos**, los cuales están formalizados para que la máquina entienda. Se trata de una máquina abstracta porque estamos aislando las características de una computadora para llevarlas a este concepto.

## Estructura de una máquina abstracta

La estructura general de una máquina abstracta consiste en:

- Una memoria donde almacena datos y sus programas.
- Un intérprete del lenguaje de programación que maneja las secuencias de control del programa, controla la transferencia de datos y además maneja su memoria.
- Unas operaciones que nos darán un resultado que será la instrucción que deseamos.  
    ![Estructura de una máquina abstracta](https://static.platzi.com/media/articlases/Images/2022-04-23%20%2823%29.png)

### Operaciones de una máquina abstracta

Una máquina abstracta puede realizar operaciones para:

- **Procesar datos primitivos**: Un dato primitivo es aquel con el que un lenguaje de programación trabaja de forma nativa. Puede tener datos primitivos de tipo entero, flotante, booleanos, etc. Ojo, los datos primitivos de un lenguaje, no son necesariamente primitivos en otro.
- **Controlar secuencia de ejecución de operaciones**: La máquina abstracta no solo será capaz de llevar la secuencia de operaciones, también estructuras de control y condicionales como `If`, `Else`. Podrá usar ciclos como `While`, `For`, etc.
- **Controla transferencia de datos**: Esto quiere decir que la información puede pasar de las instrucciones a una estructura de dato y viceversa. Con tal de que la información pueda ser utilizada para sus procesamientos.
- **Manejo de memoria**: La máquina abstracta usa este recurso para almacenar los datos que se derivan de las operaciones de los programas o incluso, almacenar información que le indiquemos.

## Ciclo de ejecución

El ciclo de ejecución se refiere a **los pasos que toma una máquina abstracta para ejecutar operaciones**.

1. Inicia el programa.
2. Se traen las instrucciones a través del intérprete del lenguaje de programación, el cual decodifica las instrucciones.
3. Trae sus operandos para realizar las operaciones.
4. Elige que operación va a ejecutar según las instrucciones.
5. Ejecuta las operaciones indicadas. Una o varias. Incluso la instrucción detener el programa.
6. Si se ejecuta detener, el programa se termina. En caso contrario, se guardan los resultados y se regresa al segundo paso.

![Ciclo de ejecución de una máquina abstracta](https://static.platzi.com/media/articlases/Images/2022-04-23%20%2824%29.png)

### Máquina de Turing:

Es un ejemplo de máquina abstracta. La **Máquina de Turing** tiene 2 cintas en cada lado, y en el centro tiene un dispositivo lector-escritor, es capaz de leer o escribir sobre él mismo. En los rodillos hay instrucciones, indicadas con números 1 y 0. Puede indicar que escriba, lea, etc. En un sentido abstracto, podemos entender que la maquina de Turing realiza los procesos que vimos antes.

## Conclusión

La **máquina abstracta** es un concepto que nos ayuda a entender como funcionan las computadoras y los lenguajes de programación en general. Una **máquina abstracta** es capaz de realizar operaciones complejas si la equipamos para ello.

_Contribución creada por: Ciro Villafraz, con los aportes de Iris Valentina Barrios y Carlos José González Juan._

# Lenguajes de programación vs. lenguaje natural
**Sintaxis**: frases correctas para expresar lo requerido
**Semántica**: ¿Qué es?
**Pragmática**: la forma en que lo interpreta el lenguaje
**Implementación**: la forma en que se transforma la 'receta' a los 'materiales'

# Paradigmas
>
>Teoría o conjunto de teorías cuyo núcleo central se acepta sin cuestionar y que suministra la base y modelo para resolver problemas y avanzar en el conocimiento (RAE)
>

## Paradigmas puros 
*Solamente trabajan con un solo paradigma*
Smaltalk -> POO
Haskell -> Funcional

## Multiparadigmas
Varios paradigmas
C++, JAVA, Python, Scala, PHP, Ruby F#, JS

*Funcional*
Evitar efectos colaterales

**Imperativa**
Evita goto

¿Es correcto que se trate un estilo de programar?
¿Cómo afecta a los modelos de programación y patrones de diseño?


---

# ¿Cuáles son los principales paradigmas de programación?

![[yvup9l0cb83wafi86hnb.gif]]
*Ejemplo lenguaje declarativo e imperativo*
## Imperativo
POO
Ordenes paso a paso
Centradas en el cómo se hará algo
Estructurado en secuencia
*E.g.*
Fortran, Java, C, Ruby, Python, PHP, etc
## Declarativo
Se enfoca en el resultado
Reduce o elimina efectos colaterales
*E.g.*
Prolog, LISP, Haskell, SQL, Elixir, XPath, Regex

Ejemplo de suma en lenguaje declarativo
```Haskell
--Esto suma los numeros
sum[1..10]
--Regresa 55

----------------------------------------
--Por debajo hace:
sum :: [int] -> int
sum(n, ns) = n + sum ns
--recursivamente paso a paso hace:
sum[4,5,2]
	= 4 + sum[5,2]
	= 4 + (5 + sum[2])
	= 4 + (5 + 2)
	= 4 + 7
	= 11
```

## Dirigido por eventos


---
# Programación estructurada

- [ ] Completar
![[Arquitectura Von Neumann]]

## Estructuras de control
En 1968 Dijkstra advirtió el daño de la expresión "``GOTO``"
- [ ] Quién es Dijkstra?

>
- [ ] Como se usa goto?

>


**Características del lenguaje imperativo**
- Estructuras de control
- Entradas / Salidas
- Manejo de errores y excepciones
- Abstracción de procedimientos
- Expresiones y asignación
- Soporte para restructuras de datos

*Algunos Lenguajes*
- FORTRAN
- PASCAL
- COBOL
- ADA
- PERL
- C

Ejemplo de un hola mundo en los últimos 3 lenguajes

- [ ] Para que se usa ADA?

>

**Ada**
```ADA
with Ada.Text_IO; use Ada.Text_IO;
procedure Hello is
begin
	Put_Line ("Hello, world!");
end Hello;
```

**Perl**
- [ ] Lenguaje de scripting?

>
```Perl
print "Hello, Wold!\n";
```

C
```C
#include <stdio.h>
int main(void){
	printf("Hola mundo");
	return 0;
}
```

- [ ] Es lo mismo imperativa que estructurada?

>
# Programación procedural 
Se derivó de la estructurada
Agrupar en bloques de código en procedimientos, los cuáles son un tupo de funciones o subrutinas a través de un sistema de pilas.

![[--IMG--Clase- Lenguaje Procedural.png|500]]


Comparación con P.O.O.

| Procedural              | Orientado a objetos |
| ----------------------- | ------------------- |
| Procedimiento           | Método              |
| Registro                | Objeto              |
| Módulo                  | Clase               |
| Llamada a procedimiento | Mensaje             |
- [ ] Mensaje?

>


**Primeros lenguajes**
- Fortran
- ALGOL
- COBOL
- BASIC

- [ ] No entendí la diferencia de verdad, procedural?

>

# Programación Orientada a Objetos (P.O.O.)
*Contienen datos y código*
***OBJETOS***
- Datos en forma de campos (atributos o **propiedades**)
- Código en forma de procedimientos (**métodos**)

>Ya se sugería en los 50's sobre objetos...

- [ ] Alan kay?

>


**Primer lenguaje orientado a objetos**
>💬**Simula**

- Objetos
- Clases
- Propiedades
- Métodos

## Conceptos
### Clase
*Es el molde*

### Objetos
Instancias de la *clase* __
### Propiedad
Datos de cada objeto

### Métodos
Acciones específicas que van a realizar

### Herencia
De una clase puede existir una herencia de otra clase padre

### Encapsulamiento
Ayuda a aislar u ocultar parte del código del método

### Abstracción
Aislar las características de un objeto

### Polimorfismo
Las llamadas las puede interpretar de manera distinta de acuerdo a ciertos parámetros

### *Aporte*
**++Pilares de la POO++**

- **Herencia**: donde una clase puede heredar atributos o métodos de otra
- **Encapsulamiento**: ayuda a aislar parte del código para que no se pueda afectar por accidente
- **Abstracción**: aislar las características de un objeto (un cuerpo se compone de extremidades, torso y cabeza, a su vez la cabeza compuesta por distintas partes, etc.)
- **Polimorfismo**: significa que ante un mismo evento las distintas clases generan comportamientos distintos

**++Pros++**

- Código reutilizable
- Reducción de redundancia
- Fácil de mantener
- Seguridad

**++Cons++**

- Tamaño (cuando un objeto es muy general y tiene muchas clases hijas)
- Esfuerzo (por la especificidad que requieren)
- Velocidad del desarrollo (por el esfuerzo)


- [ ] Entender mejor estos conceptos

Ejemplos de POO

```Java
//Java
public class Button{
	String action;
	int id;
	String color;
	void push(){ //métodoss
	}
	void deactivate(){
	}
	void activate(){
	}
}
```

# Programación Funcional

Utiliza a las funciones como ciudadanas de primera clase. Pueden crear funciones de orden superior
Prioriza el uso de recursividad y HOF para resolver problemas

- [ ] funciones de orden superior == HOF?

>

Una función puede recibir y dar salidas otros como resultado, incluyendo **otras funciones**
*Se busca eliminar o reducir los efectos secundarios*

>En los 30's Alonzo Church desarrolla el cálculo lambda

- [ ] Que es cálculo lambda?

>


**LISP**, implementa la notación lambda de Chuch

*Dato curioso*
>Jack and Daxter, saga de videojuegos de playstation, fue desarrollado en GOAL (Game Oriented Assembly Lisp), basado en LISP

*Ejemplo de LISP:*
```LISP
; LISP
(print "Hello, World!")
(defun factorial(n)
	(if (= n 0) 1
		(* n (factorial (- n 1)))))
; QUE COÑO :O
```

>Función según la RAE:
>Relación entre dos conjuntos que asigna a cada elemento del primero un elemento del segundo o ninguno (RAE)


```Python
# Función respecto a otra función

def es_par(a):
	return not es_impar(a)
# Usar una función dentro de otra función


# Función recursiva
# Se llama a sí misma
def fibonacci(n):
	if n <= 1:
		return n
	else:
		return (fibonacci(n-1) + fibonacci(n-2))
```


## Ciudadanas de primera clase
Son reconocidas por el lenguaje para utilizarse como un tipo de dato y en cualquier parte del programa

## Funciones de orden superior
Función que puede:
- Tomar una o más funciones como parámetro o;
- Retorna una función como salida

## Funciones puras
- Son determinísticas
- Un valor de entrada da un solo valor de salida
- No genera efectos secundarios
- No incluye funciones impuras

```Python
# Función impura
from datetime import date

def consulta_fecha_hoy():
	return date.today()
```
*Es impura porque el resultado que regresa esta determinado por el tiempo (el momento) en el que la llamas*

## Función lambda
- Es una función anónima (no tiene nombre)
- Comportamiento de uso único (como no tiene nombre, se usa solo donde se declara?)
- Contexto específico o corto tiempo
- Simplicidad

```Python
# Función lamba
x = lambda a,b : a**b
print(x(3,3)) #imprime 27
```

- [ ] No entendí la sintaxis de Python

>

## Efectos secundarios
Es importante el **scope**

*(Cambios observables)*
- Estado de la aplicación
- Valores en datos
- Modificación de archivos
==Generan un efecto secundario==

## Lenguajes y ejemplos que utilizan la programación funcional
- LISP
- Scheme
- Clojure
- Racket
- Erlang
- Haskell
- F#
![[Pasted image 20240504132220.png]]
Nótese que los logos tienen a *lambda*

***Python** puede hacer programación funcional*

```Haskell
-- Factorial
module Main where
import Text.Printf

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial(n-1)
line x = printf "%d! = $d\n" x $
factorial x

main = mapM_ line [0..16]
--no sabemos que hace maPm, Programación declarativa literalmente
```

```F#
// Facorial
let rec factorial n =
	match n with
	| 0 | 1 -> 1
	| _ -> n * factorial(n-1)
```

- [ ] Entender mejor lo que significa que un lenguaje sea funcional

---
# Programación lógica
Paradigma de **programación declarativa**

>El funcional es muy diferente a los imperativos

>La *programación declarativa* se enfoca al resultado y no al como

La programación lógica es un paradigma declarativo que expresa los objetivos como una colección de afirmaciones o reglas acerca de los resultados y restricciones en lógica matemática

## Áreas de aplicación
- Procesamiento de lenguaje natural

## Cláusula de Horn
![[Pasted image 20240504133001.png|400]]

- [ ] No entendí

>


![[Pasted image 20240504133032.png|400]]


Cordell Green propuso el uso de estas clausulas en programas a finales de los 60
Prolog le dio impulso a este paradigma

## Lenguajes
- Prolog
- ALF
- Fril
- Mercury
- Oz
- Visual Prolog
- XSB

![[Pasted image 20240504133233.png|400]]


- [ ] Informarme mejor sobe este paradigma (lógica)

# Programación dirigida por eventos
Las acciones y reacciones del programa están dadas por eventos:
- Clicks
- Teclas
- Sensores

**Casos de aplicación**
- GUI'S
- [ ] que es GUIS

>

- Aplicaciones web
- Sistemas de booking
- Sistema de alarmas
- Robótica
- Videojuegos

![[Pasted image 20240504133752.png|650]]


## Lenguajes
- Java
- JS
- C#
- Librerias / frameworks de GUI
	- JavaFX
	- React.js
	- PyQT



## Programación concurrente
Programación paralela

Concurrencia sucede en tu computadora


![[Pasted image 20240504134551.png|450]]

¿Cuál es la prioridad, cuál se hará primero?


![[Pasted image 20240504134629.png|400]]

Esto se hace a través de un **hilo**

- [ ] Qué es un hilo de procesamiento?

>

## Estados de un hilo
1. **Creado**: no está listo para correr (ya esta preparado)
2. **Ejecutable/listo**: espera para ejecutarse
3. **Ejecutando**: se ejecuta en el procesador
4. **Bloqueado**: espera a entrar al código que requiere acceso al recurso compartido o abandona el procesador. Puede volver al estado de ejecutando, luego bloqueado, y así cíclicamente
5. **Terminado**: se ha detenido y *no puede reiniciarse*

![[Pasted image 20240504135014.png|450]]




## Sección crítica de un hilo
Sección de código que requiere acceso exclusivo a una variable compartida.
Varios hilos que requieran a un recurso o una variable específica, así que deben ponerse de acuerdo para ver como van a usar esos recursos
- Acceso exclusivo a un recurso compartido
- Intercambiar información con otro hilo

# Problemas de concurrencia
## Carreras (critical races)
Cuando dos o más hilos desean acceder a un mismo rercurso lo más pronto posible

1. Carga: c
2. Agrega: 1
3. Almacena: c
4. c = 1||2

## Puntos muertos (deadlock)
Ocurre cuando un hilo espera por un evento que nunca sucederá
Requieren de 4 condiciones:
1. Los hilos debe tener derechos exclusivos a los recursos
2. Los hilos deben contener algunos recursos mientras esperan otros
3. Los recursos no se puede eliminar de los hilos en espera
4. Existe una cadena circular de hilos en las que cada uno contiene uno o más recursos del siguiente hilo
*Ver gif chido*

## Estrategias para evitar puntos muertos
### El problema de los filósofos
Plantea que en una mesa redonda hay filósofos, frente a ellos hay comida
palillo chino a la izquierda y a la derecha de cada persona, para comer se requieren ambos.
Por ende, para que todos puedan comer, se tienen que desocupar algunos para que ahora si, pueda comer.
*Habrá malestar de hambre, una alternancia de comer? -> una si otra no, la comida se enfriará?*

### El uso de **semáforos** y **monitores**

**Semáforos**
Funciona como variable 0 y 1
Como semáforo contador
*Al nivel de los hilos*

**Monitores son estructuras de datos**
Componentes de monitor
- Inicialización: contiene código a ser ejecutado
- Datos privados: procedimientos desde dentro
- Métodos del monitor procedimientos que se pueden llamar desde afuera
- Cola de entrada: hilos que llama a algún método del monitor pero no tienen permiso para ejecutarse aún

### Lenguajes concurrentes
- JS
- C#
- GO
- RUST
- Haskell
- Elixir

- [ ] Investigar más sobre la concurrencia
# Historia de algunos lenguajes de programación

## Década de los 40: primeras computadoras y lenguajes ensambladores
**EDSAC**
Electronic delay storage automatic calculor

**EDVAC**
**Lenguajes de primera generación**
Programable a través del lenguaje máquina

ENIAC, MARK I
Carecían de herramientas lingüísticas para ser programadas al nivel de la EDSAC
## Lenguajes ensambladores
No se habla de uno solo, es una *familia*
Representaciones simbólicas del lenguaje máquina
Traduce las instrucciones

**Lenguajes de segunda generación**
2GL (Second generation languages)

## Década de los 50's 
**Lenguajes de tercera generación (alto nivel)**
3GL (Third Generation Languages)

- Fortran
- Algol


## Década de los 60's
### ***LISP*** (LISt Processor) -> (Paradigma funcional)
Diseñado por John McCarthy en MIT
Aplicaciones no numéricas

- [ ] Manipular **expresiones S**
Que es eso

>


Al principio era ineficiente y no portable 

**Programación de Orden Superior**
- [ ] Que es eso

>

Algunos dialectos:
- Racket
- Common Lisp 
- Scheme
- Clojure


### ***Cobol*** (COmmon Business Oriented Language)
- **Imperativo**
- Diseñado para negocios

Grace Hopper
- [ ] Ese que o que

>

#### Divisiones de COBOL
![[Curso de Historia de la Programación. Lenguajes y Paradigmas - Divisiones de Cobol.png]]





### Simula 
- (Desciende de ALGOL 60)
- Realizar *simulaciones* en colas

Introdujo algunos conceptos de programación orientada a objetos
Aún hay trabajos de los 2000 que se la hace referencia a SIMULA (ya no es tan común)

## Década de los 70's
>*La llegada del microprocesador revolucionó la computación*
### C
Inicialmente para Programar UNIX

Su nombre se origina del lenguaje B, que viene de una que se llamaba A.
- Te permite acceder a bajo nivel
- Portable
- Programar sistemas interactivos
- Bueno para procesar datos en tiempo real
- Apto para programación de sistemas y uso general


### Pascal
- Desarrollado por Niklaus Wirth como simplificación de AlgolW
- Introdujo el concepto de código intermedio (algo muy similar que hace Java)

### SMALLTALK
- Incluye a objetos de forma primitiva
- Maneja conceptos de POO actuales

### ML (Meta Language)
- Manipular información simbólica

![[Curso de Historia de la Programación. Lenguajes y Paradigmas - Insertion Sort en ML.png]]

### PROLOG
- Primero en implementar paradigma de programación lógica
- Se baso en las *clausulas de Horn*
- Su primer implementación fue un interprete implementado en Fortran

## Década de los 80
Aparecieron las PC (Personal Computers)

### C++
- Mejora el sistema de tipado
- Manipula objetos de forma directa
- Mejora el sistema de herencia

### Python
- Interpretado
- Multiparadigma -> POO, funcional, asincronismo
- Alto nivel
- Comparado con C es más lento

- IoT
- Servidores
- I.A.
- Ciencia de datos

**Zen de Python**
Bello es mejor que feo
Explícito es mejor que implícito
Complejo es mejor que complicado
Complejo es mejor que complicado
La legibilidad cuenta


## Década de los 90's
**Programación Web**
- Ruby 
- PHP

### JAVA
Desarrollado por Green team
Vieron potencial en las **Applets**
- [ ] ¿Qué son Applets?

>

![[Curso de Historia de la Programación. Lenguajes y Paradigmas - JVM.png]]

- [ ] Que es Netscape

>

![[Curso de Historia de la Programación. Lenguajes y Paradigmas - Seguridad Java.png]]

- Simple (*Enserio*?)
- Garbage Collector
- Manejo **implícito de punteros**
- Uso de **hilos** para **concurrencia**


### JS
- Multiparadigma
- Débilmente tipado
- Basado en prototipos
- [ ] Es OO?

>


![[Curso de Historia de la Programación. Lenguajes y Paradigmas - Tabla Lenguajes.png]]

[La tabla es Interactiva!!](https://view.genially.com/600b6a2789906e0ce6bbbbf2/horizontal-infographic-lists-paradigmas-de-programacion)

---
# ***INTERCONN***
## Conexiones
Notas secundarias
Notas que han de considerarse para la revisión de la actual, para tener contexto
## Recursos
*Apoyan al contenido*
Aspectos visibles de las notas secundarias
MATEEXTRA relacionado
Recursos para la MISION y OBJETIVO
*Recursos para estudiar o revisar temas relacionado. -> Para seguir aprendiendo*
### Aportes
**[[#¿Cuáles son los principales paradigmas de programación?]]**
- [ ] [Computer Languages Timeline](https://www.levenez.com/lang/)

**[[#Programación Orientada a Objetos (P.O.O.)]]**
- [ ] [Object-Oriented Programming is the Biggest Mistake of Computer Science](https://suzdalnitski.medium.com/oop-will-make-you-suffer-846d072b4dce)


#### Apuntes generales
**[De un compañero en Notion](https://few-can-863.notion.site/Paradigmas-de-programaci-n-8d2e72ab676a4bd9a120b789d078c165)**



---
- [ ] Leer comentarios de todas las clases para buscar recursos interesantes y útlies


## Referencias
Referencia a notas externas como fuente de información
Referencias externas de otra fuente de información