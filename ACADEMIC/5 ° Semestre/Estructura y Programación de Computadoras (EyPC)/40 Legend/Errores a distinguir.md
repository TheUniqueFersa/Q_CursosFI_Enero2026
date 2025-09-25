---
pertenece a:
  - "[[Proyecto cojudo de EyPC]]"
---
1. [[#CONSTANTE INEXISTENTE]]
2. [[#VARIABLE INEXISTENTE]]
3. [[#ETIQUETA INEXISTENTE]]
4. [[#MNEMÓNICO INEXISTENTE]]
5. [[#INSTRUCCIÓN CARECE DE OPERANDOS]]
6. [[#INSTRUCCIÓN NO LLEVA OPERANDOS]]
7. [[#MAGNITUD DE OPERANDO ERRÓNEA]]
8. [[#SALTO RELATIVO MUY LEJANO]]
9. [[#INSTRUCCIÓN CARECE DE AL MENOS AL MENOS UN ESPACIO RELATIVO AL MARGEN]]
10. [[#NO SE ENCUENTRA END]]
>Se puede añadir algún otro error si se cree necesario

# CONSTANTE INEXISTENTE
Cuando no se declara una constante y posteriormente se pretende utilizar

Una **constante** siempre lleva `#`
```
LDAA #VARIABLE
```

# VARIABLE INEXISTENTE
Cuando no se declara una variable y posteriormente se pretende utilizar

>No lleva #
```
LDAA VARIABLE
```

# ETIQUETA INEXISTENTE
Cuando la etiqueta de referencia no existe y el micro no puede determinar su ubicación
```
BEQ ETIQUETA
```

# MNEMÓNICO INEXISTENTE
El mnemónico no forma parte del set de instrucciones del CPU ni es una directiva de ensamblador
```
COMPA *Debería ser CMPA
```

# INSTRUCCIÓN CARECE DE OPERANDOS
Es cuando el programador no escribe el operando que requiere la instrucción
```
LDAA <???>
*Por ejemplo podría ser LDAA #S1C
```

# INSTRUCCIÓN NO LLEVA OPERANDOS
Cuando el programador escribe un operando que NO requiere la instrucción
```
MUL 25,X
*Debería ser solo MUL*
```

# MAGNITUD DE OPERANDO ERRÓNEA
Cuando el operando tiene una magnitud excesiva respecto a lo que soporta la instrucción
```
LDAA #$1789
*Debería solo LDAA #$17
```

>Esto lo evitamos al consultar cuantos bytes ocupa cada instrucción
>SI tiene 2 bytes entonces 1 para la instrucción y 1 para el operando


# SALTO RELATIVO MUY LEJANO
ES cuando la ubicación de la etiqueta de salto de una instrucción relativa se encuentra más allá del intervalo de +128 o -127 (en decimal)
```
BEQ ETIQUETA
```

# INSTRUCCIÓN CARECE DE AL MENOS AL MENOS UN ESPACIO RELATIVO AL MARGEN
Es cuando el programador se abstiene de dejar al menor un espacio respecto al margen de inicio de la línea al escribir una instrucción
```
LDAA #$17 *Incorrecto
	LDAA#$17 *Correcto
```

>📌 Solo las etiquetas en el código fuente debe estar pegado al margen


# NO SE ENCUENTRA END
Es cuando el programador se abstiene de escribir la directiva de ensamblador `END`



