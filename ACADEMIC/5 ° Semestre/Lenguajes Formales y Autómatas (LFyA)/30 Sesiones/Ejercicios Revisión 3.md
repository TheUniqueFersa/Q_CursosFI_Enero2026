# Sesión 05-11-2025

**Entrada**: cadena
Condición inicial: w está en la cinta, y vemos el primer símbolo de la cadena
1. Por cada $'a'$ en el inicio de $w$ marcar con $X$
	Marcar con $Y$ a una $'b'$ que siga a las aes
	y marcar con $Z$ a una $'c'$ que siga a las bes
---
1. Por cada $'a'$ marcada con una $X$, marcar una $'b'$ con $Y$ y una $'c'$ con $Z$
2. Comprobar/validar que solo queden Xs, Ys y Zs
3. Se acepta la cadena



>Podríamos traducir la máquina de Turing, pero mejor lo bajamos de nivel
>Estamos escribiendo el pseudocódigo

>A máquinas de Turing le encanta: dejar marcar y luego resolver