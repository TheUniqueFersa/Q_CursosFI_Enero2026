---
pertenece a:
  - "[[♣Legend]]"
  - "[[♣T - Programador Junior]]"
tipo_nota: primaria
---

[[♣Towards]]
## Documentación




## Buffer
Problemas relacionados con le buffer y los saltos de líneas solo en los ingresos de datos sensibles al caracter de salto de línea, es decir, a los **scanf** con entrada de datos de tipo **char** (***scanf("%c", &caracter);***)





# Apuntadores



## Apuntadores a arreglos

### Apuntando a Matrices
Se debe declarar un apuntador y luego asignarle la matriz indicando la localidad exacta a donde se está apuntando
```C
#include <stdio.h>
int main (){
	float ejemplo[20][10], *apu;
	apu = ejemplo[10]; //Notese que se esta asignando el valor a apu de la dirección de [10][], es decir, la 10° fila
	return 0;
}
```
Si se tiene una variable apuntador \*ptr  apuntando a una matriz, esta se puede incrementar desde 0 hasta n elementos. Se puede recorrer toda la matriz de manera lineal al incrementar la dirección en memoria



## Apuntadores de Funciones

---
### Funciones
###### Función 'itoa'
https://cdiv.sourceforge.net/cdivhlp/itoa.htm


###### Función atoi
https://www.ibm.com/docs/es/i/7.5?topic=functions-atoi-convert-character-string-integer

###### Función atof
https://www.ibm.com/docs/es/i/7.5?topic=functions-atof-convert-character-string-float

### Funciones Estáticas
#Static

El atributo ***static*** en una función hace que esa función sea accesible solo dentro del mismo archivo, lo que impide que fuera de la unidad de compilación se pueda acceder a la función.


---
### Bibliotecas
##### Biblioteca Allegro:
https://github.com/liballeg/allegro_wiki/wiki/Allegro-Vivace


---
---
# ***INTERCONN***
## Conexiones
Notas secundarias
Notas que han de considerarse para la revisión de la actual, para tener contexto
## Recursos
Aspectos visibles de las notas secundarias
MATEEXTRA relacionado
Recursos para la MISION y OBJETIVO

## Referencias
![[C, C cómo programar_ Deitel.pdf]]
Referencias externas de otra fuente de información

---
---

\# Opcionales:

# Consideraciones

# Restricciones
