---
status: En espera de ejecución
tipo_nota: Essentia
pertenece a:
  - "[[♠Read]]"
  - "[[‼Essentia]]"
Requerimientos_libro:
  - Requiere de Momentos de reflexión
Libro:
Autor:
  - Pablo Neruda
ESTADO_LEC: 🟡EN PROCESO🟡
Editorial: ALTAYA
Colección: "BIBLIOTECA DE PREMIOS NOBEL: 1971"
LIGHTVOLT: ⚡4🟣
Libro_f_d: Físico
Disponibilidad: true
Número: 2
Materia: Poesía
Calificación:
Páginas:
Progreso:
image: "[[--PORTADA-- VEINTE POEMAS DE AMOR Y UNA CANCIÓN DESESPERADA. CIEN SONETOS DE AMOR.jpg]]"
fecha_creado: 2024-07-25
fecha_terminado:
próxima_fecha: 2025-11-14
tags:
  - Active_kanban/♠Read/VEINTEPOEMASDEAMOR
serie: Oratoria y escritura
terminado: false
nombre: VEINTEPOEMASDEAMOR
---
# ***VEINTE POEMAS DE AMOR Y UNA CANCIÓN DESESPERADA. CIEN SONETOS DE AMOR***
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
