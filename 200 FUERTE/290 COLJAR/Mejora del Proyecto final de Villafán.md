---
pertenece a:
  - "[[♠A-T Estructuras Discretas]]"
tipo: ♣ Proyecto ♣
tags:
  - ♣_PROYECTO_♣
fecha_entrega: 2025-06-02
terminado: false
estado: 
Completado: 0
Incompleto: 8
image: 
banner: 
---
# ***Mejora del Proyecto final de Villafán***
## Proto - *Kanban*
### 1° Fase
- [ ] Propuesta para el *diseño visual*



# Entregables
- [ ] ReadMe
- [ ] [[# Documento Técnico]]
- Comentarios en código
	- [ ] Tablas o *pdf que expliquen las funciones*
- [ ] **Presentación** 
	- Con *ejemplos de aplicación*
- [ ] Archivos fuente organizados


### *Documento Técnico*
- **Introducción**
    - Breve descripción del problema.
    - Justificación del uso del algoritmo Quine-McCluskey.
- **Marco teórico**
    - Explicación breve del algoritmo (puedes usar tablas de verdad, mapas de Karnaugh y cómo Quine-McCluskey lo generaliza).
- **Diseño e implementación**
    - Estructura del código (descripción de clases, funciones importantes).
    - Algoritmo paso a paso.
    - Repesentación de minterms.
    - Cómo se manejan los implicantes primos.
- **Pruebas**
    - Casos de prueba utilizados (con minterms, resultados esperados y resultados obtenidos).
    - Validación de resultados.
- **Conclusiones**
    - Qué se logró, posibles mejoras, etc.


- [ ] Qué objetos son los que me proporcionan la información para poder imprimir cada una de las tablas
- [ ] para poder imprimir la **expresión**



---
[[BULDING README - Proyecto Villafan]]
# **Para compilar el coñoelamare código**
```BASH
emcc quine.cpp UtileriasMinterminos.cpp -o ../build/quine.js -s INVOKE_RUN=0 -s EXPORTED_FUNCTIONS="['_procesarDatos', '_malloc', '_free']" -s EXPORTED_RUNTIME_METHODS="['ccall','cwrap','HEAP32','HEAPU8']" -s MODULARIZE=0
```

