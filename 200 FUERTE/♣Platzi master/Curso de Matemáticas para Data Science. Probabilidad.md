---
estado: STANDBY
tipo_nota: Essentia
Ruta: CIENCIAS E INGENIERÍAS
LIGHTVOLT: ⚡1🔵
Materia: Probabilidad
pertenece a:
  - "[[♣Platzi Master]]"
  - "[[‼Essentia]]"
Serie_Platzi: I. FUNDAMENTOS
fecha_creado: 2024-07-21
fecha_terminado:
terminado: false
image:
Calificación: ⭐⭐
dificultad:
Completado: 1
Incompleto: 5
Total: 6
profesor(a): Francisco Camacho
tags:
nombre:
links_url:
  - https://platzi.com/cursos/ds-probabilidad/
horas_totales: 14
horas_contenido: 4
horas_práctica: 10
horas_empleadas: 1.5
próxima_clase:
  - https://platzi.com/home/clases/2081-ds-probabilidad/33066-distribuciones-continuas/
próxima_fecha: 
---
# ***Curso de Matemáticas para Data Science. Probabilidad***
| Presentación general del Curso | Apuntes adicionales | Examen |
| ------------------------------ | ------------------- | ------ |
|                                |                     |        |
## 🏁 *Objetivos* 🎯
Aprender fundamentos y conceptos clave de **probabilidad**
- ~~Ser un propedéutico de mi clase de Probabilidad~~
- Ser un recurso para poder programar algo relacionado
### 🕛⏳ Meta de tiempo ⏰⏲
- [-] Antes de entrar a clases ❌ 2024-08-11
- [ ] Antes de acabar el año
>⏳ 2 semanas
## 🌿Abstract🌿

## ❓ Preguntas detonadoras ❓
- ¿Qué conceptos clave puedo identificar? ([[#📃Guía de Repaso]])

## 📃Guía de Repaso 


## ℹ Índice de contenido

---
# ¿Qué es la probabilidad?
## Incertidumbre y probabilidad
### Probabilidad
> 🗣 Es una creencia que tenemos sobre la ocurrencia de eventos elementales - Platzi
> *Es una herramienta para manejar la incertidumbre*
### Incertidumbre
Objeto de tomar decisiones

>*El azar no es más que la medida de nuestra ignorancia.*
>*Los genómenos fortuitos son, por definición, aquellos cuyas leyes o causas simplemente ignoramos* - Henri Poincaré

![[#Incertidumbre y probabilidad ==*Alumno*==]]

### Axiomas de probabilidad
![[Curso de Matemáticas para Data Science_Probabilidad - Axiomas de la probabilidad 1.png|550]]
![[Curso de Matemáticas para Data Science_Probabilidad - Axiomas de la probabilidad 2.png|450]]

>📌 *Dos escuelas de pensamiento en la probabilidad*
### Escuela frecuentista
Las cosas no suceden así, es cierto cuando se evalúa al límite cuando los intentos tienden a infinito. Es algo abstracto

### Escuela Bayesiana

## Probabilidad en Machine Learning
### Fuentes de Incertidumbre
- Obtención de Datos
- Atributos del modelo (atributos o predictores; subconjunto reducido, por lo que hay perdida de información)
- Arquitectura del modelo (la simplificación de información produce incertidumbre)

### Modelo de clasificación
![[Curso de Matemáticas para Data Science_Probabilidad - Modelo de clasificación.png]]


![[Curso de Matemáticas para Data Science_Probabilidad - Etapas del modelo.png]]
>**MLE**
>**Maximum Likelihood Estimation**
>*Estimación de máixma verosimilitud*

#### Arquitectura
Determina si es probabilístico o no
#### Parámetros
Cómo se va a entrenar para que el error del modelo sea el menor posible

#### Hiper-parámetros
Determina cuál de todos esos miembros funciona mejor


# Fundamentos de probabilidad
## Tipos de probabilidad
### Conjunta (joint)
>Probabilidad de varios sucesos (conteo directo al *espacio muestreal*)

![[Curso de Matemáticas para Data Science_Probabilidad - Probabilidad conjunta.png|450]]

### Marginal
>Cuando tu obtienes una probabilidad sencilla a partir de una conjunta

Haciendo sumas sobre ciertas variables aleatorias o ciertas ocurrencias de ciertas variables aleatorias dentro de la probabilidad conjunta.

- [ ] No entendí :v


### Condicional
Una condición previa impone una restricción sobre el espacio muestreal
>No reflejan relaciones de causalidad

![[Curso de Matemáticas para Data Science_Probabilidad - Probabilidad condicional.png|450]]
### *Regla del producto*
Regla para descomponer probabilidades condicionales
$$
p(A,B) = p(A|B)\ * \ p(B)
$$


# Distribuciones de probabilidad
## Distribución
Una distribución de probabilidad es una función que coge una var. aleatoria y a cada uno de sus estados le asigna una probabilidad

**X**: Letras mayúsculas: **variables** aleatorias
**x**: minúsculas: *posibles valores en el espacio muestran*

![[Curso de Matemáticas para Data Science. Probabilidad - Dominio.png|450]]


## Distribución de Bernoulli

## Distribución Binomial
- [ ] [[♣Lg - Probabilidad]]

>ℹ *Histograma*. 
>Los histogramas **permiten mostrar la distribución de un conjunto de datos en diferentes segmentos o rangos**. La altura de cada barra representa el recuento de valores de cada rango. - (Google)

## Ejemplo
>❓ Guatafak
- [ ] Google Colab
- [ ] ipynb


# MLE (Maximum Likelihood Estimation)

# Inferencia Bayesiana

---
# ***INTERCONN***
## Conexiones
Notas que han de considerarse para la revisión de la actual, para tener contexto
### Tareas y ejercicios
- *TEMA*
	*Documento*

## Recursos
### Aportaciones
#### [[#Incertidumbre y probabilidad]] ==*Alumno*==
>Intuitivamente, hacemos estimaciones de la probabilidad de que algo ocurra o no, al desconocimiento que tenemos sobre la información relevante de un evento lo llamamos **incertidumbre**. - (*Aporte Alumno*)

#### [[#Tipos de probabilidad]] *==Alumno==*
![[Curso de Matemáticas para Data Science_Probabilidad - Ejemplo Cálculo de probabilidad.webp|450]]

![[Curso de Matemáticas para Data Science_Probabilidad - Ejemplo Cálculo de probabilidad 2.webp|450]]

![[Curso de Matemáticas para Data Science_Probabilidad - Ejemplo Cálculo de probabilidad 3.webp|450]]






### Materiales para el Curso

| Clase                      | Material                                                                                                      | Estado |
| -------------------------- | ------------------------------------------------------------------------------------------------------------- | ------ |
| [[#Distribución Binomial]] | [Google Colab, python](https://colab.research.google.com/drive/1MR9VZg19vHyZhvWWuxtNcy_3PZQ7AfwW?usp=sharing) | 🔃     |
|                            | [scipy](https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.binom.html)                          |        |
|                            | [numpy](https://docs.scipy.org/doc/numpy-1.14.1/reference/generated/numpy.random.binomial.html)               |        |
**TOTALIDAD DE MATERIALES REVISADOS**:

## Referencias
