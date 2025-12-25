[[-(°)NOTED]]
Hola te voy a enseñar a como escribir basadamente, es decir, en **Markdown**:
# Títulos en distintos niveles

## Segundo nivel
### Tercer nivel
#### Cuarto nivel
##### Quinto nivel
###### Sexto nivel
(Creo que sol hay 6 niveles)


Formatos de texto:
**negritas**
*cursivas*
***ambas al mismo tiempo OMG***
___también se puede con guiones bajos (en cualquier sentido funciona como un asterisco '\*')___

El modo de visualización/lectura no guarda más de 6 *espacios* consecutivos, en su lugar, los combina en 1 solo, ejemplo:

~~Texto tachado~~


Marcado en color
No se puede subrayar? #confirmar
Pero lo que si se puede hacer es marcar con ==color el texto==
Es útil para ==resaltar texto==

## Divisores y presentaciones

Divisores con tres guiones

---
Presentación 1

---
Presentación 2

---

## Citas
Para poder poner una cita, se pone '>'
>Lo importante no es lo que sabes, sino lo que haces con lo que sabes


## Listas
**Listas sin enumerar**
Se crea con un '-'
- Hola
- Soy una lista

**Listas numeradas**
1. Jijija
2. Solo es poner un número y un punto '.'
3. Al meter tabulación se genera una lista dentro de la lista:
	1. Apoco sis
	2. Pues si
4.

**LISTA DE TAREAS**
Guion +espacio + corchete + espacio + cerrar corchete + espacio
- [ ] Omaga
- [ ] Soy un checkbox papo
- [ ] Con Enter pone uno automático

O una lista marcada por default:
- [X] Estoy marcada desde mi creación trollazos
- [x] De hecho sis

## Imágenes
Si se copia y pega cualquier imagen y se pega en una nota, se adapta automáticamente al formato markdown
_Por ajustes de la aplicación, las imágenes pegadas se guardan en una carpeta llamada 'Anexos' que es creada en caso de no existir, en la carpeta donde esta guardado el documento donde estas pegando la imagen_

Ejemploo
![[Linux papu.jpg]]

Si se quiere ingresar manualmente se tiene que ingresar:
*Mediante una ruta (ya sea ruta o absoluta):*
! + \[\[(ruta del archivo)]]
ó
*Mediante un link de internet*
! + \[Nombre del archivo] (link xd)
*Ejemplo*:
![Apoco si](https://images7.memedroid.com/images/UPLOADED930/64aea8fbaaf1f.jpeg)

Y se pueden redimensionar:
*A lado del nombre de la imagen, con un pibote '|', se pone el numero de pixeles de largo:*
![Apoco si |500](https://images7.memedroid.com/images/UPLOADED930/64aea8fbaaf1f.jpeg)

## Bloques de código OMG (o algo que no quieres que lo compile Markdown)
Pero si es un lenguaje de programación:
Se ponen 
'\`\`\`' + el nombre del lenguaje a escribir
*para que pueda detectar y colorear de acuerdo al lenguaje:*
Ejemplo JS:
```js
function papu_apoco_si(parametros, baybi){
	let S16 = document.createElement("sus");
	if(S16=="Me quiere"){
		arrancarhoja(()=>{
			flor.innerHTML = `
				Me quiere ${S16},
				No me quiere ${S16}
			`
		});
	}
	else{
		llorar();
		console.log("Esto ni de broma sirve");
	}
	return trolleo;		
}
```
Ó con C:
```C
#include <stdio.h>
int main (){
	int estoEsUnTrolleoHermano = 16, i;
	for(i=0; i<estoEsUnTrolleoHermano; i++)
	{
		printf("Mi sus favorita es: %i\n", i);
	}
	return 0;
}
```
Ó PHP:
```PHP
<?php
	$ELTROLLEO = (isset($_POST("trolleo") && $_POST("trolleo")!="")? $_POST("trolleo"): false;
	echo $ELTROLLEO;
>
```
y ya porque no sé otros lenguajes (todavia) PIPIPI

## Comentarios que no compilará Markdown
%% En modo lectura, yo desaparezcooOOo
	De hecho todo este bloque
%%
### Carácteres markdown que no quieres que se compilen
Se escapan como en C o en muchos otros lenguajes, con \\'
\*Este es un ejemplo escapado*
*Pues no escapado*

## Tablas
| RECARGUEITOR | RECARGA |
| ------------ | ------- |
| Soy troll    | $20     |
| jijijas      | $50     |



## Enlaces externos
*Así no mas:*
https://www.youtube.com/watch?v=q7snzrbARL4&t=194s

*Ó con un texto visual en vez del link:*
Este es el [Vidiotutorial de obsidian](https://www.youtube.com/watch?v=q7snzrbARL4&t=194s)
Y este formato es:
\[titulo](link)
O ingresa el comando Ctrl+K para pegar el formato de url rápidamente

Para pegar links de notas de obsidian puedes usar los **Wikilinks** (no es MarkDown)
[[♦Fuerte de la Creación♦]]

O el formato de Markdown, el cual es mejor cuando le quieres modificar el nombre al link, pero se deshabilita la vista previa:
[Fuerte de la Creación OMG](obsidian://open?vault=%E2%99%A6%20Fuerte%20de%20la%20Creaci%C3%B3n%20%E2%99%A6&file=_Fundamentaci%C3%B3n%2F%E2%99%A6Fuerte%20de%20la%20Creaci%C3%B3n%E2%99%A6.about)

*(Ambos apuntan a la misma nota)*

# Otras cosas
En la vista lectura, el comentario no es visible de este modo:

- [ ] Comentarioooo
>No

Pero de este sí

- [x] Holi

>SI, están separados




