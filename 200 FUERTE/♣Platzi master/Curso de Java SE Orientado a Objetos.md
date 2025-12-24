---
estado: STANDBY
tipo_nota: Essentia
Ruta: PROGRAMACIÓN
LIGHTVOLT: ⚡3🟠
Materia: Programación Orientada a Objetos
pertenece a:
  - "[[♣Platzi Master]]"
  - "[[‼Essentia]]"
Serie_Platzi: II. FULL STACK MASTER
antecesor: "[[Curso de Introducción a Java]]"
fecha_creado: 2024-09-02
fecha_terminado:
terminado: false
image:
diploma:
Calificación:
dificultad: 🟢
Completado: 1
Incompleto: 7
Total: 8
profesor(a): Anahí Salgado Díaz de la Vega
tags:
nombre:
links_url:
  - https://platzi.com/cursos/java-oop/
horas_totales: 16
horas_contenido: 6
horas_práctica: 10
horas_empleadas: 2
próxima_clase:
  - https://platzi.com/home/clases/1629-java-oop/21598-clases-abstractas/
próxima_fecha: 
---
# ***Curso de Java SE Orientado a Objetos***
| Presentación general del Curso | Apuntes adicionales | Examen |
| ------------------------------ | ------------------- | ------ |
|                                |                     |        |
## 🏁 *Objetivos* 🎯
*Aprender POO usando Java, ya que es el lenguaje que ~~usaré en POO y EDA~~ se usa mucho en la industria*
- **Conceptos**
- **Buenas Prácticas** de programación
Aplicar los conocimientos para poder ser capaz de generar una aplicación o programa por mi cuenta
### 🕛⏳ Meta de tiempo ⏰⏲
- [ ] Lograr acabarlo **antes del nuevo año 2025**

- **5 horas**:
	1. ==6== sesiones de *1 hora*
	2. ==3== sesiones de *2 horas*
	- +2 sesiones de *Essentia*
>- [ ] ⏳: *4 semanas*
## 🌿Abstract🌿

## ❓ Preguntas detonadoras ❓
- ¿Qué puedo aprender de POO?
- [x] ¿Cuáles son los conceptos clave de POO que debo tener en mente? ✅ 2024-12-02

>👉 Deberían ser los básicos:
>- Herencia
>- Polimorfismo
>- Abstracción
>- Encapsulamiento

## 📃Guía de Repaso 

## ℹ Índice de contenido

---
# Entender la *POO*

>ℹ **Paradigma**
>Teoría que suministra la base y modelo para resolver problemas

## POO en Java
### 4 elementos básicos de POO
- Clases
- Propiedades
- Métodos
- Objetos

### Pilares de la POO
- Encapsulamiento
- Abstracción
- Herencia 
- Polimorfismo

### UML
>Unified Modeling Language
>*Lenguaje de Modelado Unificado*

![[Curso de Java SE Orientado a Objetos - UML.png]]

## Objeto
Pueden ser físicos o conceptuales

### Propiedades
**Atributos**, serán sustantivos

### Comportamientos
Serán las operaciones del objeto, suelen ser verbos o 'sustantivo y verbo'

## Abstracción
Entender cuáles son sus **propiedades** y **comportamientos**
>🗣 Capacidad de abstraes la composición de un elemento para generar un molde


## Modularidad
Delegar responsabilidades para:
- Reutilizar código
- Evitar colapsos
- El código sea mantenible
- Sea más legible

# Definir Clases y sus componentes
## Método Constructor
>Para crear nuevas instancias
>- Mismo nombre de clase que se inicializa
>- Usa cero o más argumentos
>- No regresa un valor

## Métodos static
Se invoca en una clase que no tiene instancias de la clase
>ℹ No se necesita instanciar un objeto para utilizar dichos métodos

Dado que los métodos estáticos no dependen de una instancia de un objeto, sino que pertenecen a la clase en sí, a veces es engorroso estar escribiendo el nombre de la clase siempre para invocar métodos o valores
>ℹ👀 Importar métodos estáticos para no tener que escribir el nombre de la clase a la que pertenecen
>i.e. `Math.PI` -> `PI`
```java
import static java.lang.Math.*;
```

## Constantes
```java
public static final double PI = 3.1415926535897932
```

## Sobrecarga
>Cuando se declaran diferentes firmas para un mismo método, de tal forma que dicho método puede ser llamado de varias formas de acuerdo al caso de uso que se requiera


## Encapsulamiento
>Nivel de acceso de una entidad

## Modificadores de Acceso
![[Curso de Java SE Orientado a Objetos - Modificadores de Acceso.png]]


## Clases Wrapper
![[Curso de Java SE Orientado a Objetos - Clases Wrapper.png|450]]


## Clases Anidadas
- [ ] No entendí su caso de uso

```JAVA
class claseExterior{
	class claseInterior{
	
	}
}
```

Dentro, solo puedes llamar a métodos estáticos

## Clases internas
- [ ] No entendí su caso de uso

## Clases locales a un método
- [ ] No entendí su caso de uso

## Enumerations
Son constantes
- [ ] Falta escribir que son tal cuál y para qué sirven

# Reutilizar código
## Herencia


![[Curso de Java SE Orientado a Objetos - Herencia.png]]

## super y this
![[Curso de Java SE Orientado a Objetos - super y this.png]]

## Polimorfismo
![[Polimorfismo]]

## Sobreescritura
>Los métodos declarados con `static` o ``final`` no pueden sobreescribirse

>ℹ Se puede sobreescribir el método `toString()` en varios objetos que ya la implementen, para que cambie la manera en cómo se imprime el objeto cuando por ejemplo se imprime en consola. > [[Comportamiento de toString() en Objetos - Java]]

