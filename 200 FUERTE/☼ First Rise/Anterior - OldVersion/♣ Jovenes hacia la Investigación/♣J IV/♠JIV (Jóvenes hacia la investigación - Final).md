La última parte de la saga de Jóvenes hacia la investigación

Especificaciones de entrega:

Hay dos entregas principales: *INFORME TÉCNICO* Y *CARTEL CIENTÍFICO*, pero por la naturaleza de la investigación, hay un otros productos que tengo que hacer aparte:

1. *Aplicación integradora del metro*
2. *Aplicación Integradora de actividades* realizadas a lo largo del curso
3. Video que muestra la funcionalidad de estos 2 productos. _(Aunque este sea opcional, se recomienda hacerse para la demostración de lo realizado, además de que se lo propuse a la investigadora Xdn't)_
4. Diagrama de Flujo del trabajo (Este iría junto con el *INFORMA TÉCNICO*, por lo que, aunque se tiene que realizar, es parte casi obligatoria de los entregables de abajo)



## INFORME TÉCNICO
El trabajo debe contener
1. CARÁTULA con los siguientes datos: 
	1. Nombre completo del alumno(a), 
	2. Grado escolar, 
	3. Plantel o Escuela, 
	4. Nombre del Profesor Promotor, 
	5. Dependencia donde realizaste tu Estancia, 
	6. Departamento y/o laboratorio, 
	7. Nombre del Investigador(es) con el (los) que trabajaste.
2. CONTENIDO
	• Título del trabajo
• Introducción: Antecedentes y Planteamiento del problema (de 5 a 8 páginas como máximo)
• Hipótesis y Objetivos
• Método: Materiales, Sujetos (si existen) y Procedimiento
• Resultados
• Discusión (Análisis e interpretación de resultados)
• Conclusiones
• Referencias documentales (Sólo las que tu leíste y utilizaste para tu trabajo)


---
En esta parte es donde entra el **Diagrama de Flujo**:

O Diagrama de Bloque, pero debo elegir mis aplicaciones.

---

3. OPINIÓN Y EXPERIENCIA PERSONAL: Expresa en tus propias palabras, qué te pareció haber participado en la
Estancia.
4. Presenta tu trabajo impreso, engargolado o en folder de costilla.

![[Pasted image 20230723141951.png]]



---

## CARTEL CIENTÍFICO
El propósito es presentar en forma resumida y en un plano, tu trabajo realizado en la estancia. Utiliza tu creatividad para presentar un trabajo interesante, atractivo y con buena presentación. Elabora tu texto en COMPUTADORA (no a mano). No se aceptarán maquetas. Los lineamientos generales son:
1. Contenido:
• Título del trabajo
Planteamiento del problema (breve descripción)
• Hipótesis y Objetivos
• Método: Materiales, Sujetos (si existen) y Procedimiento
• Resultados
• Discusión y Conclusiones
Referencias documentales (Solo 2 de las que utilizaste y con letra más pequeña que el resto del cartel)
• Dependiendo del tema agrega a tu trabajo las imágenes necesarias (fotografías, gráficas, cuadros, esquemas, dibujos, mapas, etc.)
2. Balancea la cantidad de información escrita, con el material ilustrativo. Puedes utilizar cualquier color de tu agrado
para ilustrar tu cartel o para ponerle un fondo.
3. Pega el trabajo en un pliego de CARTULINA "BATERÍA" GRUESA (1 m. por 78 cm.), en forma HORIZONTAL.
4. El texto deberá ser de un tamaño claramente legible a una distancia aproximada de 80 centímetros.
5. Coloca en el ángulo inferior derecho del pliego, un rectángulo banco (12 cm. por 7 cm. aprox.) con los siguientes datos. Anota tus datos en COMPUTADORA (no a mano).
• Nombre completo del alumno
Grado escolar
• Plantel o Escuela
• Profesor Promotor
• Dependencia y laboratorio donde realizaste la Estancia Corta
• Nombre del Investigador
6. Es necesario cubrir el cartel con plástico transparente para su protección.
No se aceptarán trabajos que no cumplan con estos requisitos.

---

Explicación de el funcionamiento de movimiento de trenes:

Hay que entender que hay varias restricciones para que un tren pueda avanzar.

Realmente estas consideraciones se tomaron en cuenta de acuerdo a la realidad y como un alumno puede percibir el funcionamiento del metro en el día a día.

El programa se divide en varias partes:
Como aiempre está la parte lógica y la parte visual separadas.

Pero también esta el recuadro de tiempo.


Hay una matriz que le indica a un tren cuando moverse.
Hay varios estados

Para \[i], están los estados:
### 0
Estado por defecto, este estado implica que el tren estará revisando en todo momento la opsición de:
- Su tren vecino (si está a dos estaciones exactas o más lejos, el tren en revisión puede cambiar su *Indicador Tren-Estación* a \[i] = 1)

### 1
Indica que **Puede avanzar a la siguiente estación** sin temor a chocar o tener que frenar por 'Proximidad de tren vecino'

### -1
Indica que **El tren está a punto de llegar a su estación, por lo cambia a su estado -1**, esto implica que el tren empézará a desacelerar y eventualmente llegará a una velocidad 0. También implica que el tren después de que llegue a su estación, si el estado de \[y] se lo permite, esperará solo 10 segundos en la estación, después cambiará al estado \[i] = 0, para poder volver a analizar si ya puede avanzar.


Referencia:

Mata Hernández, G. (2019). Manual de Prácticas del Laboratorio de Instrumentación Virtual. Laboratorio de Medición e Instrumentación, Facultad de Ingeniería, UNAM. 


Álvarez Morales, O.,& Mata Hernández, G. (2023). Concentración de Actividades. Departamento de Control y Robótica, Facultad de Ingeniería, UNAM.



#### INDICACIONES para el uso del simulador


Antes que todo, debes ejecutar el programa presionando el botón :
Sabrás que se está ejecutando, porque al accionar alguna palanca, se enciende el foco LED indicador de arriba

Una vez que ya esté bajo ejecución:
¡Bienvenido, Jefe de mando!
Su trabajo es determinar cuando un tren puede o no avanzar de acuerdo al tablero donde se pueden ver todos los trenes visualmente, así como su posición de acuerdo a las estaciones.

Si determina que un tren puede avanzar, entonces accione la palanca correspondiente de dicho tren (para identificarla, debes saber que su palanca correspondiente está abajo de la imagen del tren que maneja; su color también es el mismo que la del tren que maneja).

Al accionar la palanca, el foco LED que tiene arriba la palanca se prenderá de color verde.
Al hacer esto, usted habrá autorizado a que ese tren avance, sin embargo, si el tren correspondiente está en estación, solo avanzará si el foco "Autorización total de avance" del dicho tren está en verde y esto ocurrirá solo si se cumplen las siguientes 3 condiciones al mismo tiempo:
- El tren ha sido autorizado por usted
- El tren no está en distancia de peligro de choque respecto a su siguiente tren
- El tren siguiente al tren que está manejando está a 2 estaciones o más de distancia

Si se cumplen dichas condiciones, el foco "Autorización total de avance" se encenderá, indicando que el tren puede avanzar, acción que hará inmediatamente.

Si el tren no está en estación, usted puede frenarlo, al desactivar la palanca del tren
En medio del túnel, puede indicarle a algún tren que frene o que vuelva a avanzar, esto lo hace igualmente con la palanca.



Tiene indicadores del "Estado aceleración", "Posición", "Autorización total de avance" y "velocidad" de cada uno de los trenes.


Si lo decide, puede autorizar el avance de todos los trenes, ellos harán automáticamente la labor de llegar a estación y salir a la siguiente de manera automática, creado un circuito que trabaja por si solo, pero al tener distancias diferentes entre estaciones, los trenes pueden acomodarse mal, por lo que su labor entra en juego:

Desactiva la palanca de "Autorización desde centro de control" del tren que crea necesario para que el sistema vuelva a tener una simetría entre cada tren. 
Puede optar por detener cierto tren, para permitir que los de adelante avancen un poco más, cuando crea necesario, vuelva a activar el tren que había desactivado.

Recuerde que el objetivo es que, los trenes no tarden tanto en llegar a una estación y que no estén muy pegados unos a los otros, pues solo hay 6 trenes en todo el sistema de 12 estaciones en total, recuerde que hay familias esperando regresar a sus casas usando esté sistema de transporte, haga lo mejor para que circuito funcione correctamente.


### Para referenciar:

- [x] https://dle.rae.es/investigaci%C3%B3n
- [x] https://dle.rae.es/investigar
- [x] https://www.oed.com/search/dictionary/?scope=Entries&q=learning
- [x] https://metro.cdmx.gob.mx/operacion/mas-informacion/material-rodante
- [x] https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwjBiq6bv6iAAxUNJUQIHQtABMMQFnoECA0QAw&url=https%3A%2F%2Fmetro.cdmx.gob.mx%2Foperacion%2Fmas-informacion%2Fmaterial-rodante&usg=AOvVaw0cUUDF3Rwr0626yczAjZhR&opi=89978449
- [x] https://phet.colorado.edu/es/
- [ ] Referenciar a google maps
Dependiendo del tema agrega a tu trabajo las imágenes necesarias (fotografías, gráficas, cuadros, esquemas, dibujos, mapas, etc.)






