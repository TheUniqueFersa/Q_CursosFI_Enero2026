---
estado: "[[‼Essentia]]"
tipo_nota: Essentia
Ruta: PROGRAMACIÓN
LIGHTVOLT: ⚡3🟠
Materia: Lenguajes de Programación
pertenece a:
  - "[[♣Platzi Master]]"
  - "[[‼Essentia]]"
Serie_Platzi: I. FUNDAMENTOS
fecha_creado: 2024-06-03
fecha_terminado: 
terminado: true
image: "[[-- DIPLOMA -- Curso de Introducción a Java.png]]"
diploma: "[[diploma-java-basico.pdf]]"
Calificación: ⭐⭐⭐⭐
dificultad: 🟢
Completado: 2
Incompleto: 14
Total: 16
profesor(a): Anahí Salgado Díaz de la Vega
tags: 
nombre: 
links_url:
  - https://platzi.com/cursos/java-basico/
horas_totales: 15
horas_contenido: 5
horas_práctica: 10
horas_empleadas: 4
próxima_clase:
  - https://platzi.com/home/clases/1631-java-basico/21188-archivos-jar/
próxima_fecha:
---
# ***Curso de Introducción a Java***
| Presentación general del Curso | Apuntes adicionales | Examen                                          |
| ------------------------------ | ------------------- | ----------------------------------------------- |
|                                |                     | [[-- EXAM -- Curso de Introducción a Java.pdf]] |

![[-- DIPLOMA -- Curso de Introducción a Java.png]]
## 🏁 *Objetivos* 🎯
### 🕛⏳ Meta de tiempo ⏰⏲
- [x] Antes de entrar a clases y tener mi primer clase de **[[♠A-T Programación Orientada a Objetos (POO)|POO]]** ✅ 2024-08-02
## 🌿Abstract🌿

## ❓ Preguntas detonadoras ❓

## 📃Guía de Repaso 
- [[-- EXAM -- Curso de Introducción a Java.pdf]]

## ℹ Índice de contenido

---
# Conocer a Java como lenguaje de programación
## ¿Qué es Java?
>***JAVA SE*** (Standard Edition)
>***JAVA EE*** (Enterprise Edition)

- Orientado a Objetos (Naturalmente)
- Programación Funcional (No es naturalmente uno, pero tiene características de lenguaje Funcional)

### Generalidades
> [!NOTE] JAVA SE
> Java es un lenguaje de Programación
> Creado por *James Gosling*
> - Multiplataforma
> - De alto nivel
> 
> **Sun microsystems**
> en 2009 fue comprada por *ORACLE*

![[Introducción a Java - Niveles de lenguajes.png]]

*¿Qué pasa con **JAVA EE**?*
- Las empresas trabajan aplicaciones web de última generación
Primero hay que entender la ***JAVA SE***


### Filosofía WORA
>*Write Once Run Anywhere*

Lo que escribas en ***SE***, se puede llevar a ***EE***

## Versiones de JAVA Y JDK
### JDK
>*Java Development Kit*
- **Java Runtime Environment** (**JRE**) (Asociada a *La máquina Virtual*) **==Lo hace multiplataforma==**
- **Compilador de JAVA** -> Encargado de traducir lenguaje de java y lo traduce a algo que la máquina virtual pueda leer (los *bytecode* ``.class``)
- **API de desarrollo** (Algo con lo que se puede empezar a programar)

![[Java_Platforms-c884f8da-78a6-4065-9c57-61054a294e8d.webp|600]]

![[Curso de Introducción a Java - Versiones de Java.png]]
### Java (LTS) 
>Long Term Support

### Open JDK
Java era Open Source, esta versión si es open-cource de JAVA SE Platform Edition
- Existe desde Java SE 6
- Sun Mycrosystems 2006
- *Red Hat* -> le da mucho apoyo a *Open JDK*

- [ ] cvs? ❓
- [ ] mercurial ❓

>🗣 La comunidad (los programadores) tienen mucho poder

## Herramientas más usadas de Java
>Se estarán hablando en este curso de **Java 8** y **Java 11**
>Usaremos **Open JDK**

### Datos Curiosos   
La versión más utilizada para *Proyectos de servidor*
- [ ] Maven ❓
- [ ] Gradle ❓
- [ ] Spring (v.2 v.1.5)❓
- [ ] ORM ❓


