---
ESTADO_LEC: 🟠EN ESPERA🟠
status: En espera de ejecución
tipo_nota: Essentia
pertenece a:
  - "[[♠Read]]"
  - "[[‼Essentia]]"
Requerimientos_libro:
  - Requiere pensamiento físico y filosófico
Libro: 
Autor:
  - Shahen Hacyan
Editorial: Fondo de Cultura Económica
Colección: La Ciencia para Todos
LIGHTVOLT: ⚡1🔵
Libro_f_d: Físico
Disponibilidad: true
Número: 50
Materia: Astronomía
Calificación: 
Páginas: 127
Progreso: 47
image: "[[-- PORTADA -- Los hoyos negros y la curvatura del espacio tiempo.jpg]]"
fecha_creado: 2024-07-13
fecha_terminado: 
próxima_fecha: 
tags:
  - Active_kanban/♠Read/Los_hoyos_negros-Hacyan
serie: Física Básica
terminado: false
nombre: Los_hoyos_negros-Hacyan
---
# ***Los hoyos negros y la curvatura del espacio-tiempo***
``` dataviewjs
function projectTracker(dv, query) {
    let searchPagePaths = dv.pages(query).file.path
    
    for(let i=0; i < searchPagePaths.length; i++){
        if(dv.page(searchPagePaths[i]).Páginas){
                    let title = dv.page(searchPagePaths[i]).nombre;
                    console
                    let total = dv.page(searchPagePaths[i]).Páginas;
                    let status = ((dv.page(searchPagePaths[i]).Progreso / dv.page(searchPagePaths[i]).Páginas) * 100).toFixed();
                    const progress = "![pb|500](https://progress-bar.dev/" + status + "/?scale=" + "100" + "&title=" + title + "&width=400)"; //you could set any width if you need
                    dv.paragraph(progress);
                    dv.paragraph("<br>"); //use this if you have many projects to track.
        }
    }
} 

projectTracker(
    dv,
    "#Active_kanban/♠Read/Los_hoyos_negros-Hacyan" //change tag if you need
)
```
## Objetivo
## Resumen

## Opinión


# Capítulo 1. La gravitación universal
- [x]  ✅ 2024-07-14

## Una camino hacia lo celeste
**Copérnico** y su idea heliocéntrica ante una sociedad geocéntrica que creía que la física terrestre y celestre eran diferentes.

**Galileo** defendiendo la idea de Copérnico al tener unos descubrimientos con su telescopio de cuerpos orbitando alrededor de Júpiter. Sin embargo creía que las órbitas eran circulares.

**Kepler** sería que el demostraría que las trayectorias eran elípticas, formulando sus 3 leyes.

**Hooke** habría predicho de manera cualitativa que los cuerpos ejercen fuerza de atracción entre sí y que si esta fuerza no existiese, irían en línea recta (*física celestre y terrestre sería lo mismo*).

**Newton**, con la maquinaría matemática que él mismo hacía inventado años atrás (el cálculo diferencial e integral) empieza a dar conexión entre la física celeste y la terrestre, misma que sería la misma y sería la idea de que todo cuerpo con masa ejerce una fuerza de atracción hacia otros cuerpos en una distancia y relación específicas.
Su obra describiendo esto, ***Philosophiae Naturalis Principia Mathematica*** sería difundida y en un principio sólo sus discípulos ingleses serían capaces de entender semejante obra pesada, sin embargo **Voltaire** con la ayuda de la marquesa **Le Chatelet** llevarían dicha obra a Francia.
Allí, **Pierre-Simon Laplace** la resumiría para que fuese más digerible.


## Cuerpos oscuros de Laplace
En términos de Laplace, los cuerpos oscuros son aquellos que no dejan escapar su luz por la acción de su propia gravedad.
De esta forma, usando la fórmula de **Velocidad de escape**, un objeto "partícula" puede escapar del campo gravitatorio de su astro solo si sobrepasa esta velocidad en su asenso.

La fórmula:
- [ ] POner formula XD

También nos dice que si la velocidad de escape es la de la luz, el cuerpo en cuestión no pordía escapar, por lo que con un sencillo despeje se podía deducir que 

llamado **radio gravitacional**, donde dado una masa, se tiene que tener por lo menos dicho radio para que el cuerpo pueda escapar. (Con ciertas condiciones claro, ya que estamos considerando que el cuerpo se acerca a un 99% a la velocidad de la luz).
Si el cuerpo tiene una masa M y un radio mayor al del radio gravitacional, entonces no podrá escapar dado que su velocidad será mayor a la de la luz.

En ese sentido en esos tiempos, esa era la definición de un cuerpo oscuro de Laplace, pero la cuestión era:
>❓ ¿Podemos considerar a la luz como una partícula a la cuál le afecta la gravedad como a cualquier otra como lo es la masa?

Ciertamente había que considerar otras cosas...



---
# Capítulo 2. La teoría de la relatividad de Einstein
- [x]  ✅ 2024-07-24
Todo fenómeno estudiado requiere de un sistema de referencia.
Desde tiempos de Galileo se preguntaban si un cuerpo en movimiento tendría seguiría las mismas leyes que un en reposo, la respuesta es que sí. 
>Todo movimiento es relativo al sistema de referencia en el cuál se observa y las leyes de física no cambian de un sistema a otro -> *Principio de relatividad de Galileo*

La Mecánica Cuántica surgió para dar explicación a las inconsistencias generadas por querer aplicar la física Newtoneana a escalas microscópicas.

