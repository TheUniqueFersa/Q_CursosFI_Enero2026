---
scope: Intermedio
ancestro_directo: "[[Espacios Vectoriales]]"
theme: white
---
# 💥 Contenido 🎯
- [[Vector|Definición de vector]]
- [[#Definición de espacio Vectorial|Definición de Espacio Vectorial]]
	- [[#Propiedades elementales|Propiedades elementales]]

>Extras
- [[Subespacios vectoriales]]
- [[Isomorfismo]]

---
# Definición de vector

>Se tiene una noción del concepto de vector como:
>**Cantidad con magnitud, dirección y sentido**, cuya representación geométrica coincide con la de un segmento de recta dirigido (flecha)

---

> [!important] Nueva percepción de un vector
> *Ahora, se abordará el concepto de vector como:*
> A los elementos de un **espacio vectorial** se les llama **vectores**

---

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

---

> [!important] Definición: Espacio Vectorial
> Sea $\mathbb{V}$ un **conjunto no vacío** y sea $(K, \oplus, \otimes)$ un sistema algebraico con estructura de **campo**,
> se dice que $\mathbb{V}$ es un **espacio vectorial** sobre $\mathbb{K}$ si están definidas dos leyes de composición, llamadas adición (+) y multiplicación por un escalar $(\cdot)$ tales que cumplan las siguientes propiedades:

---
## Propiedades Elementales

---

> [!info]+ 1. **Cerradura para la adición**
> $$\bar{u}+\bar{v}\in\mathbb{V}$$
> $$\forall\ \bar{u}, \bar{v}\ \in \mathbb{V}$$

---

> [!info]+ 2. **Asociatividad para la adición**
> $$(\bar{u}+\bar{v})+\bar{w}=\bar{u}+(\bar{v}+\bar{w})$$
> $$\forall\ \bar{u},\bar{v},\bar{w}\in\mathbb{V}$$

---

> [!info]+ 3. **Idéntico para la adición**
> $$\bar{u}+\bar{e}=\bar{e}+\bar{u}=\bar{u}$$
> $$\forall\bar{u}\in\mathbb{V},\exists\ \bar{e}\in\mathbb{V}$$

Todo espacio vectorial debe contener al $\bar{0}$

---

> [!info]+ 4. **Inverso para la adición**
> $$\bar{u}+\hat{\bar{u}}=\hat{\bar{u}}+\bar{u} = \bar{e}$$
> $$\forall\bar{u}\in\mathbb{V},\exists\ \hat{u}\in\mathbb{V}$$

---

> [!info]+ 5. **Conmutatividad para la adición**
> $$\bar{u}+\bar{v}=\bar{v}+\bar{u}$$
> $$\  \forall\ \bar{u},\bar{v}\in\mathbb{V}$$

---

> [!info]+ 6. **Cerradura para la multiplicación por un escalar**
> $$\alpha\cdot\bar{u} \in \mathbb{V}$$
> $$\forall\ \bar{u}\in\mathbb{V}, \forall\ \alpha\in\mathbb{K}$$

---

> [!info]+ 7. **Primera ley distributiva de la multiplicación por un escalar**
> $$\alpha\cdot(\bar{u}+\bar{v})=\alpha\cdot\bar{u}+\alpha\cdot\bar{v}$$
> $$\forall\ \bar{u},\bar{v}\in \mathbb{V}, \forall\ \alpha\in \mathbb{K}$$

---

> [!info]+ 8. **Segunda ley distributiva de la multiplicación por un escalar**
> $$(\alpha\oplus\beta)\cdot\bar{u}=\alpha\cdot\bar{u}+\beta\cdot\bar{u}$$
> $$\forall\ \ \bar{u}\in \mathbb{V}\ , \forall \ \ \alpha, \beta\in \mathbb{K}$$

---

> [!info]+ 9. **Asociatividad para la multiplicación por escalar**
> $$\alpha\cdot(\beta\cdot\bar{u}) = (\alpha\otimes\beta)\cdot\bar{u}$$
> $$\forall\ \ \bar{u}\in\mathbb{V}, \forall\ \alpha,\beta\in \mathbb{K}$$

---

> [!info]+ 10. **Idéntico para la multiplicación por escalar**
> $$\alpha\cdot\bar{u}=\bar{u}$$
> $$\forall\ \ \bar{u}\in\mathbb{V}, \exists\ \alpha\in \mathbb{K}$$

---

>A los elementos de $\mathbb{V}$ se les llama **vectores** $(\bar{u}, \bar{v}, \bar{w})$ y a los elementos de $\mathbb{K}$ se les llama **escalares** $(\alpha, \beta)$

>👀 Las primeras 5 propiedades definen un **grupo abeliano** para el sistema algebraico $(\mathbb{V}, +)$

>👀 El sistema algebraico $(\mathbb{K}, \oplus, \otimes)$ es un **campo**. Si $\mathbb{K} =\mathbb{R}$ se llama ==espacio vectorial real==
>Si $\mathbb{K} = \mathbb{C}$ se llama ==espacio vectorial complejo==

---
## Ejemplos de Espacios Vectoriales comunes

---
### $\mathbb{R}^n$
El conjunto $\mathbb{R}^n, n\in\mathbb{N}$ se apoya sobre el campo $\mathbb{R}$ para formar un **espacio vectorial**

$$\forall \vec{u}, \vec{v}, \vec{w} \in \mathbb{R}^{n}$$

**Adición de vectores**
$$
(x_{1}, \ldots, x_n)
+
(y_{1}, \ldots, y_n)
=
(x_{1} + y_{1}, \ldots, x_{n} + y_{n})
$$

**Multiplicación por escalar**
$$
\alpha\cdot \underbrace{z_1, \ldots, z_n}_{\bar{w}}
=
(\alpha z_1, \ldots, \alpha z_n), \quad \forall\;\alpha\in \mathbb{R}
$$

---

#### $\mathbb{R}^1, \mathbb{R}^2, \mathbb{R}^3, \ldots \mathbb{R}^n$
$\mathbb{R}^{1} = \{x|x\in\mathbb{R}\}$

$\mathbb{R}^{2} = \{(x,y)|x,y\in\mathbb{R}\}$

$\mathbb{R}^{3} = \{(x,y,z)|x,y,z\in\mathbb{R}\}$

$\mathbb{R}^{n} = \{(x_1,\ldots,x_n)|x_1,\ldots,x_n \in\mathbb{R}\}$

---
![[Pasted image 20260113073210.png]]
---

![[Pasted image 20260113073236.png]]

---
![[Pasted image 20260113073257.png]]

---
![[Pasted image 20260113073315.png]]

---
![[Pasted image 20260113073337.png]]

---
![[Pasted image 20260113073355.png]]

---

![[Pasted image 20260113073446.png]]

---
![[Pasted image 20260111224346.png]]

---
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

### Espacios vectoriales de matrices cuadradas con elementos reales $\mathbb{M}_n$

**Adición de vectores**

$$
\underbrace{
\begin{bmatrix}
a_{11} & \cdots & a_{1n} \\
\vdots & \ddots & \vdots \\
a_{n1} & \cdots & a_{nn}
\end{bmatrix}
}_{\bar{m}}
+
\underbrace{
\begin{bmatrix}
b_{11} & \cdots & b_{1n} \\
\vdots & \ddots & \vdots \\
b_{n1} & \cdots & b_{nn}
\end{bmatrix}
}_{\bar{n}}
=
\begin{bmatrix}
a_{11} + b_{11} & \cdots & a_{1n} + b_{1n} \\
\vdots & \ddots & \vdots \\
a_{n1} + b_{n1} & \cdots & a_{nn} + b_{nn}
\end{bmatrix},
\quad
\forall\;\bar{m}, \bar{n} \in \mathbb{M}_n
$$

---

**Multiplicación por escalar**

$$
\alpha \cdot
\underbrace{
\begin{bmatrix}
c_{11} & \cdots & c_{1n} \\
\vdots & \ddots & \vdots \\
c_{n1} & \cdots & c_{nn}
\end{bmatrix}
}_{\bar{s}}
=
\begin{bmatrix}
\alpha c_{11} & \cdots & \alpha c_{1n} \\
\vdots & \ddots & \vdots \\
\alpha c_{n1} & \cdots & \alpha c_{nn}
\end{bmatrix},
\quad
\forall\;\alpha \in \mathbb{R},\ \forall\;\bar{s} \in \mathbb{M}_n
$$

---

**Espacios vectoriales** $\mathbb{M}_2$, $\mathbb{M}_3$, $\ldots$, $\mathbb{M}_n$


$$
\mathbb{M}_2
=
\left\{
\begin{bmatrix}
a_{11} & a_{12} \\
a_{21} & a_{22}
\end{bmatrix}
\;\middle|\;
a_{11}, \ldots, a_{22} \in \mathbb{R}
\right\}
$$

$$
\mathbb{M}_3
=
\left\{
\begin{bmatrix}
a_{11} & a_{12} & a_{13} \\
a_{21} & a_{22} & a_{23} \\
a_{31} & a_{32} & a_{33}
\end{bmatrix}
\;\middle|\;
a_{11}, \ldots, a_{33} \in \mathbb{R}
\right\}
$$

$$
\vdots
$$

$$
\mathbb{M}_n
=
\left\{
\begin{bmatrix}
a_{11} & \cdots & a_{1n} \\
\vdots & \ddots & \vdots \\
a_{n1} & \cdots & a_{nn}
\end{bmatrix}
\;\middle|\;
a_{11}, \ldots, a_{nn} \in \mathbb{R}
\right\}
$$


### Espacios vectoriales de números complejos $\mathbb{C}^n$

El conjunto $\mathbb{C}^n$ forma un espacio vectorial complejo (sobre el campo $\mathbb{C}$) con las operaciones usuales de adición de vectores y multiplicación por escalar.

**Adición de vectores**

$$
\underbrace{(x_1, \ldots, x_n)}_{\vec{u}}
+
\underbrace{(y_1, \ldots, y_n)}_{\vec{v}}
=
(x_1 + y_1, \ldots, x_n + y_n),
\quad
\forall\;\vec{u}, \vec{v} \in \mathbb{C}^n
$$

**Multiplicación por escalar**

$$
\alpha \cdot
\underbrace{(z_1, \ldots, z_n)}_{\vec{w}}
=
(\alpha z_1, \ldots, \alpha z_n),
\quad
\forall\;\alpha \in \mathbb{C},\ \forall\;\vec{w} \in \mathbb{C}^n
$$

**Espacios vectoriales** $\mathbb{C}^1$, $\mathbb{C}^2$, $\mathbb{C}^3$, $\ldots$, $\mathbb{C}^n$

$$
\mathbb{C}^1 = \{ x \mid x \in \mathbb{C} \}
$$

$$
\mathbb{C}^2 = \{ (x, y) \mid x, y \in \mathbb{C} \}
$$

$$
\mathbb{C}^3 = \{ (x, y, z) \mid x, y, z \in \mathbb{C} \}
$$

$$
\vdots
$$

$$
\mathbb{C}^n = \{ (x_1, \ldots, x_n) \mid x_1, \ldots, x_n \in \mathbb{C} \}
$$


### Espacios vectoriales de números complejos $\mathbb{C}^n$

El conjunto $\mathbb{C}^n$ forma un espacio vectorial real (sobre el campo $\mathbb{R}$) con las operaciones usuales de adición de vectores y multiplicación por escalar.

**Adición de vectores**

$$
\underbrace{(x_1, \ldots, x_n)}_{\vec{u}}
+
\underbrace{(y_1, \ldots, y_n)}_{\vec{v}}
=
(x_1 + y_1, \ldots, x_n + y_n),
\quad
\forall\;\vec{u}, \vec{v} \in \mathbb{C}^n
$$

**Multiplicación por escalar**

$$
\alpha \cdot
\underbrace{(z_1, \ldots, z_n)}_{\vec{w}}
=
(\alpha z_1, \ldots, \alpha z_n),
\quad
\forall\;\alpha \in \mathbb{R},\ \forall\;\vec{w} \in \mathbb{C}^n
$$

**Espacios vectoriales** $\mathbb{C}^1$, $\mathbb{C}^2$, $\mathbb{C}^3$, $\ldots$, $\mathbb{C}^n$

$$
\mathbb{C}^1 = \{ a + bi \mid a, b \in \mathbb{R} \}
$$

$$
\mathbb{C}^2 = \{ (a + bi,\, c + di) \mid a, b, c, d \in \mathbb{R} \}
$$

$$
\vdots
$$

$$
\mathbb{C}^n
=
\{ (a_1 + b_1 i, \ldots, a_n + b_n i)
\mid a_1, b_1, \ldots, a_n, b_n \in \mathbb{R} \}
$$



>Mathematics is the art of giving the same name to different things - Henri Poincare


[[Subespacios vectoriales]]
[[EJ - Espacios Vectoriales]]