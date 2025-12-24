---
estado: STANDBY
tipo_nota: Essentia
Ruta: CIENCIAS E INGENIERÍAS
LIGHTVOLT: ⚡1🔵
Materia: Matemáticas
pertenece a:
  - "[[♣Platzi Master]]"
  - "[[‼Essentia]]"
Serie_Platzi: I. FUNDAMENTOS
fecha_creado: 2024-06-06
fecha_terminado:
terminado: false
image:
Calificación: ⭐⭐⭐
dificultad:
Completado: 0
Incompleto: 7
Total: 7
profesor(a): Sergio Orduz
tags:
nombre:
links_url:
  - https://platzi.com/cursos/discretas/
horas_totales: 19
horas_contenido: 5
horas_práctica: 14
horas_empleadas: 2.5
próxima_clase:
  - https://platzi.com/home/clases/1319-discretas/12228-introduccion-a-los-arboles/
próxima_fecha: 
---
# ***Curso de Matemáticas Discretas***

| Presentación general del Curso | Apuntes adicionales | Examen |
| ------------------------------ | ------------------- | ------ |
|                                |                     |        |
## 🏁 *Objetivos* 🎯
>🏁 Aprender temas de matemáticas discretas para ciencias de la computación
### 🕛⏳ Meta de tiempo ⏰⏲
Progreso hecho [[02-12-2024]] -> 50%

> - [ ] ⏳ 1 semana
## 🌿Abstract🌿

## ❓ Preguntas detonadoras ❓

## 📃Guía de Repaso 

## ℹ Índice de contenido

---
# Lógica
## Introducción
### Proposiciones o Afirmaciones
>Una sentencia, una afirmación
>Se le puede dar solo un valor, el de ***verdadero*** o ***falso***


Proposiciones simples
### Proposiciones compuestas
Aquellas que están compuestas de 2 o más simples, ENTRE cada una hay ***conectores lógicos***
> ***Y*** , ***O***


> [!NOTE] Aportación de compañero
> ![[Curso de Matemáticas Discretas - Tabla Introducción.png]]

## Conectores Lógicos
![[Curso de Matemáticas Discretas - Tabla de Conectores Lógicos.png|450]]

**Para calcular el número de proposiciones posibles en nuestra proposición compuesta**
![[Curso de Matemáticas Discretas - Cálculo de proposiciones simples en compuesta.png]]
>Siendo n el número de proposiciones simples, de esta forma teniendo 3 sería 2 al cubo, teniendo 8 posibles proposiciones


### Disyunción fuerte
> **o** a **o** b, pero las dos no se pueden al mismo tiempo

![[Curso de Matemáticas Discretas - Disyunción Fuerte.png|450]]


### Condicional
![[Curso de Matemáticas Discretas - Condicional.png|500]]

El único caso cuando es falso es que q sea falso

### Bicondicional

![[Curso de Matemáticas Discretas - Bicondicional.png|500]]



## Tablas de verdad

![[Curso de Matemáticas Discretas - Tablas de verdad.png]]

### *Tautología*
Todas dan verdadero

- [ ] Investigar más obre la *Tautología en Lógica*

### Contradicción
Todas dan falso

### Contingencia
Algunas dan verdadero, algunas dan falso

### Ejemplo de construcción de una tabla de verdad para una proposición compuesta

![[Curso de Matemáticas Discretas - Lógica - Construcción de tabla de verdad.png]]

- Se analiza cada proposición simple
- Se empiezan por los paréntesis como si fuese una expresión algebraica
- Se recurren a las tablas de cada conector lógico
- Se van poniendo los posibles valores para cada valor, *en este caso como p solo tiene 2 posibles valores, entonces los posibles resultados se reducen a 2*

LA Proposición final es una **Contingencia**

## Ejercicio de  Tabla de verdad para una **proposición compuesta** (*3 simples*)
![[Curso de Matemáticas Discretas - Ejemplo práctico Tabla de verdad.png]]







## Circuitos lógicos
![[Curso de Matemáticas Discretas - Circuitos lógicos. Conjunción.png]]

![[Curso de Matemáticas Discretas - Circuitos lógicos. Disyunción.png]]

### Representar proposiciones compuestas a través de circuitos lógicos
![[Curso de Matemáticas Discretas - Circuitos lógicos. Ejemplo.png]]

## Ejemplo de Circuitos lógicos
- [ ] Poner el ejemplo hecho en mis notas de GoodNotes


# Teoría de Conjuntos
## Introducción a los conjuntos
*Grupo de objetos o elementos*
>📌Un conjunto *no tiene que estar ordenado* y una permutación de un conjunto será el mismo conjunto

### Relación de pertenencia
- [ ] Pertenece y no pertenece en LaTeX
$\$

### Determinación de un conjunto
Manera en como yo llamo a un conjunto
- #### Por Extensión
Literalmente decir cada uno de los elementos que se contienen en el conjunto
$A = \{1,2,3,4,5\}$
- #### Por compresión
Describiendo una cualidad de todos los elementos del conjunto
$B = \{x\,|\,x\,pertence\,a\,los\,reales\}$
>👇 *Ejemplo*
>Como una regla de correspondencia

>👁‍🗨Usado cuando son muchos elementos, como cuando son infinitos (Los Reales)