A mediados del siglo XIX, surgieron las primeras dificultades de la relatividad galileana cuando el físico escocés **James Clerk Maxwell** formuló la teoría matemática de los fenómenos eléctricos y magnéticos.
**Maxwell** demostró que tanto la electricidad como el magnetismo forman parte del mismo fenómeno: el *electromagnetismo*.

De esta forma demostró que la luz es una onda, pero como cualquier onda requiere un medio.
Surgió la hipótesis de un medio extremadamente sutil, el "*éter*" que serviría como un sistema de referencia universal.

**Einstein** demostró que el éter no existía,
postulando que las ecuaciones de Maxwell del electromagnetismo son rigurosamente válidas en cualquier sistema de referencia.
La condición de invariancia se crumple a condición de que el tiempo medido en un sistema no coincida con el medido en otro sistema.
>*la velocidad de la luz es la misma en cualquier sistema de referencia* - Einstein

Para la luz, si la velocidad de la luz iba hacia la izquierda y de la tierra sale, no se percibe como 300000 + 30, sino simplemente c

>*Factor de acortamiento*:
$$
\sqrt{1-\frac{v^2}{c^2}}
$$
>$v$ es velocidad de la nave y $c$ velocidad de la luz

Para velocidades de algunos metros o kilómetros sobre segundo, el factor de acortamiento es tan cercano a 1 que es imposible de detectar.

>Si la nave viajara a unos 10,000 km/h la diferencia enter los tiempos sería apenas de una diez millonésima de segundo por cada hora transcurrida
>>Si la nave viaja a una velocidad muy cercana a la de la luz, dígase 295,000 km/s, una nave tardaría en ir a la estrella Sirio desde la Tierra 20 años medidos desde ella, pero para los tripulantes solo habrían pasado 


**Einstein** demostró una relación enter la masa y la energía.
>No toda la masa se puede transformar en energía, esto solo ocurre en casos especiales.
Pero es la explicación de porqué el átomo de helio no resulta ser la suma de las masas de 2 protones y 2 neutrones.

La teoría de la relatividad predice la cantidad de energía necesaria para que un cuerpo de masa $m$ alcance la velocidad $v$:
$$
E = \frac{mc^2}{\sqrt{1-\frac{v^2}{c^2}}}
$$
>En el límite donde $v=0$, se se recupera la fórmula: $E=mc^2$ para la energía ya existente en forma de masa.

>📌 La energía de un cuerpo en movimiento aumenta con su velocidad

>💬 Se necesita una ==energía infinita== para que un cuerpo alcance la velocidad de la luz, es por eso que ningún cuerpo puede alcanzar o superar la velocidad de la luz.
>La excepción es la luz misma, pues según la física moderna, la luz esta formada por partículas llamadas fotones y estos tienen masa nula, por lo que pueden viajar a la velocidad límite.

>ℹ Ha habido teorías sobre partículas que pueden superar la velocidad de la luz, los llamados ***taquiones***, pero no se ha comprobado su existencia

En al teoría de la relatividad, se puede definir una seudositancia como:
$$
ds^2=dx^2 + dy^2 + dz^2 -c^2dt^2
$$
llamado el espacio el **espacio de Minkowski**
## Teoría de la relatividad general
Einstein tuvo que generalizar su teoría y lo hizo al publicar su obra en 1915
>El *espacio-tiempo* es curvo y la gravedad es la manifestación de esa *curvatura*

>ℹ Las curvas de menor longitud sobre una superficie curva se llaman **geodésicas**
>>Sobre la superficie de una esfera, la geodésica -- curva menor longitud enter dos puntos -- es un segmento de arco 

- **Espacios Riemannianos**

>La ***esencia*** de la teoría de la relatividad general es que el espacio-tiempo es curvo. En ausencia de masas gravitantes se tiene un *espacio-tiempo de Minkowski*, y una *partícula* se mueve *en línea recta* porque nada influye sober su trayectoria.
>La presencia de una masa deforma al espacio-tiempo y el *concepto de recta pierde su sentido*; en un espacio-tiempo curvo, una partícula se mueve a lo largo de una **geodésica**

- **Espacio-tiempo de Schwarzschild**
Si al esfera considerada de mas $M$ tiene un radio menor *al radio de Schwarzschild*.
$$ 
r_s=\frac{2GM}{c^2}
$$
entonces la luz emitida nunca podrá escapar. Es justamente el **cuerpo negro de Laplace**

En terminología actual, dichos cuerpos son los **agujeros negros**:
>Espacio-tiempo producido por un cuerpo masivo con tamaño igual o menor al radio de Schwarzschild. La superficie esférica cuyo *radio* es justamente el de *Schwarzschild* es llamada *horizonte del agujero negro*. **Todo lo que cruza es solo de afuera hacia adentro, nunca en sentido contrario**.

# III. La muerte de las estrellas
>ℹ
>**La fusión nuclear de una estrella termina definitivamente cuando solo queda hierro en su centro**
>Para la mayoría de estrellas, la fusión nuclear termina mucho antes, solo las más masivas son lo suficientemente calientes como para producir hierro

>ℹ📌
>*Una estrella no puede tener menos de una centésima de la masa solar* porque la temperatura en su centro sería insuficiente para encender las reacciones nucleares
>*Una estrella cien veces más masiva que el sol sería sumamente inestable* y se desbarataría rápidamente

Entre más masiva, menos tiempo tiene de vida
De esta forma el *sol puede durar varios miles de millones de años* y una estrella extremadamente masiva apenas duraría algunos **miles de años**


---
