---
pertenece a:
  - "[[♠A-T Lenguajes Formales y Autómatas]]"
terminado: true
fecha_entrega: 2025-10-29
links_url:
  - https://colab.research.google.com/drive/1nGDelQhOaL06zxC-mgI01dvxKJlenG57?authuser=2#scrollTo=7pvxdLGEB-sz
fecha_terminado: 2025-10-29
antecesor: "[[ACADEMIC/5 ° Semestre/Lenguajes Formales y Autómatas (LFyA)/30 Sesiones/Revisión 1|Revisión 1]]"
sucesor: "[[Revisión 3]]"
---
> [!info] ABARCA
> Cubre los siguientes temas
> - [[4. Abro paréntesis, abro paréntesis, cierro paréntesis, cierro paréntesis, ...]]
> - [[5. Gramáticas libres de contexto en su hábitat..., y AP]]
> - [[6. Depende del contexto]]
> - [[7. Revisando la jerarquía de Chomsky]]

Se recomienda usar la [biblioteca de máquinas](https://gitlab.com/ivanvladimir/maquinas)[^1] para la resolución de la serie
>[[FORMULARIUM - Biblioteca MAQUINAS]]

> [!important]
> Me tocaron los siguientes ejercicios:
> - [x] 1
> - [x] 5
> - [x] 9
> - [x] 12

# Sección 1: Lema de bombeo y GLC
## Pregunta 1
>- NO es **regular**
>- Gramática
>- Argumentar?

Con Σ={a,b} y el lenguaje formado por palabras con la forma bⁿaᵐ con n>2m o n=3 y m=5 
1. [x] Dar cinco ejemplos de cadenas que pertenecen y cinco qué no pertenecen al lenguaje (cinco por caso) ✅ 2025-11-01
2. [x] Demostrar que no es regular ✅ 2025-11-01
3. [x] Diseñar su gramática ✅ 2025-11-01
4. [x] Argumentar que la gramática es correcta ✅ 2025-11-01

# Sección 2: Autómata de Pila
## Pregunta 5
>- Demostrar que NO es Regular
>- Autómata de Pila


Con Σ={i,o} y el lenguaje formado por palabras con la forma iⁿoiᵐ con n>2m o n=1 y m=3 
1. [x] Dar cinco ejemplos de cadenas que pertenecen y cinco qué no pertenecen al lenguaje (cinco por caso) ✅ 2025-11-01
2. [x] Demostrar que no es regular ✅ 2025-11-01
3. [x] Diseñar su Autómata de Pila ✅ 2025-11-01

# Sección 3: [[Notación Bacus-Naur]] (Investigación)
## Pregunta 9
Investigue qué es la forma Backus-Naur para gramáticas libres de contexto. Haga un resumen de no más de dos párrafos cortos al respecto  

Para su lenguaje favorito (c, java, python, go, rust, etc) encuentre la especificación BNF e identifique la parte encargada del while. Recurrir a internet.

Reporte esta parte y explique su funcionamiento

- [x] ❓Especificación BNF ✅ 2025-10-29

La forma Backus-Naur, nombrada así por 2 científicos de la computación que trabajaron sobre una versión inicial de Algol, es una técnica para especificar formalmente las reglas de sintaxis de un lenguajes de programación mediante reglas de producción que siguen la idea de Gramática libre de contexto, donde cada regla tiene la forma de:

```txt
Sea ST:: Símbolo terminal
SNT:: Símbolo no terminal 
<SNT>::= <SNT>ST|ST<SNT>|<SNT><SNT><SNT>|...|ST
```
Donde de lo anterior, la parte derecha implica que puede haber la combinación que sea de ST y SNT como lo requiera el lenguaje. Al final, se tendrá una expresión compuesta únicamente con Símbolos terminales que define si un bloque de código pertenece o no a la estructura de control/dato que dice declarar (sintaxis correcta)


| **Recursos de** ***recolección***                                                                                                     | Status |
| ------------------------------------------------------------------------------------------------------------------------------------- | ------ |
| [The syntax of C in **BNF**](https://cs.wmich.edu/~gupta/teaching/cs4850/sumII06/The%20syntax%20of%20C%20in%20Backus-Naur%20form.htm) | ✅      |
| [Página que explica BNF](https://adacomputerscience.org/concepts/trans_bnf)                                                           | ✅      |

### Respuesta dada:
La forma Backus-Naur, nombrada así por 2 científicos de la computación que trabajaron sobre una versión inicial de Algol, es una técnica para especificar formalmente las reglas de sintaxis de un lenguajes de programación mediante reglas de producción que siguen la idea de Gramática libre de contexto, donde cada regla tiene la forma de:

```txt
Sea ST:: Símbolo terminal
SNT:: Símbolo no terminal 
<SNT>::= <SNT>ST|ST<SNT>|<SNT><SNT><SNT>|...|ST
```

Donde de lo anterior, la parte derecha implica que puede haber la combinación que sea de ST y SNT como lo requiera el lenguaje. Al final, se tendrá una expresión compuesta únicamente con Símbolos terminales que define si un bloque de código pertenece o no a la estructura de control/dato que dice declarar (sintaxis correcta)
(los símbolos | tienen el mismo uso que en una GLC)


En C:
```txt
<iteration-statement> ::= while ( <expression> ) <statement>
                        | do <statement> while ( <expression> ) ;
                        | for ( {<expression>}? ; {<expression>}? ; {<expression>}? ) <statement>
Y algunos símbolos no terminales  de manera más desglosada:
<expression> ::= <assignment-expression>
               | <expression> , <assignment-expression>
<assignment-expression> ::= <conditional-expression>
                          | <unary-expression> <assignment-operator> <assignment-expression>
<statement> ::= <labeled-statement>
              | <expression-statement>
              | <compound-statement>
              | <selection-statement>
              | <iteration-statement>
              | <jump-statement>
<jump-statement> ::= goto <identifier> ;
                   | continue ;
                   | break ;
                   | return {<expression>}? ;
```

iteration-statement, expression, statement: son símbolos no terminales
'(' , ')' en este caso son terminales
Es interesante ver como para C, iteration-statement establece las reglas para más de una estructura de control, porque define la de while, do-while y for
Nos interesa la de while, aquí se puede ver que tiene 2 partes, la expresión que si o si debe estar entre paréntesis, y la cuál es la condición. La otra parte es el statement
Este último se espera tenga muchas reglas, porque es el cuerpo del bucle, el cuál tiene muchas variantes posibles
Se pone como ejemplo una regla que es corta, porque va de statement -> jump-statement y esta puede cortar a los símbolos terminales 'break;' que es válido porque dicha sentencia corta una estructura de control en funcionamiento (while es una estructura de control)
Notese que otra regla cerca de las hojas del árbol de derivación es 'return {``<expression>``}?;'
La cuál indica que puede o no aparecer, además note la importancia del símbolo terminal '; '

Esto por cierto, genera un lenguaje ambiguo, porque al ser GLC, hay múltiples árboles de derivación para una misma sentencia


# Sección 4: Lenguajes dependientes del contexto y Autómata de Pila Doble
## Pregunta 12
>- Autómata de Doble Pila

Con Σ={x,y,m} y el lenguaje formado por palabras con la forma $w_1 m w_2 m w_3 m w_3 w_1w_3 w_2$
donde w1, w2, w3 ∈ {x,y}* donde m es un símbolo extra 
1. [x] Dar cinco ejemplos de cadenas que perteneces o no  al lenguaje (cinco por caso) ✅ 2025-10-27
2. [x] Diseñar una autómata de pila doble ✅ 2025-10-27

---
Del enunciado, se pueden destacar 2 cosas:
$w_1$, $w_2$, $w_3$ son cadenas que se construyen solamente con $x,y$ $... (1)$
$m$ nos sirve para delimitar donde empieza y termina cada $w_i$ $...(2)$
$w_1$, $w_2$, $w_3$ pueden ser cadenas vacías (cualquiera de ellas) $...(3)$

Del enunciado, se pueden destacar 2 cosas:
$w_1$, $w_2$, $w_3$ son cadenas que se construyen solamente con $x,y$ 
$m$ nos sirve para delimitar donde empieza y termina cada $w_i$ 
$w_1$, $w_2$, $w_3$ pueden ser cadenas vacías (cualquiera de ellas)

---
### Convenciones


Nuestra cadena tiene la forma $w_1 m w_2 m w_3 m w_3 w_1w_3 w_2$ y le llamaremos $cadena$
- Le llamaremos $W$ a la parte de la cadena que debemos **leer** para saber los valores de $w_1$, $w_2$, $w_3$; $W = w_1 m w_2 m w_3$
- Le llamaremos $S$ al carácter separador ($m$) que delimita a $W$ y a $V$; $S = m$
- Le llamaremos $V$ a la parte de la cadena que debemos **verificar** sea $w_1$, $w_2$ $w_3$ en el orden indicado, es decir $V = w_3 w_1w_3 w_2$

De tal forma que $cadena = (W)(S)(V) = (w_1 m w_2 m w_3) (m) (w_3 w_1w_3 w_2)$


Llamaremos a la acción de Pasar una cadena $w_i$ de una pila a otra, **Operación fundamental** y la denotaremos como $f(w)$

De tal forma que: $f(w) = w^r$
*Ejemplo*
$f(xyy) = (xyy)^r = yyx$

---

1. **Lectura** de $W$ y $S$, para saber los valores de $w_1$, $w_2$, $w_3$, $W$ se ingresa a la *pila 2*
2. Copiado de $w_3$
3. **Verificar** $w_3$
4. Pasar todo el contenido de la *pila 2* a la *pila 1* y **verificar** $w_1$
5. Pasar $w_2$ de la *pila 1* a la *pila 2*; $f(w_2) = (w_2)^r$; y **verificar** $w_3$ (copia)
6. $f((w_2)^r)$, para finalmente **verificar** $w_2$
---


Ahora en $St_2$ tenemos $f(W) = W^r$

Es importante notar que para verificar que una cadena se encuentra en el orden correcto posteriormente en la cadena (dentro de $V$), si se sabe que alguna $w_i$ está en reversa, entonces se debe efectuar $f(w)$ de nuevo.

Para al **ADP**, considerando que tenemos ${x,y}$, los símbolos $\Psi$ serán
$$U \rightarrow X$$
$$V \rightarrow Y$$
---

Sabe donde acaba $(w_3)^r$ cuando encuentra $M$ en la pila


Es decir, con $(w_3)^r$ en el top




[^1]: Documentación oficial de máquinas https://maquinas.readthedocs.io/