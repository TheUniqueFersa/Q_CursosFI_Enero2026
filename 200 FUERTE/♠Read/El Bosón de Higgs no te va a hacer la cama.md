---
ESTADO_LEC: 🟠EN ESPERA🟠
status: Activo
tipo_nota: Essentia
pertenece a:
  - "[[♠Read]]"
  - "[[‼Essentia]]"
Requerimientos_libro:
Libro:
Autor:
  - Javier Santaolalla
Editorial: OCEANO
Colección:
LIGHTVOLT: ⚡1🔵
Libro_f_d: Físico
Disponibilidad: true
Número:
Materia: Física
Calificación:
Páginas: 383
Progreso: 87
image: "[[--PORTADA-- El bosón de Higgs no te va a hacer la cama.jpg]]"
fecha_creado: 2024-07-02
fecha_terminado:
próxima_fecha:
tags:
  - Active_kanban/♠Read/Bosón_de_Higgs
serie: Física Básica
terminado: false
nombre: El_Bosón_de_Higgs
---
# ***El Boson de Higgs No te va a hacer la cama***
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
    "#Active_kanban/♠Read/Bosón_de_Higgs" //change tag if you need
)
```
## *Objetivo*

| Páginas | Sesiones por semana | Semanas disponibles | Páginas por sesión para poder terminarlo a tiempo |
| ------- | ------------------- | ------------------- | ------------------------------------------------- |
| 383     | 2                   | 5                   | 39                                                |
## Resumen

## Opinión
# Introducción 
- [x]  ✅ 2024-07-02

**Galileo** y su experimento para *probar que el movimiento en caída libre no era lineal respecto al tiempo sino cuadrático fue usando un plano inclinado.*
De esta forma, se puede entender al plano como un caso de caída libre, así como se puede entender a la caída libre como un caso de caída sobre una pendiente, donde la pendiente tiende a estar verticalmente.
>Se puede decir que este experimento de **Galileo** con dejar caer una caja sobre un plano inclinado introdujo la *descomposición de fuerzas*

# Capítulo 1. Friki viaje
- [x]  ✅ 2024-07-23
Cuando una persona se pone a pensar profundamente fundamentado en la razón, por más tonta que sea ayuda al pensamiento crítico.
De alguno u otra forma selectas personas pensaron de esta forma a lo largo de la historia, ya se dijo que Galileo aún en sus tiempos se atrevió a pensar y más que eso, a difundir ideas fundamentadas en la razón.

Si nos vamos al pasado en la historia humana, podemos ver que han sido poco más de 2500 años de pensamientos acercados ya al método científico.
- Tales de Mileto -> De los siete grandes pensadores de Grecia, pensaba que el elemento núcleo era el agua
- Heráclito -> fuego
- Jenófanes -> tierra
- Anaximenes -> viento

- Anaximandro -> Aperirón (Elemento en medio de los pares, como si fuera un balance)
- Empedocles -> Idea de los 4 elementos (fuego, tierra, aire y agua) y las dos fuerzas (amor y odio, que lo unían todo) (Que cursi)

- Demócrito: Daría la idea de elementos indivisibles, basándose en las ideas de Empédocles, pero dotándolas de la indivisibilidad, se llamaron átomo

Cientos de años después, esta idea seriá retomada por **John Dalton**, el cuál demostraría que se llega a un punto indivisible, el *átomo*.
**Dalton** -> *Daltonismo* (irregularidad cromática en la vista)
Ya había algunos elementos a los que se les podía calcular el peso atómico, Dalton haría experimentos de ello.

Para ver una tabla periódica nos podemos remontar a 1864
- **John Alexander Reina Newlans** -> El cuál crearía una tabla periódica bajo la "ley de las octavas", como en música, donde cada 7 notas, se repite la octava. Aunque con algunos errores, ya era un avance de la periodicidad de los elementos, ya que algunos coincidían.

En rusía
Mendeleiev logra armar una tabla periódica bajo el mismo principio de Newlans de acomodar elementos uno abajo del otro, esta vez no por peso atómico sino por *valencia*.
Con ello lograría dejar huecos de elementos aún no descubiertos y mediante la periodicidad, predecir el peso atómico, punto de ebullición, etc. del elemento que iría debajo del *alumnio*, llamándolo **eka-alumnio**.
>👁‍🗨*A Mendeleyev también se le atribuye el calculo de alcohol idóneo para el vodka, dejándolo en 40°*

Tiempo después *Paul Émile Lecoq de Boisbaudran* descubriría un elemento mientras trabajaba con la *esfalerita*, este elemento coincidía con la descripción hecha por Mendeleiev años antes. El nombre al no ser llamativo, lo cambio por Galio (de donde era, Francia, en su forma antigua).

La complejidad de la tabla periódica (albergando tantos elementos) daría como idea que *Dalton* y la idea del átomo como elemento indivisible no podría ser del todo cierta, por lo que se sugiere que incluso el átomo sería divisible.

>💬El '*átomo*' es un *error histórico*

## Rompiendo el átomo con ~~Mario Dross~~ Luis Gerardo
Para romper el átomo se destacan varias personas después de lo propuesto por **John Dalton**

- ### J.J. Thompson 
Mediante su experimento del tubo de rayos catódicos, descubriría que existen partículas cargadas, con una masa muy pequeña, que forman parte de los átomos
>📃Le puso Modelos de "*panque de pasas*" o budín o ...
>porque lo pensó como un espacio central con cargas positivas e incrustadas estaban las partículas denominadas electrones

>💁‍♀️Thompson no solía hacer sus experimentos manualmente por él, sino que tenía asistentes

- ### E. Rutherford
Mediante el bombardeo de una lamina de oro con partículas alfa, descubriría que hay mayoritariamente espacio vacío.
>ℹ**Partículas Alfa**: básicamente átomos de helio (2 protones y 2 electrones)

El nuevo modelo sería visto como orbitales
- ### James Chadwick
Descubriría el **Neutrón**

### Apareciendo más y más
Ya no fue solo un modelo precioso de 3 partículas elementales, sino que ahora eran muones, piones, ipsilones, etc.
>🗣 *"¿Quien ha pedido esto?"* - Isaac Rabi
>Refiriéndose al descubrimiento del muon, porque, no ¡Pintaba nada!

![[El Bosón de Higgs no te va a hacer la cama - Modelo_Estándar.svg]]

>\[...]*en vez de dar premios Nobel a quien encontrara una nueva partícula, habría que multarlos...*

La diferencia entre los quarks up, down y los electrones y sus hermanos es su masa, sus hermanos son más masivos

>Realmente con los quarks up y down y el electrón tenemos suficiente para formar cualquier cosa.
>El resto de las partículas no forman parte de la materia que conocemos, no son importantes para entender los fenómenos naturales como la lluvia, la electricidad, el magnetismo terrestre, las corrientes de aire, las mareas, ciertamente no sirven para nada...

Cuando todo empezó, en el Big Bang todo era un caos, hasta que no lo fue.
Todas las partículas existían y estaban en el medio
Poco a poco se fueron anulando con sus antipartículas.

>Las partículas inestables fueron desintegrándose en otras con menos masa y según el universo se expandía, iban desapareciendo para siempre

## La fuerza universal
- Fuerza gravitatoria
- Fuerza del electromagnetismo
- Fuerza nuclear fuerte
- Fuerza nuclear débil

>👤 Oersted
>Por coincidencia descubriría el efecto que tiene un hilo conduciendo electricidad sobre una aguja imantada
>Haber descubierto de forma experimental la relación física entre la electricidad y magnetismo

>👤Michael Faraday
>Personaje interesante, pues no contaba con algún tipo de estudios matemáticos.
>Descubrió el efecto contrario: con una variación de magnetismo se podía generar electricidad: **inducción electromagnética**

>👤 James Clerk Maxwell
>ℹ Formulación de la teoría clásica de la radiación electromagnética, que unificó por primera vez la electricidad, el magnetismo y la luz como manifestaciones distintas de un mismo fenómeno. 


Resulta ser que las 4 fuerzas universales se juntan y unifican en lo denominado:
***Modelo estándar***
![[El Bosón de Higgs no te va a hacer la cama - Camino al Modelo Estándar.jpg]]


---
# Capítulo 2
- [ ] 
>💬
>Después de sus *4 revolucionarios artículos*, **Einstein** intentó *unificar la gravedad con el electromagnetismo*, pero *no lo logró*, tal vez en parte porque no aceptaba del todo la *física cuántica*

El ***Modelo estándar*** lo explica todo
![[El Bosón de Higgs no te va a hacer la cama - Lagrangiano del  modelo estándar.jpg]]

>📖🖇[[♠Read - Later]]: [[Lagrangiano del modelo estándar.pdf]]
>🌐🖇[Quora sobre el tema](https://es.quora.com/Qu%C3%A9-es-el-lagrangiano-del-modelo-est%C3%A1ndar)


**La primera generación** tiene las tres partículas que forman toda la materia conocida: el *quark down*, *quark up* y el *electrón* con su *neutrino*
>ℹ Del neutrino se sabe poco, no tiene carga, no se sabe su masa exacta

>Ahora mismo, aunque no lo sintamos, miles de millones de *neutrinos* que se crearon en el sol están atravesando mi cuerpo


El Modelo Estándar se completa con los bosones, que son los mediadores de las fuerzas.
>💬 Se menciono en pasados capítulos que las fuerzas en la teoría moderna se explica por el intercambio de una partícula

Así dos *electrones* se repelen por el intercambio de *fotones* (fuerza electromagnética), el *gluón* para la **fuerza fuerte**, los *bosones W y Z* para la **fuerza débil** y el *gravitón* (teórica) para la *fuerza gravitatoria*




---
