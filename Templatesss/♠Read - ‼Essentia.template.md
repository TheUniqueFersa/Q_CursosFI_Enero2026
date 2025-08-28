---
ESTADO_LEC: 🟡EN PROCESO🟡
tipo_nota: Essentia
pertenece a:
  - "[[♠Read]]"
  - "[[‼Essentia]]"
Requerimientos_libro: 
Libro: 
Autor: 
Editorial: 
Colección: 
LIGHTVOLT: 
Libro_f_d: 
Disponibilidad: false
Número: 
Materia: 
Calificación: 
Páginas: 
Progreso: 
image: 
fecha_creado: <% tp.date.now("YYYY-MM-DD") %>
fecha_terminado: 
próxima_fecha: 
tags:
  - Active_kanban/♠Read/
serie: 
terminado: false
nombre:
---
# ***<% tp.file.title %>***
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
    "#Active_kanban/♠Read/" //change tag if you need
)
```
## Objetivo
## *Resumen*

## Opinión


# Capítulo 1
- [ ] 

---
# Capítulo 2
- [ ] 


---
