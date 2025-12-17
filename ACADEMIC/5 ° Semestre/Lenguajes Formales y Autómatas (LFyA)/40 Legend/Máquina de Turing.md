---
pertenece a:
  - "[[Lg - Lenguajes Formales y Autómatas (LFyA)]]"
scope: Específico
ancestro_directo: "[[8. La máquina con cinta]]"
---
# Definición
> [!info] MT
> $(Q, \Sigma, \Gamma, q_0, B, A, \delta)$
> - $Q$ es un conjunto de estados finitos
> - $\Sigma$ es un alfabeto de símbolos terminales
> - $\Gamma$ es un alfabeto de cinta tal que $\Sigma \subset \Gamma$
> - $q_0$ es el estado inicial, $q_0 \in Q$
> - $B$ es el símbolo de espacio blanco
> - $A$ es un conjunto de estados que denominaremos finales donde $A\subset Q$
> - $\delta$ función de transición que cumple con: 
> $$\delta:Q\times\Gamma\to Q\times\Gamma\times\{\text{left, right}\}$$

# Objeto de memoria: ***Cinta***
- Infinita: cuando necesitemos más, obtenemos más
- Al inicio, todo lo que no es entrada es $\mathfrak{B}$
- Al inicio, el inicio de la cadena de entrada se le conoce con la posición 0
 
>ℹ La cadena está dentro del **objeto de memoria**
>El alfabeto de terminales están dentro del alfabeto de auxiliar $\Sigma\subset\Gamma$
>*Nuestro alfabeto de la cinta debe contener al alfabeto de la cadena*


# Descripciones instantáneas
Derivaciones en Máquinas de Turing
>Se pueden escribir en una sola cadena

# Modularidad en Máquinas de Turing
>Una máquina se puede pegar a otra


# ✅ Aceptar una cadena con MT
>💭 Con AF, AD, AND ...
>- La cadena de entrada se acaba
>- La máquina estaba en un estado final

- Con **pasar** por un **estado final es suficiente**
- **No es necesario procesar toda la cadena para aceptarla**

# ❌ Rechazar una cadena 
>💭 Con otras máquinas:
>- La cadena de entrada se acababa
>- La máquina estaba en un **estado no final**
>- O de un **estado no había transición** o se iba al **estado error**

Para MT:
- Que **de un estado no haya transición**


==APD y MT son equivalentes==

Para toda $MT_k$ existe una MT equivalente

==$MT_k$  es equivalente a la MT==

Para todo MT no determinístico, existe una MT equivalente
