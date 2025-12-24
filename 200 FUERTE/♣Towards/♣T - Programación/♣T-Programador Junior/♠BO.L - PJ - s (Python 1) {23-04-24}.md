---
ptetra: "[[♠BrainOut]]"
tipo_nota: Sesión
pertenece a:
  - "[[♣T - Programador Junior]]"
  - "[[♣Learn]]"
terminado: true
fecha: 2024-04-23
serie: Programación competitiva
tipo_BO: Lluvia de conceptos
lenguaje: Python
estado: Concluido
tags:
  - BO/Programación
  - PJunior
---
# ***♠BO.L - PJ - sesión {23-04-2024}***
# ***Python 1: Variables y tipos de datos***
---
# Misión
- [x] *Aprender fundamentos de Python* ✅ 2024-04-24


---
# *Apuntes*
---
*Inspirado de la Clase de EDA I {18/04/2024}*

## Comentarios en código
```Python
#Soy un comentario de línea
'''
Soy un comentario de bloque WTF
De hecho soy una cadena que no está asignada a ninguna variable
'''
"""
También se pueden usar ""
para las cadenas multilíneas
"""

```

## Variables
Supongo hay tipos de datos primitivos como los enteros, flotantes, luego están los objetos string.
Sin embargo, una variable en Python, es una ***referencia*** a donde está guardado dicho 'objeto'

Si se declara:
```Python
cadena = "Hola soy una cadena"
numero = 1
flotante = 2.45
# Podemos saber la referencia de cada variable si llamamos a la función id()
id(cadena)
id(numero)
id(flotante)
# Esto arroja las referencias exactas de cada variable
```

### Referencias
Se pueden entender como si fueran direcciones de memoria como en C. Toda variable es como un apuntador implícito, al momento de asignar algo a una variable, como en Python no hay necesidad de establecer el tipo de dato, entonces el interprete crea en memoria lo que le pediste y le da la referencia de dicho (objeto) a la variable con el nombre dado.


Para acceder a la referencia de alguna variable, ejecuta la función ``id(variable)``

Si una variable se crea con contenido igual al de otra que existe hasta ese momento, entonces el interprete lo que hace es darle la referencia a ambas variables del mismo objeto en memoria.
Sin embargo, el interprete sabe diferenciar entre ambas, de tal forma que si cambias el valor de una variable, el contenido de la otra no se verá afectada, esto es porque:

Cuando una variable cambia de valor, el interprete vuelve a hacer el proceso de crear en memoria lo que le pediste y luego asignarle dicha referencia a tu variable, de tal forma que la referencia compartida ahora deja de estarlo.
Supongo es por eficiencia de memoria.
*En el interprete:*
```Bash
>>> x = 20
>>> y=20
>>> id(x)
140723681901592
>>> id(y)
140723681901592
#'Apuntan' a lo mismo, pero al momento de cambiar valores, no se ve alterada la otra:
>>> x=x+78
>>> id(x)
140723681904088 #Diferente dirección que la de y y su original misma
>>> id(y)
140723681901592
```


Si el interprete ya no encuentra alguna variable que haga referencia a algún objeto en memoria (naturalmente ocurriendo cuando por ejemplo, se cambia el valor de una variable de 24 a 17, siendo que 24 ya no es un valor utilizado por ninguna otra variable), el mismo se encarga de devolver a memoria libre dichos espacios previamente reservados
## 'Tipos de datos'

```Python
#string
cadena = "Soy una cadena"
cadena_2 = 'yo tambien'
entero = 16
booleano = True
flotante = 4.2
flout = 0.00000000004
flout_2 = 5000000000000000000000

	print("Los tipos de datos son: ")
print(type(cadena), type(entero), type(booleano), type(flotante))
print(flout, flout_2)
```
## ``print``
Imprime los argumentos pasados **con un espacio entre cada uno**
si se requiere que print no tenga un salto de línea cuando se ejecute, entonces se debe:
```Python
print("Esto es una print sin salto de línea al final", end='')
```
Nótese que a ``end`` se le asigna el caracter con el que se quiere que la impresión termine. Como es una cadena vacía, entonces no hace el 'enter'

## ``STRING``
### Texto formateado
```Python
#Cadenas concatenadas
cadena_0 = "formateada"
cadena_1 = "una cadena "
cadena = "Hola soy " + cadena_1 + cadena_0

print(cadena)

#Cadenas formateadas:
cadena = "Hola soy {}{}".format(cadena_1, cadena_0)

#Otra forma de formatear
cadena = f"Hola soy {cadena_1} {cadena_0}"
#Nótese que la f indica un formato
```
*Es más fácil manejar y leer las cadenas formateadas*

## `type`
Devuelve el tipo o **clase** de un *dato*

##  ``input`` 
Función que permite leer del teclado.
Devuelve siempre cadenas
Si quieres formatear en tipos de datos, devemos hacer un ***cast***:
```Python
#siempre devuelve
#Castear a entero.
leer = (int)input("Dame un numero")
#Castear a flotante.
leer = (float)input("Dame un flotante")
```


**No hay límite de memoria para un dato más que la misma memoria de la computadora**


## Operaciones
Existen:
- Sume
- Resta
- Multiplicación
- División
- Módulo
- División (parte entera)
- Potenciación
- Esta cosa:
```Python
guat = "Fersi" * 5 #Devuelve un class='str' (FersiFersiFersiFersiFersi)
print(f"{guat} es de tipo {type(guat)}")
```
*División entre 0 devuelve error*
### Jerarquía
|     | Operación      |
| --- | -------------- |
| P   | Parenthesis    |
| E   | Exponents      |
| M   | Multiplication |
| D   | Division       |
| A   | Addition       |
| S   | Substraction   |


---
---

# ***INTERCONN***
## Conexiones

## Recursos

### Material - Documentación empleada

### Conversaciones con mi tío

## Referencias

