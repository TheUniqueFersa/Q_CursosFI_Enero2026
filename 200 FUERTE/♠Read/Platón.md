---
status: En espera de ejecución
tipo_nota: Essentia
pertenece a:
  - "[[♠Read]]"
  - "[[‼Essentia]]"
Requerimientos_libro:
Libro: "[[Aprender a pensar - 01 - Platon.pdf]]"
Autor:
  - Ramon Alcoberro Pericay ?
ESTADO_LEC: 🟠EN ESPERA🟠
Editorial: RBA
Colección: APRENDER A PENSAR
LIGHTVOLT: ⚡0🔷
Libro_f_d: Digital
Disponibilidad: true
Número: 1
Materia: Filosofía
Calificación:
Páginas: 146
Progreso: 41
image:
fecha_creado: 2024-04-27
fecha_terminado:
próxima_fecha:
tags:
  - Active_kanban/♠Read/Platon
serie:
terminado: false
nombre: Platón
---
# ***Aprender a pensar - 01 - Platón***
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
    "#Active_kanban/♠Read/Platon" //change tag if you need
)
```

# INTRODUCCIÓN
- [x]  ✅ 2024-01-19
Platón resulta ser el inicio de una filosofía bien documentada dese la antigua Grecia en los siglos V y VI A.C.
Fue discípulo de Sócrates y maestro de Aristóteles.

El cree en la teoría de las Ideas, la cuál dicta que el mundo material (el sensible), es una copia y aspiración del mundo ideal (de las ideas).

Su búsqueda de el "estado ideal" lo dota de una filosofía extensa, por lo que aunque se puede decir que su vida es principalmente política, su misma esencia persigue aspectos filosóficos que le dan importancia y 
peso en los mismos aspectos sobre el tema.

El representa un punto importante de partida, pues pensadores posteriores adoptarían gran parte de conceptos introducidos por Platón, como alma o retórica, además de que toda Europa en los años posteriores tienen una relación con él, como si se reflejase en sus ideas que una fuente de inspiración o maestro fue el mismo Platón. Esto se extendería hasta la misma iglesia católica, que vencería al paganismo material gracias a estar bien fundamentada y cimentada bajo ideas platónicas
>*aquello que Occidente tiene de cristiano, en gran medida lo tiene de platónico*

El mundo de las ideas está organizado jerárquicamente en función de la **idea suprema de Bien**, que se identifica con la **Verdad y la Belleza**

- El objetivo de alcanzar las Ideas obedece a un impulso erótico.
- Este impulso lleva del amor ala belleza del amado al amor de todos los cuerpos bellos; de ahí a al belleza moral de las almas; de ahí ala belleza de las normas de conducta y las leyes; de ahí a la belleza de los sistemas de pensamiento, y de ahí por fin, a la Belleza en sí. 
- Así el amor se convierte en una fuerza metafísica, ética y política.


Dado que la belleza de un poema o una escultura no era más que una copia imperfecta de la única belleza autentica, la de las ideas, el afán puramente artístico equivalía a perseguir una mentira

La **justicia** el es objetivo máximo del **estado ideal** y su fin es la defensa del bien común, que está por encima del bien particular.

>🧠El rey debe ser filósofo

- **Lo que nos ha dejado** 📖
	*Capacidad de comprender que todo lo humano es producto de un proceso de conocimiento, que implica al mismo tiempo un esfuerzo de mejora de la propia alma*

>Aunque todo intento humano por construir una Ciudad justa (utopía) está condenado al fracaso, está inscrita en el alma del humano, una inevitable tendencia a buscar la perfección


Autor de famosas obras como: *El banquete*, *La República*[^1], etc.

Sus primeras obras tratan de temas 'socráticos' sobre ética.

Él define a la democracia de su tiempo como:
>*\[...] régimen estructuralmente corrupto, pero no porque lo sean los políticos, sino porque se trata de un sistema basado en la retórica y el comercio de opiniones que carece de defensas contra la demagogia.*

dada la sentencia a muerte de su maestro Sócrates

Platón tiene 3 etapas:
- Diálogos de juventud -> Influencias Socráticas
- Diálogos de madurez -> La republica, el banquete etc
- Diálogos de vejez

# Capítulo 1. PLATÓN, una vida marcada por la política
- [x]  ✅ 2024-07-30
>El saber es poder (*Pensamiento político de Platón*)
>[...] así que solo quienes se consagran a él merecen gobernar

>"*Para ganarse al auditorio no hay que decir la verdad, sino exhibir un perfecto dominio del lenguaje y de la argumentación, incluso a riesgo de caer en la falacia o en la caricatura de la posición contraria*" Es es lo que dominaba los **sofistas** y lo que Platón consideraba peligrosísimo para el futuro de la ciudad.

**Un sofista defiende que el mejor argumento es el más persuasivo.** *No cree en la verdad*, ni le preocupa la atención a su propia alma. En cambio, en *Platón el discurso solo tiene sentido si arraiga en algo más profundo que en la palabra misma, es decir, si recoge su verdad del alm*a, que es lo más profundo y serio que tiene el hombre.

---
# Capítulo 2
- [ ] 
*"El más justo de los hombres"*
- Porque está en paz con su conciencia y no tiene miedo a la muerte
- Porque no teme desafiar los convencionalismos políticos y hacer lo que cree justo en nombre de la verdad moral
- Porque su misma manera de hacer filosofía, a través de un dialogo, apuesta por la filosofía como búsqueda en común de la verdad

>ℹ Sócrates hizo uso del *elenchós* <<refutación>>
>Su sabiduría era **crítica**, era un personaje que dedicaba la mayor parte de su tiempo a *refutar a los demás*. 


---
[^1]: Obra que expone la forma madura del pensamiento político de Platón