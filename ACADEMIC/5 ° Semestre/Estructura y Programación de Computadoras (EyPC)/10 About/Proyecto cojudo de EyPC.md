---
Completado: 1
Incompleto: 21
Total: 22
fecha_entrega: 2025-10-07
pertenece a:
  - "[[♠A-T Estructura y Programación de Computadoras (EyPC)]]"
próxima_fecha: 2025-11-17
---

| ⤵                                                      |     |
| ------------------------------------------------------ | --- |
| [[Kanban - Proyecto EyPC]]                             |     |
| [[REQUISITOS DEL PRIMER PROYECTO- EYPDC SEP 2025.pdf]] |     |

>2 archivos a **generar**
>- [ ] cuales?
>**Objetivo**: que compile viejo

- 6 modos de direccionamiento
# Requerimientos
1. [x] Equipo de hasta 5 integrantes ✅ 2025-11-13
2. Se deberá programar un compilador básico del MC68HC11 en algún lenguaje de programación de alto nivel u entorno de programación (*LabView*) 
3. [ ] El compilador deberá reconocer **todos los mnemónicos del set de instrucciones del MC68HC11** tanto *con letras mayúsculas como minúsculas*, así como la **sintaxis** correspondiente a cada uno de los **seis modos de direccionamiento** que soporta el CPU de dicho microcontrolador [GitHub Issue](https://github.com/TheUniqueFersa/MC68HC11_BASIC_COMPILER/issues/1)
4. [ ] El archivo deberá **soportar** archivos documentados con **comentarios**, los cuáles tendrá que ignorar [GitHub Issue](https://github.com/TheUniqueFersa/MC68HC11_BASIC_COMPILER/issues/2)
5. [ ] Deberá **reconocer** las **directivas de ensamblador** `ORG`, `EQU`, `FCB`, `END` [GitHub Issue](https://github.com/TheUniqueFersa/MC68HC11_BASIC_COMPILER/issues/3)
6. [ ] Será capaz de *abrir un archivo de texto codificado en ANSI, con extensión* `.asc` o `.asm`, *que contenga el código fuente en lenguaje ensamblador*. Después procederá a hacer un *análisis* del mismo, *línea por línea* (hasta llegar a `END`), para determinar **código objeto correspondiente.** [GitHub Issue](https://github.com/TheUniqueFersa/MC68HC11_BASIC_COMPILER/issues/4)
7. [ ] Deberá generar un archivo de texto con extensión `.LST` que contenga el código fuente y el código objeto correspondiente empleando el siguiente formato propuesto [GitHub Issue](https://github.com/TheUniqueFersa/MC68HC11_BASIC_COMPILER/issues/5)

```
<numero de linea>: <codigo objeto>: <codigo fuente>
```
En una sola línea
*Ejemplo*
```
145: 8084 (4F)       :  CLRA
146: 8085 (D61E)     :  LDAB V4
...
```


- Debe tener línea de código
8. Compilador deberá ser capaz de **detectar errores** de diferente índole y lo indicará en el listado **agregando mensajes dependiendo del tipo de error** [GitHub Issue](https://github.com/TheUniqueFersa/MC68HC11_BASIC_COMPILER/issues/6)

9. El compilador generará un archivo de texto con extensión `.S19` que contenga el [[código objeto]] correspondiente empleando el siguiente formato propuesto

```
<<DIRECCIÓN>> XX1 XX2 XX3 XX4 XX5 XX6 XX7 XX8 XX9 XXA XXB XXC XXD XXD XXE XXF
```
*Ejemplo*
```
<8000> 02 56 33 76 4B CC 26 38 59 AA 26 09 12 49 5D FF
<8010> 3E A4 29 56 67 18 9C 55 8F 22 06 00 0F 3C A0 71
```

10. [[#Criterio de Calificación]]


- [ ] Formato de Motorola

|                 |                      |         |
| --------------- | -------------------- | ------- |
| Línea de código | Código de instrución | comando |


```
23:8000 (CE 06 FD): LDX #1789
```


>Traducir del lenguaje ensamblador a equivalente en lenguaje máquina
# Criterio de Calificación
Un punto por cada modo de direccionamiento compilado correctamente (*6 puntos*)
- [ ] 1
- [ ] 2
- [ ] 3
- [ ] 4
- [ ] 5
- [ ] 6
- [ ] Generación del archivo con el listado en el formato propuesto (*1 punto*)
- [ ] Generación del archivo con el código objeto en el formato propuesto (*1 punto*)
- [ ] [[Errores a distinguir|Detección de errores correctamente]], codificados e indicando la línea donde se encuentra (*2 puntos*)
==TOTAL 10 puntos==

>👀 Debe soportar mayúsculas y minúsculas (-*1 punto* si no)

>📌 **NO** es impreso
>Es en formato digital

## Reporte en formato digital
Es requisito indispensable presentar el reporte
- Copia legible de identificación con fotografía (credencial del estudiante)
- Breve (1 hoja) REPORTE DONDE SE EXPLIQUEN LOS CRITERIOS DE DISEÑO Y LA ESTRUCTURA que guarda el compilador (Indicar que aportó cada elemento del equipo)
- Adjuntar el código completo del compilador y los archivos generador por el compilador de un programa de ejemplo
- Evidencias de cada uno de los puntos que sustentan la calificación (Archivos, capturas de pantalla, etc)

## Puntos extra
- [ ] Generar un archivo con el listado mostrando una diferencia de color entre los códigos de instrucción y los operandos que conforman el código objeto (*1 punto*) (de $(7)$)
>Realmente se requieren **3 colores**: 
>Se pretende hacer en html

![[Pasted image 20251028110535.png]]

- [ ] Generación del archivo del código objeto con el formato oficial de Motorola mostrando una diferencia de color entre los códigos de instrucción y los operando que conforman el código (*1 puntos*)
	- [ ] De colores (*1 punto*)
	
![[Pasted image 20251028110555.png|800]]
# Según mi tio #ChatGPT 
Plan de acción para desarrollar el compilador básico
## 1. Preparación
- [ ] Estudia el set de instrucciones
- [ ] Modos de redireccionamiento
- Inmediato
- Directo
- Extendido
- Indexado
- Relativo
- Implícito

## Estructura del proyecto

```
/Proyecto_Compilador_MC68HC11
│
├── /src        → código fuente
├── /test       → archivos .asm de prueba
├── /output     → archivos generados (.LST, .S19)
└── /docs       → reporte y evidencias
```
