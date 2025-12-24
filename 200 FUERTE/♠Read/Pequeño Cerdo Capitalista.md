---
status: En espera de ejecución
tipo_nota: Essentia
pertenece a:
  - "[[♠Read]]"
  - "[[‼Essentia]]"
Requerimientos_libro: 
Libro: "[[Pequeño Cerdo Capitalista - Sofia Macias.pdf]]"
Autor:
  - Sofía Macias
ESTADO_LEC: 🟠EN ESPERA🟠
Editorial: Aguilar
Colección: 
LIGHTVOLT: ⚡2🟢
Libro_f_d: Digital
Disponibilidad: true
Número: 
Materia: Finanzas Personales
Calificación: 
Páginas: 145
Progreso: 9
image: "[[--PORTADA-- Pequeño Cerdo Capitalista.jpg]]"
fecha_creado: 2024-07-24
fecha_terminado: 
próxima_fecha: 
tags:
  - Active_kanban/♠Read/PequeñoCerdo
serie: BYE I
terminado: false
nombre: PequeñoCerdo
---
# ***Pequeño Cerdo Capitalista***
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
    "#Active_kanban/♠Read/PequeñoCerdo" //change tag if you need
)
```
## Objetivo
## Resumen

## Opinión


# Capítulo 1
- [ ] 

---
# Capítulo 2
- [ ] 


---
