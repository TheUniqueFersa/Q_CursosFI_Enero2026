---
tipo: Generador
tipo_primario: Path
ancestro_directo: "[[GENERADOR]]"
---
# ***Ptetra***
>🔶Genera🔶 **estrategias**

>***P***tetra
>**P**: Todas las iteraciones empiezan con *P*
>***tetra***: 4 variantes

# Descripción
[[GENERADOR]] que se especializa en **estrategias**, las cuales *regirán el procedimiento* que se deberá seguir para lograr un ⏺ **Objetivo** específico

Se dividen en 4 tipos:
- [[#☼ Plan]]
- [[#♠Programa]]
- [[#♣ Proyecto]]
- [[#‼ Protocolo]]

## Acciones
Un ptetra puede:
- Ser ``completado``: cuando esto ocurre, todo el cuerpo del ptetra dentro del campo es inhabilitado, es decir, ya no puede ocupar un lugar valido en el $SCH$ y sus protocolos pasan al ==estado== **INGAP** o **STANDBY** donde pueden o *terminarse* o *Heredarse*

# Definición 
Hereda la [[GENERADOR#Definición|definición de GENERADOR]]:
![[GENERADOR#Definición]]
> [!info] PTETRA
> 
> Un ptetra es una tupla $(\delta, T_F, \Gamma)$
> - $\delta$ es la Planeación / MODELO que seguirá el ptetra para su compleción. Presenta un Modelo Ideal que es el *mejor estado que puede adquirir dicho ptetra*
> - $T_F$ es el lugar dentro del $SCH$ activo
> - $\Gamma_\alpha$ es una lista de `Task` que definen la existencia del ptetra, es una tupla
>  $(\Gamma_\alpha^O, \Gamma_\alpha^M, \Gamma_\alpha)$[^1]
> 	- $\Gamma^O$: Lista de Objetivos, estos son `task` de #MILESTONE/ORDEN_SUPERIOR . ==La compleción de la totalidad de esta lista implica la compleción del Ptetra==
> 	- $\Gamma^M$: Lista de Misiones, estos son `task` de tipo #XCH. ==La compleción de un `task` de tipo Misión implica la transición de una etapa a otra dentro del ptetra==
> 	- $\Gamma$: Lista de `task` convencional. ==La compleción de estos `task` puede cambiar el estado del ptetra.==

Se debe entender a los ptetras como Sectores que hacen o ayudan al portador a mejorar en algún aspecto, pero el mismo portador es el que debe respetar la posición temporal del ptetra dentro del $SCH$ (que indica la $T_F$ del ptetra) para así en las llamadas *sesiones*, tomar el siguiente `Task` entrante dentro de $\Gamma$, *Encapsularse* y trabajar en él **procurando su compleción**.

# Tipos
La diferencia entre los 3 primeros tipos radica en la transición de estado

El cuarto tipo, llamado Protocolo, es un concepto heredado de una *clase primaria*.
Los Protocolos se encuentran en todo elemento del Fuerte que *tenga algoritmo*, es decir, prácticamente en cualquier elemento. 
Un Protocolo es un *polimorfismo* de una función o método presente en la [[Biblioteca - BIBLIOTECAS]], y puede ser ==invocado==.
## ☼ Plan

## ♠Programa

## ♣ Proyecto

## ‼ Protocolo

---
# Fundamentación

[^1]: En todos los casos, $\alpha$ indica que es de es una nota $\alpha$, se omite en la descripción restante, pero para cualquier ptetra, se le asocia 1 y solo 1 Lista de `task`