### IDE
Entorno Desarrollo Integrado (Integrated Development Environment)
![[Curso de Introducción a Java - IDE's para Java.png]]

- *NetBeans*
- *Eclipse*
- **IntelliJ IDEA**

- [ ] Poner los pasos de instalación de IntelliJ IDEA


## Escribe tu primer Hola mundo en Java
### De ==Platzi==:
Los archivos de Java usan la extensión **`.java`**. Por lo tanto, para crear nuestro primer “Hola, mundo” podemos hacerlo desde un archivo `HolaMundo.java`.

El método **main** es el punto de entrada de una aplicación en diferentes lenguajes como Java, [Kotlin](https://platzi.com/clases/kotlin/) y [C++](https://platzi.com/clases/c-plus-plus/). Sin este método nuestra aplicación no se ejecutará y mostrará un error.

- [x] Hacer repositorio y hacer commit ✅ 2024-07-18

>💻El repositorio es este: https://github.com/TheUniqueFersi/L_Java 

## Camino de un archivo de Java a un programa
Al correr un programa, sucede lo siguiente:
![[Curso de Introducción a Java - Proceso de correr un programa.png]]

![[Pasted image 20240720212433.png]]

>💬
>El **compilador** traduce el lenguaje fuente a **Byte Code** (Archivos `.class`)
>Lenguaje que la computadora puede leer
>Este código se manda a la **JVM** para que lo interprete

### JVM (Java Virtual Machine)
>ℹ💭
>Crea ese efecto multiplataforma

Cuando lo manda a interpretar, lo hace a la JVM (Java Virtual Machine)
>La **JVM** *interpreta el compilado*

>💬 
>El sentido de que el compilador Compile, cargue y verifique y posteriormente lo mande a la **JVM** hace que:
>Java sea **Compilado** e **Interpretado**

>- [ ] 👁‍🗨 Isla de Java?

## La JShell de Java < ==Platzi==
Sabías que Java tiene una herramienta interactiva en dónde puedes ir probando segmentos de código en vez de realizar todo el proceso de creación de un programa en Java. Escribir, compilar y correr.

Su nombre es `jshell` y está disponible desde la versión 9 de Java.

Abre tu consola de comandos o terminal, corre el siguiente comando:

```
$ java -version
```

### Ejercicio 1.

- [ ] Investiga cómo cambiar la versión de Java desde tu consola de comandos o terminal y compártenos en la sección de discusiones los comandos que ejecutaste.

>🗨 Esencialmente se modifican las **variables de entorno del sistema**, donde se posiciona la versión que se necesite hasta arriba de todas (o por lo menos arriba de la otra versión(es) que no se quiere usar)

### Ejercicio 2.

Asegúrate de tener definida una versión superior a la 8.  
Ahora desde tu terminal escribe el siguiente comando para abrir nuestra `jshell`

```
$ jshell
```

![Screen Shot 2019-07-24 at 5.04.52 PM.png](https://static.platzi.com/media/user_upload/Screen%20Shot%202019-07-24%20at%205.04.52%20PM-7d3ad1c3-da34-4126-a838-d04ab2c01038.jpg)

Ahora escribe la línea de código para imprimir un texto (no olvides poner ; y dar enter).  
Compártenos tus resultados en la sección de discusiones.

- [ ] Cómo puedo cambiar de versión entre Javas? desde la terminal ❓

>


>📌👀 Para salir de **jshell**: 💻
>`/ex`
# Trabajar con Variables en Java

>ℹ Convenciones para escribir variables: **Cammel Case**
>Las **variables** pueden empezar con letra, $ o \_; pueden contener letras, números $ o \_
>Las **constantes** se escriben en *mayúsculas* y contienen "_"

>Todas las clases tienen que tener la convención de ***UpperCamelCase***
>***LowerCamelCase*** -> nombre de *variables* y *métodos*

>📌 La clase debe tener el *mismo nombre que el archivo* 👀

## Tipos de datos numéricos
![[Curso de Introducción a Java - Enteros.png|450]]

>❗👁‍🗨📌 
>Poner L al final para indicar que es un tipo long
>Poner f al final para indicar que es un tipo float
```java
public class DataTypes {
	public static void main(String[] args) {  
	    //Tiene un límite  
	    int n = 999999999;  
	    long nL = 9999999999L;  //Para no dar error
	    double nD = 123.456;  
		float nF = 123.456f;
	}
}
```

![[Curso de Introducción a Java - Punto flotante.png|450]]


### char
**Rango Unicode**
2 bytes

### boolean
Rango *true* or *false*
2 bytes

### ``var``
>Automáticamente java infiere el tipo de dato que es

>👀
>Si tienes un JDK con la versión 8 de Java, esta no puede correr un programa proveniente de una versión posterior
## Operadores de asignación
Existen los mismos que C 
```java
int gift = 100 + lives++; //posfijo  
System.out.println(gift);  
//primero obtiene el dato y luego incrementa
gift = 100 + ++lives; //prefijo  
System.out.println(gift);
//INCREMENTA Y DEVUELVE EL DATO INCREMENTADO
```

## Cast
![[Curso de Introducción a Java - Tabla de casts.webp]]
![[Curso de Introducción a Java - conversión auto o cast.png]]
>Una *pequeña* si cabe en *una más grande*, pero una grande no cabe en una más pequeña char cabe en *int*

char no cabe en short, por lo que tenemos que ejecutar un **cast explícito**

- [ ] Investigar o preguntarle a mi tio más sobre los casteos en Java
## Archivos .JAR
>**Java Archive**
>Extensión de archivos ejecutables de java

**Tipo de comprimido**
(Por la necesidad de distribuir el código)
- Contiene estos archivos .class empaquetados
- La máquina virtual puede interpretarlos y ejecutarlos

>*.class*
>Es el resultado de la compilación

>👁‍🗨💬 ***Extensiones de Archivos en Java*** 
>Los archivos **.java** son el *código fuente*
>Los archivos **.class** son los *archivos ya compilados*. Existen softwares para poder decompilar dichos archivos y dar como resultado un código fuente resultante (como lo hace *IntelliJ IDEA powered by FernFlower decompiler*)
>Los archivos **.JAR** (Java Archives) son *archivos ejecutables* por la virtual machine que internamente se componen de varios .class como si se tratase de un archivo comprimido, solo que la máquina puede interpretarlos todo en conjunto para el funcionamiento de una aplicación en un solo fichero, *el .JAR entonces es útil para la distribución de un programa*
>^extensionesDeArchivosEnJava

- [ ] Hacer el procedimiento de como hacer un .JAR

- [ ] Hacer las pruebas de hacer .JAR
# Aplicar condicionales en Java
## Scope (alcance de una variable)

# Escribir funciones en Java

![[Curso de Introducción a Java - Estructura de una función.png]]

![[#Sobre static en las funciones - ==*Estudiante*==]]

## JAVADOC
>Los Java Docs son una herramienta usada por muchas otras herramientas y aplicaciones porque nos ayuda a documentar todo nuestro código usando comentarios. Además, nos permite visualizar la documentación en formato HTML. - *Platzi*

Con comentarios

```java
/** 
* Esto es Java Doc
*/
public static double converToDolar()...
```

Por defecto IntelliJ Idea tiene el tooltip deshabilitado, por lo que para poder visualizar nuestra documentación debemos activarlo manualmente:
### Activación de visualización de la Javadoc en IntelliJ Idea
Nos vamos
>Settings > Editor > General > Code Completion > \[\_] Show the documentation in __ ms
>*Activar dicha opción*


Ejemplo de Documentación usando Javadoc
```JAVA
/**  
 * Descripción: Funcion que especificando su moneda convierte una cantidad de dinero a dolares * * @param quantity Cantidad de dinero  
 * @param currency Tipo de Moneda: Solo acepta MXN o COP  
 * @return quantity Devielve la cantidad actualizada en Dolares  
 * */public static double converToDolar(double quantity, String currency){
```

>Los `@` son los llamados **Tags**:

### *Tags* en Javadocs
- ``@param`` estamos definiendo que vamos a poner la descripción de un parámetro de la función
- `@return`: definición del retorno

![[Curso de Introducción a Java - Tabla de Tags Javadocs.webp]]

>👁‍🗨ℹ📌🧠 Dentro de estos comentarios de Javadoc, se pueden añadir etiquetas de HTML, que el IDE interpretará y podrás poner elementos como listas, negritas etc.

# Analizar e implementar Ciclos en Java
## ``break, continue``
```java
for (int i = 0; i < 10 ; i++){ 
	if(i = 5){ 
		break; 
		// continue; 
	} 
	System.out.print(i); 
}
```
>Si utilizamos **break**, el programa imprimirá los numero de el 0 al 4 si utilizamos *continue*, el programa imprimirá los numero del 0 al 9, excepto el 5.


## Arreglos
```java
Tipo nombre[];
Tipo[] nombre;

nombre = new Tipo[tamaño];

String[] arreglo = new String[17];
// El tamaño no es dinámico

String[][] cities = new String[4][2];

int[][][] numbers = new int[2][2][2];
```

## *Foreach*
```java
for (tipo varEach : coleccion){

}
// Imprimir con foreach una matriz [][]
for (String [] pair: cities){
	for(String name: pair){
		System.out.println(name);
	}
}
```

---
# ***INTERCONN***
## Conexiones
Notas que han de considerarse para la revisión de la actual, para tener contexto
### Instalaciones
- [ ] [[Instalando Java en una PC windows]]

### Tareas y ejercicios
- *TEMA*
	*Documento*

## Recursos
### Aportaciones
#### Sobre static en las funciones - ==*Estudiante*==
Los métodos son declarados como static ya que el método main es static. Los métodos declarados como static tienen varias restricciones, una de ellas es que pueden llamar directamente solo a otros métodos estáticos en su clase.

### Materiales para el Curso

| Clase                                | Material                                                                                                                                                                                                                        | Estado |
| ------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------ |
| [[#Versiones de JAVA Y JDK]]         | - https://www.oracle.com/us/corporate/pricing/price-lists/java-se-subscription-pricelist-5028356.pdf<br> - https://openjdk.org/<br> - [Education ORACLE](https://education.oracle.com/es/oracle-certification-path/product_267) | ❌      |
| [[#Herramientas más usadas de Java]] | Instalador de [OpenJDK](https://adoptium.net/es/temurin/releases/)<br>Instalador de [IntellJ IDEA para windows](https://www.jetbrains.com/es-es/idea/download/?section=windows)                                                 | ✅      |
| [[#Trabajar con Variables en Java]]  | ![[Curso de Introducción a Java - Tipos de variables en java.webp]]                                                                                                                                                             | ❌      |

## Referencias
