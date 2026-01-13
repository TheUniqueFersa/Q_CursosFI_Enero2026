---
pertenece a:
  - "[[Lg - Álgebra]]"
---
# Vector
>Como notación utilizaremos una línea sobre las letras cuando nos refiramos a vectores: $\bar{u}, \bar{v}, \bar{w}$
## Un acercamiento familiar
>**Definición que conocen**
>Cantidades que requieren de Magnitud, Dirección y Sentido para definirse

- Magnitud: "tamaño" de la cantidad vectorial
- Dirección: Línea de acción de la cantidad vectorial
- Sentido: sobre la línea de acción, hacia donde se dirige

*Ejemplos: desplazamiento, velocidad, fuerza, trabajo*


>📌Gráficamente un vector se representa con una flecha

Magnitud: es su longitud a escala
Dirección: línea de acción
Sentido: Lo indica la punta de la flecha

- Un vector convencional: $\bar{u}$
- Un vector de acuerdo a sus puntos de inicio y final: $\overline{AB}$ (*primero punto inicial y luego punto final*)

>📌👀 Si desplazamos a un vector en forma paralela, conservando su magnitud, dirección y sentido, el ==vector no cambia==

Una clasificación de vectores:
- Fijos
Se posiciona en un lugar del "espacio" y no se mueve

- Libres
Se pueden mover libremente

Componentes escalares de un vector
$$\bar{a} = (a_1,a_2,a_3,...,a_n)$$

**¿Cómo se ven los siguientes vectores?**

$$\bar{a} = (a)$$
$$\bar{a} = (a_1,a_2)$$
$$\bar{a} = (a_1,a_2,a_3)$$

**En un plano:**
Sean $P_1(x_1,y_1)$ y $P_2(x_2, y_2)$ dos puntos, se puede encontrar el vector $\overline{P_1P_2}$ como:
$$\overline{P_1P_2}=(x_2-x_1, y_2-y_1)$$

Ejemplo
$A=(2,2) = (x_A,y_A)$
$B = (6,5) = (x_B, y_B)$

$$\overline{AB}=(x_B-x_A, y_B-y_A) = (6-2,5-2)$$
$$\overline{AB} = (4,3)$$
![[Pasted image 20260111155300.png]]


**En el espacio**
Sean 2 puntos en el espacio: 
$P_1(x_1,y_1,z_1)$
$P_2(x_2,y_2,z_2)$ 


El vector descrito por $\overline{P_1P_2}$ se calcula:
$$\overline{P_1P_2}=(x_2-x_1, y_2-y_1, z_2-z_1)$$

> [!tip] La forma trinómica
> 
> $$\bar{a} = a_1\hat{\imath}+a_2\ \hat{\jmath}+a_3\ \hat{k}$$

### Vector de posición
>Cuando tenemos un vector asociado a la posición de un punto.
>Esto ocurre cuando hacemos coincidir el punto origen con $P_1(0,0,0)$ (*el origen*)

Tenemos
$\bar{p} = (x,y,z)$

Por ejemplo, un punto $A(20,16,19)$ tendrá el vector de posición $\bar{p}=(20,16,19)$

>👀 Notar la notación para **Punto** y para **vector** (=)

### Operaciones con vectores

#### Igualdad de Vectores
>Se dice que dos vectores son iguales cuando sus componentes correspondientes lo son

Sea $\bar{u} = (x_1,y_1), \bar{v} = (x_2, y_2)$
$\bar{u} = \bar{v}$ si y solo si:
$x_1 = x_2$ y al mismo tiempo $y_1 = y_2$



#### Suma de vectores
$$\bar{u} = \bar{a} + \bar{b} = (a_1+b_1, a_2+b_2,a_3+b_3)$$


##### Propiedades de la suma de vectores

- Cerradura
La suma de dos vectores de $n$ dimensiones, da como resultado un vector de 3 dimensiones
$$\bar{a}+\bar{b}=\bar{c}$$
- Asociativa
Los vectores de una suma se pueden agrupar como se requiera, sin que esto altere el resultado final
$$\bar{a}+(\bar{b}+\bar{c})=(\bar{a}+\bar{b})+\bar{c}$$
- Elemento neutro
$$\bar{a}+\bar{0}=\bar{a}$$
- Elemento inverso
$$\bar{a}+(-\bar{a})=\bar{0}$$
- Conmutativa
$$\bar{a}+\bar{b} = \bar{b}+\bar{a}$$

#### Producto de un vector por un escalar
Sean 2 vectores $\bar{u}, \bar{v}$ y sea $\lambda$ un escalar
$$\lambda(\bar{u}+\bar{v}) = \lambda\bar{u} +\lambda\bar{v} $$
$$(\lambda_1+\lambda_2)\bar{a} = \lambda_1\bar{a}+\lambda_2\bar{a}$$
$$(\lambda_1\lambda_2)\bar{a}=\lambda_1(\lambda_2\bar{a})$$
$$|\lambda\bar{a}|=|\lambda||\bar{a}|$$
$0\bar{a} = \bar{0}$
$1\bar{a} = \bar{a}$
$(-1)\bar{a}=-\bar{a}$
$\bar{0}=-\bar{0}$




### Vector unitario
>Cuando su magnitud es igual a 1

$$|\bar{a}_u| = 1$$
$$\lambda = \frac{1}{|\bar{a}|}$$

#### Vectores unitarios $\hat{\imath}, \hat{\jmath}, \hat{k}$
![[Pasted image 20260111204718.png|350]]

$$\boxed{\hat{\imath}=(1,0,0)}$$
$$\boxed{\hat{\jmath} = (0,1,0)}$$
$$\boxed{\hat{k}=(0,0,1)}$$







Ver también [[Recta y Plano]]

## Un nuevo acercamiento
Un vector, será un elemento de un **espacio vectorial**