## Interfaces
Es un tipo de referencia similar a una clase que podría contener solo constantes y definiciones de métodos

## Collections
Otras interfaces que son muy importantes en Java son los llamados **Collections**

Los Collections nos van a servir para trabajar con colecciones de datos, específicamente y **solamente con objetos**, para esto recuerda que tenemos disponibles nuestras clases Wrapper que nos ayudan a convertir datos primitivos a objetos.

Los collections se diferencian de los arrays en que su tamaño no es fijo y por el contrario es dinámico.

A continuación te muestro un diagrama de su composición:

![IMG1.png](https://static.platzi.com/media/user_upload/IMG1-b5d51fc9-f21a-47c9-960c-409d2cf43f7d.jpg)

Como podemos observar el elemento más alto es la interfaz **Collection**, para lo cual, partiendo de su naturalidad de interface, entendemos que tiene una serie de métodos “básicos” dónde su comportamiento será definido a medida que se vaya implementando en más elementos. De ella se desprenden principalmente las interfaces **Set** y **List.**

La interface **Set** tendrá las siguientes características:

Almacena objetos únicos, no repetidos.  
La mayoría de las veces los objetos se almacenarán en desorden.  
No tenemos índice.

La interface **List** tiene éstas características:

Puede almacenar objetos repetidos.  
Los objetos se almacenan en orden secuencial.  
Tenemos acceso al índice.

## Si seguimos analizando las familias tenemos que de **Set** se desprenden:

Clase HashSet  
Interfaz SortedSet y de ella la clase TreeSet.

**HashSet** los elementos se guardan en **desorden** y gracias al mecanismo llamado hashing (obtiene un identificador del objeto) **permite almacenar objetos únicos.**

**TreeSet** almacena **objetos únicos**, y gracias a su estructura de árbol el *_acceso_ es sumamente **rápido.**

## Ahora si analizamos la familia List, de ella se desprenden:

Clase **ArrayList** puede tener duplicados, no está sincronizada por lo tanto es más rápida  
Clase **Vector** es sincronizada, los datos están más seguros pero es más lento.  
Clase **LinkedList**, puede contener elementos duplicados, no está sincronizada (es más rápida) al ser una estructura de datos doblemente ligada podemos añadir datos por encima de la pila o por debajo.

![IMG2.png](https://static.platzi.com/media/user_upload/IMG2-48dd5387-187c-4193-b74b-b205ee81376d.jpg)

## Sigamos con Map

Lo primero que debes saber es que tiene tres implementaciones:

HashTable  
LinkedHashMap  
HashMap  
SortedMap ➡️ TreeMap

![img3.png](https://static.platzi.com/media/user_upload/img3-105ac91c-3d09-4ed5-a5cc-3b0a21f3c12b.jpg)

La interfaz **Map** no hereda de la interfaz Collection porque representa una estructura de datos de Mapeo y no de colección simple de objetos. Esta estructura es más compleja, pues cada elemento deberá venir en pareja con otro dato que funcionará como la llave del elemento.

**Map**

Donde K es el key o clave  
Donde V es el value o valor

Podemos declarar un map de la siguiente forma:

```
Map<Integer, String> map = new HashMap<Integer, String>();
Map<Integer, String> treeMap = new TreeMap<Integer, String>();
Map<Integer, String> linkedHashMap = new LinkedHashMap<Integer, String>();
```

Como observas solo se puede construir el objeto con tres elementos que implementan de ella: **HashMap**, **TreeMap** y **LinkedHashMap** dejando fuera HashTable y SortedMap. SortedMap estará fuera pues es una interfaz y HashTable ha quedado deprecada pues tiene métodos redundantes en otras clases. Mira la funcionalidad de cada uno.

Como te conté hace un momento Map tiene implementaciones:

**HashMap:** Los elementos no se ordenan. No aceptan claves duplicadas ni valores nulos.  
**LinkedHashMap:** Ordena los elementos conforme se van insertando; provocando que las búsquedas sean más lentas que las demás clases.  
**TreeMap:** El Mapa lo ordena de forma “natural”. Por ejemplo, si la clave son valores enteros (como luego veremos), los ordena de menos a mayor.

Para iterar alguno de estos será necesario utilizar la interface **Iterator** y para recorrerlo lo haremos un bucle while así como se muestra:

## Para HashMap

```
// Imprimimos el Map con un Iterador
Iterator it = map.keySet().iterator();
while(it.hasNext()){
  Integer key = it.next();
  System.out.println("Clave: " + key + " -> Valor: " + map.get(key));
}
```

## Para LinkedHashMap

```
// Imprimimos el Map con un Iterador
Iterator it = linkedHashMap.keySet().iterator();
while(it.hasNext()){
  Integer key = it.next();
  System.out.println("Clave: " + key + " -> Valor: " + linkedHashMap.get(key));
}
```

## Para TreeMap

```
// Imprimimos el Map con un Iterador
Iterator it = treeMap.keySet().iterator();
while(it.hasNext()){
  Integer key = it.next();
  System.out.println("Clave: " + key + " -> Valor: " + treeMap.get(key));
}
```


- [ ] Leer material de [[#Collections]]
# Aplicar Abstracción

# Ensamblando Objetos al proyectos


---
# ***INTERCONN***
## Conexiones
Notas que han de considerarse para la revisión de la actual, para tener contexto
### Tareas y ejercicios
- *TEMA*
	*Documento*

## Recursos
### Aportaciones


### Materiales para el Curso

| Clase | Material | Estado |
| ----- | -------- | ------ |
|       |          |        |
**TOTALIDAD DE MATERIALES REVISADOS**:

## Referencias
