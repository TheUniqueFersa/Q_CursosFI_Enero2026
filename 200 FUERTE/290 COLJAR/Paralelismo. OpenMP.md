---
pertenece a:
  - "[[♠A-T Estructuras de Datos y Algoritmos II (EDA II)]]"
tags:
  - C
---
# Paralelismo: OpenMP

## Ejecución desde terminal
```shell
gcc -fopenmp hola.c -o hola
```

## Cláusulas

### Critical
Constructor

permite que un segmento de código que contiene una secuencia de
instrucciones no sea interrumpido por otros hilos (realiza una exclusión mutua). Es decir, que al segmento de código delimitado por la directiva solo pueda entrar un hilo a la vez y así evitar una condición de carrera,


### Reduction
Clausula


### Sections
Constructor

permite usar paralelismo funcional (descomposición funcional) debido a que permite asignar
secciones de código independiente a hilos diferentes para que trabajen de forma concurrente/paralela.

