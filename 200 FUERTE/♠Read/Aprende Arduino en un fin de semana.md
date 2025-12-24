---
ESTADO_LEC: 🟠EN ESPERA🟠
status: En espera de ejecución
tipo_nota: Essentia
pertenece a:
  - "[[♠Read]]"
  - "[[‼Essentia]]"
Requerimientos_libro:
  - Requiere equipo de computo
  - Requiere equipo de electrónica
Libro: "[[Arduinounfinseman.pdf]]"
Autor:
  - Alfredo Moreno Muñoz
  - Sheila Córcoles Córcoles
Editorial: 
Colección: 
LIGHTVOLT: ⚡3🟠
Libro_f_d: Digital
Disponibilidad: false
Número: 
Materia: Eléctrica y electrónica
Calificación: 
Páginas: 138
Progreso: 52
image: "[[--PORTADA-- Aprende Arduino en un fin de semana.png]]"
fecha_creado: 2024-07-18
fecha_terminado: 
próxima_fecha: 
tags:
  - Active_kanban/♠Read/Arduinounfinsemana
serie: 
terminado: false
nombre: Arduinounfinsemana
---
# ***Aprende Arduino en un fin de emana***
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
    "#Active_kanban/♠Read/Arduinounfinsemana" //change tag if you need
)
```
## Objetivo
- [ ] Aprender Arduino haciendo los ejercicios prácticos descritos
## Resumen

## Opinión


# Capítulo 1
- [ ] 

---
# Capítulo 2
- [ ] 


---