### Cardinalidad
>Cantidad de elementos del conjunto

### Subconjuntos

## Operaciones entre conjuntos
>*Conjuntos especiales*:
### Conjunto *Nulo*
$\phi = \{x|x \neq x\}$
### Conjunto *Unitarios*
Solo con un elemento

### Conjunto *Universal*
contiene a otros subconjuntos

![[Curso de Matemáticas Discretas - Operaciones entre conjuntos.png]]


> [!N] 👥 *Aportación directa de compañero*
> ![[Curso de Matemáticas Discretas - Diferencia simétrica.png]]

## Representación gráfica de conjuntos
Obviamente:
### Diagramas de **Venn-Euler**
![[Curso de Matemáticas Discretas - Representación gráfica (Diagramas de Venn).webp]]



## Leyes de Morgan: Unión de conjuntos
### Primera ley
$$
(A \cup B)' \neq A'\cap B'
$$

### Segunda ley
$$
(A \cap B)' \neq A'\cup B'
$$

# Teoría de Grafos
Modelos matemáticos que sirven que representar las relaciones entre objetos de un conjunto

>¿Cómo hacer para que los aviones en vuelo no choquen entre sí?

*Rutas óptimas*

## Tipos de grafos
![[Curso de Matemáticas Discretas - Tipos de grafos.png]]

![[Curso de Matemáticas Discretas - Grafos_otros conceptos.png]]

**Ponderado**
>recurso asociado a ese camino (arista)

![[Curso de Matemáticas Discretas - Puentes de Konigsberg.webp|400]]
>🤓 Problema resuelto por **Euler**

## Grados
![[Curso de Matemáticas Discretas - Grados.png|600]]


Ver 👀 [[#Caminos Eulerianos y ciclos Eulerianos]]
## Cadenas, caminos y ciclos
**Cadena**
Sucesión de nodos

**Camino**
No se repite ningún vértice

**Ciclo**
El único vértice que se repite es el final
Inicio y termino en le mismo vértice

ℹ **Gráfico conexo**
Todos los nodos del grafo se pueden visitar desde cualquier otro nodo, esto es que hay por lo menos 1 arista que conecta cada uno de los nodos y que se conectan para generar un gráfico conexo

![[Curso de Matemáticas Discretas - caminos, cadenas y ciclos.png]]


## Caminos Eulerianos y ciclos Eulerianos
Visitar todos lo caminos 1 vez sin repetir los caminos y poder llegar a todas las ciudades
- Podemos repetir vértices ✅
- No podemos repetir caminos ya recorridos ❌

**Camino Euleriano** (se hace la omisión de la regla de no repetición de vértices de arriba)
 >ℹ ***Teorema***
>Existe un camino Euleriano si no hay más de 2 nodos con un grado impar.
>*Si hay dos vértices con grado impar, debes iniciar y terminar en dichos vértices*

**Ciclo Euleriano**
Recordando que esto se refiere a un camino que empiece y termine en le mismo nodo
>ℹ
>Existe un ciclo Euleriano si el grado de todos los nodos es par

![[Pasted image 20250128144136.png|400]]

## Caminos y ciclos Hamiltonianos

**Camino Hamiltoniano**
Busca recorrer todos los vértices 1 vez, sin importar los caminos

$$gr(u) + gr(v) \geq n-1 $$
Siendo $n$ el número de nodos del grafo
Eligiendo 2 nodos cualesquiera, evaluando sus grados, su suma debe ser mayor o igual a $n-1$ para poder afirmar que existe un camino Hamiltoniano

Sin embargo, *no sirve para afirmar que no existe un camino*, ya que si no es mayor o igual *no podemos afirmar nada*

![[Pasted image 20250128145252.png|400]]

**Ciclo Hamiltoniano**
Busca recorrer todos los vértices 1 vez, siempre y cuando se parte y se termine en el mismo nodo
- Un grafo no es un ciclo hamiltoniano cuando hay por lo menos 1 nodo con grafo 1, porque se requiere "entrar y salir"

Para que un **grafo** sea considerado **Hamiltoniano**, debe existir un **camino** y un **ciclo**
![[Pasted image 20250128144835.png|400]]




---
# ***INTERCONN***
## Conexiones
Notas que han de considerarse para la revisión de la actual, para tener contexto
### Tareas y ejercicios
- *[[#Lógica]]*
	- [ ] [Ejercicios de Lógica](https://platzi.com/home/clases/1319-discretas/12355-ejercicios-logica/)
- [[#Teoría de Conjuntos]]
	- [ ] [[Tarea - Teoría de Conjuntos]]
## Recursos
### Aportaciones
#### [[#Diagramas de **Venn-Euler**]]
- [ ] 
![[Curso de Matemáticas Discretas - APORTACIÓN - SQL JOINS (D Venn).webp|]]


### Materiales para el Curso

| Clase                | Material                                                            | Estado |
| -------------------- | ------------------------------------------------------------------- | ------ |
| [[#Tipos de grafos]] | ![[Curso de Matemáticas Discretas - Algoritmo de Dijkstra.webp]]    | ❌      |
|                      | [Aplicación de grafos](https://www.youtube.com/watch?v=V2Dr2RlIY2U) | ❌      |
**TOTALIDAD DE MATERIALES REVISADOS**:

## Referencias
