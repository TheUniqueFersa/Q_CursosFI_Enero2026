---
scope: Intermedio
ancestro_directo: "[[Espacios Vectoriales]]"
---

| Material                                      |     |
| --------------------------------------------- | --- |
| Hereda El material oficial + Notas de Amezcua |     |
|                                               |     |

# Índice
- [[Vector|Definición de vector]]
- [[#Definición de espacio Vectorial]]
	- [[#Propiedades elementales]]
# Definición de vector

>Según AmezcuaGOD 
>>*Al INICIO del curso ya se tiene noción del concepto de vector y de algunas propiedades y operaciones que podemos efectuar con ellos*
>>- Cantidad con magnitud, dirección y sentido, cuya adecuada representación geométrica es la de un segmento de recta dirigido (flecha)

A los elementos de un espacio vectorial se les llama vectores, por lo que esta palabra adquiere un significado más amplio

Así, una función, una matriz y la solución de una ecuación diferencial pueden llamarse *vectores*, si cumplen una serie de requisitos para pertenecer a un espacio vectorial.

---

Partimos de un conjunto no vacío que denotaremos como $\mathbb{V}$ y nos referiremos a el **espacio vectorial**

Como en cualquier conjunto, sus miembros deben compartir ciertas características en común. 
Los miembros de $\mathbb{V}$ se llamaran **vectores** y pueden ser:
- números reales
- números complejos
- polinomios
- matrices
- funciones
- etc.

De tal manera que, se puede llamar vector a una matriz si sabemos que este pertenece a un **espacio vectorial**

>Como notación utilizaremos una línea sobre las letras cuando nos refiramos a vectores: $\bar{u}, \bar{v}, \bar{w}$



---
# Espacio Vectorial

En la asignatura de Cálculo y Geometría Analítica se trabajó con los conjuntos $\mathbb{R}^2$ y $\mathbb{R}^3$
>La definición de *espacio vectorial* es la más importante del curso de Álgebra Lineal


> [!important] Definición: Espacio Vectorial
> Sea $\mathbb{V}$ un **conjunto no vacío** y sea $(K, \oplus, \otimes)$ un sistema algebraico con estructura de **campo**,
> se dice que $\mathbb{V}$ es un **espacio vectorial** sobre $\mathbb{K}$ si están definidas dos leyes de composición, llamadas adición (+) y multiplicación por un escalar $(\cdot)$ tales que cumplan las siguientes propiedades:

## Propiedades Elementales

> [!info]+ 1. **Cerradura para la adición**
> $$\bar{u}+\bar{v}\in\mathbb{V}$$
> $$\forall\ \bar{u}, \bar{v}\ \in \mathbb{V}$$

> [!info]+ 2. **Asociatividad para la adición**
> $$(\bar{u}+\bar{v})+\bar{w}=\bar{u}+(\bar{v}+\bar{w})$$
> $$\forall\ \bar{u},\bar{v},\bar{w}\in\mathbb{V}$$

> [!info]+ 3. **Idéntico para la adición**
> $$\bar{u}+\bar{e}=\bar{e}+\bar{u}=\bar{u}$$
> $$\forall\bar{u}\in\mathbb{V},\exists\ \bar{e}\in\mathbb{V}$$

> [!info]+ 4. **Inverso para la adición**
> $$\bar{u}+\hat{u}=\hat{u}+\bar{u} = \bar{e}$$
> $$\forall\bar{u}\in\mathbb{V},\exists\ \hat{u}\in\mathbb{V}$$

> [!info]+ 5. **Conmutatividad para la adición**
> $$\bar{u}+\bar{v}=\bar{v}+\bar{u}$$
> $$\  \forall\ \bar{u},\bar{v}\in\mathbb{V}$$

> [!info]+ 6. **Cerradura para la multiplicación por un escalar**
> $$\alpha\cdot\bar{u} \in \mathbb{V}$$
> $$\forall\ \bar{u}\in\mathbb{V}, \forall\ \alpha\in\mathbb{K}$$

> [!info]+ 7. **Primera ley distributiva de la multiplicación por un escalar**
> $$\alpha\cdot(\bar{u}+\bar{v})=\alpha\cdot\bar{u}+\alpha\cdot\bar{v}$$
> $$\forall\ \bar{u},\bar{v}\in \mathbb{V}, \forall\ \alpha\in \mathbb{K}$$

> [!info]+ 8. **Segunda ley distributiva de la multiplicación por un escalar**
> $$(\alpha\oplus\beta)\cdot\bar{u}=\alpha\cdot\bar{u}+\beta\cdot\bar{u}$$
> $$\forall\ \ \bar{u}\in \mathbb{V}\ , \forall \ \ \alpha, \beta\in \mathbb{K}$$

> [!info]+ 9. **Asociatividad para la multiplicación por escalar**
> $$\alpha\cdot(\beta\cdot\bar{u}) = (\alpha\otimes\beta)\cdot\bar{u}$$
> $$\forall\ \ \bar{u}\in\mathbb{V}, \forall\ \alpha,\beta\in \mathbb{K}$$

> [!info]+ 10. **Idéntico para la multiplicación por escalar**
> $$1\cdot\bar{u}=\bar{u}$$
> $$\forall\ \ \bar{u}\in\mathbb{V}, \exists\ 1\in \mathbb{K}$$


>A los elementos de $\mathbb{V}$ se les llama **vectores** $(\bar{u}, \bar{v}, \bar{w})$ y a los elementos de $\mathbb{K}$ se les llama **escalares** $(\alpha, \beta)$

>👀 Las primeras 5 propiedades definen un **grupo abeliano** para el sistema algebraico $(\mathbb{V}, +)$

>👀 El sistema algebraico $(\mathbb{K}, \oplus, \otimes)$ es un **campo**. Si $\mathbb{K} =\mathbb{R}$ se llama ==espacio vectorial real==
>Si $\mathbb{K} = \mathbb{C}$ se llama ==espacio vectorial complejo==


## Ejemplos de Espacios Vectoriales comúnes









## Propiedades elementales



# Subespacios


