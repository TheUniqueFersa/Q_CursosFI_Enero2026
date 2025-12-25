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
> [!info] PTETRA
> 
> Un ptetra es una tupla $(D, O, F, \delta, M, F, \Gamma)$
> - $D$ es la Descripción del Ptetra, contiene conexiones básicas hacia otros conceptos clave (Es un Polimorfismo del [[nodo Base]])
> - $O$ es el Objetivo(s) que traduce la $EE$  en algo tangible a un plazo temporal determinado. Este elemento es de tipo `Task` de tipo #MILESTONE/ORDEN_SUPERIOR y su compleción implica la ==culminación del ptetra==
> - $F$ es la serie de *eventos* resaltables que sucedieron para dar creación a tal ptetra, aquí también se explica su $EE$
> - $\delta$ es la Planeación / MODELO que seguirá el ptetra para su compleción. Presenta un Modelo Ideal que es el *mejor estado que puede adquirir dicho ptetra*
> - $M$ es el conjunto de **Misiones** (`Task`s de tipo #XCH) propias del ptetra que definirán su *camino temporal*. Tener la totalidad o parcialidad de los elementos pertenecientes a este conjunto *completados*, implica una *transición de estado* de dicho ptetra
> - $F$ es el lugar dentro del $SCH$ activo
> - $\Gamma$ es la lista de `Task`s de dicho ptetra, en términos prácticos, se instancia un Kanban que es un Polimorfo de este elemento.

Se debe entender a los ptetras como Sectores que hacen o ayudan al portador a mejorar en algún aspecto, pero el mismo portador es el que debe respetar la posición temporal del ptetra dentro del $SCH$ (que indica la $F$ del ptetra) para así en las llamadas sesiones, tomar el siguiente `Task` entrante dentro de $\Gamma$, *Encapsularse* y trabajar en él **procurando su compleción**.
# Tipos
La diferencia entre los 3 primeros tipos radica en

El cuarto tipo, llamado Protocolo, es un concepto heredado de una *clase primaria*.
Los Protocolos se encuentran en todo elemento del Fuerte que *tenga algoritmo*, es decir, prácticamente en cualquier elemento. 
Un Protocolo es un *polimorfismo* de una función o método presente en la [[Biblioteca - BIBLIOTECAS]], y puede ser ==invocado==.
## ☼ Plan

## ♠Programa

## ♣ Proyecto

## ‼ Protocolo

---
# Fundamentación

