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

>Se tiene una noción del concepto de vector como:
>**Cantidad con magnitud, dirección y sentido**, cuya representación geométrica coincide con la de un segmento de recta dirigido (flecha)

> [!important] Nueva percepción de un vector
> *Ahora, se abordará el concepto de vector como:*
> A los elementos de un **espacio vectorial** se les llama **vectores**

>Ahora el concepto es más amplio

>Así, una función, una matriz y la solución de una ecuación diferencial pueden llamarse *vectores*, si cumplen una serie de requisitos para pertenecer a un **espacio vectorial**.

---


Como en cualquier conjunto, sus miembros deben compartir ciertas características en común. 
Los miembros de $\mathbb{V}$ se llamaran **vectores** y pueden ser:
- números reales
- números complejos
- polinomios
- matrices
- funciones
- etc.

De tal manera que, se puede llamar vector a una matriz si sabemos que este pertenece a un **espacio vectorial**

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

Todo espacio vectorial debe contener al $\bar{0}$

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


## Ejemplos de Espacios Vectoriales comunes
### $\mathbb{R}^n$
El conjunto $\mathbb{R}^n, n\in\mathbb{N}$ se apoya sobre el campo $\mathbb{R}$ para formar un **espacio vectorial**
**Adición de vectores**
$$
\underbrace{(x_1, \ldots, x_n)}_{\vec{u}}
\;+\;
\underbrace{(y_1, \ldots, y_n)}_{\vec{v}}
=
(x_1 + y_1, \ldots, x_n + y_n),
\quad
\forall \,\vec{u}, \vec{v} \in \mathbb{R}^n

$$

**Multiplicación por escalar**
$$
\alpha\cdot \underbrace{z_1, \ldots, z_n}_{\bar{w}}
=
(\alpha z_1, \ldots, \alpha z_n), \quad \forall\;\alpha\in \mathbb{R},\forall\;\bar{w}\in\mathbb{R}^n
$$

#### $\mathbb{R}^1, \mathbb{R}^2, \mathbb{R}^3, \ldots \mathbb{R}^n$
$\mathbb{R}^1 = \{x|x\in\mathbb{R}\}$
$\mathbb{R}^2 = \{(x,y)|x,y\in\mathbb{R}\}$
$\mathbb{R}^3 = \{(x,y,z)|x,y,z\in\mathbb{R}\}$

$\mathbb{R}^n = \{(x_1,\ldots,x_n)|x_1,\ldots,x_n \in\mathbb{R}\}$

![[Pasted image 20260111224346.png]]

### Espacios vectoriales de polinomios de coeficientes reales $\mathbb{P}_n$
$\mathbb{P}_n$ forma un **espacio vectorial real** (con el campo $\mathbb{R}$) con las operaciones usuales de **adición de polinomios** y **multiplicación por escalar**

**Adición de vectores**

$$
\underbrace{(a_n x^n + \cdots + a_0)}_{\vec{p}}
+
\underbrace{(b_n x^n + \cdots + b_0)}_{\vec{q}}
=
(a_n + b_n)x^n + \cdots + (a_0 + b_0),
\quad
\forall\;\vec{p}, \vec{q} \in \mathbb{P}_n
$$

---

**Multiplicación por escalar**

$$
\alpha \cdot
\underbrace{(c_n x^n + \cdots + c_0)}_{\vec{r}}
=
\alpha c_n x^n + \cdots + \alpha c_0,
\quad
\forall\;\alpha \in \mathbb{R},\ \forall\;\vec{r} \in \mathbb{P}_n
$$

---

**Espacios vectoriales** $\mathbb{P}_1$, $\mathbb{P}_2$, $\mathbb{P}_3$, $\ldots$, $\mathbb{P}_n$

$$
\mathbb{P}_1 = \{ ax + b \mid a, b \in \mathbb{R} \}
$$

$$
\mathbb{P}_2 = \{ ax^2 + bx + c \mid a, b, c \in \mathbb{R} \}
$$

$$
\mathbb{P}_3 = \{ ax^3 + bx^2 + cx + d \mid a, b, c, d \in \mathbb{R} \}
$$

$$
\vdots
$$

$$
\mathbb{P}_n = \{ a_n x^n + \cdots + a_0 \mid a_n, \ldots, a_0 \in \mathbb{R} \}
$$





# Subespacios

Sea $\mathbb{V}$ un **espacio vectorial** y $\mathbb{W}$ un subconjunto de $\mathbb{V}$, $\mathbb{W}$ es un subespacio de $\mathbb{V}$ si por sí mismo es un **espacio vectorial**

>👀 Todos los elementos


