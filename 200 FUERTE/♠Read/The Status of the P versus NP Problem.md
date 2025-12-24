---
status: Pendiente
tipo_nota: Essentia
pertenece a:
  - "[[♠Read]]"
  - "[[‼Essentia]]"
Requerimientos_libro:
Libro: "[[The Status of the P versus NP Problem __ CACM-Fortnow.pdf]]"
Autor:
  - Lance Fortnow
ESTADO_LEC: ⚫LATER⚫
Editorial:
Colección:
LIGHTVOLT: ⚡3🟠
Libro_f_d: Digital
Disponibilidad: true
Número:
Materia: Algoritmos
Calificación:
Páginas: 8
Progreso: 3
image:
fecha_creado: 2024-07-14
fecha_terminado:
próxima_fecha:
tags:
  - Active_kanban/♠Read/Status_P_vs_NP
serie: Programación competitiva
terminado: false
nombre: Status_P_vs_NP
---
# ***The Status of the P versus NP Problem***
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
    "#Active_kanban/♠Read/Status_P_vs_NP" //change tag if you need
)
```
## Objetivo
- [ ] Leer e informarme sobre este tema
## Resumen

## Opinión

# What is the P vs NP Problema
- [ ] 

---
# APPROACHES TO SHOWING $P \neq NP$
- [ ] 
## 4.3 Proof Complexity
Set of *Tautologies*!!! -> I saw that in my course of [[Curso de Matemáticas Discretas#*Tautología*|Curso de Matemáticas Discretas]]

I think we require a bit of pigeonhole principle, and I have a book of that too !!

>\[...] showed that tautologies that encode the pigeonhole principle (n + 1 pigeons in n holes means some hole has more than one pigeon) do not have short resolution proofs.


>But to prove $P \neq NP$ we would need to show that tautologies cannot have short proofs in an arbitrary proof system.
---

