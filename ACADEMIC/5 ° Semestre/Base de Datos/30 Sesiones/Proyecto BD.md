---
Completado:
Incompleto:
Total:
fecha_entrega: 2025-11-23
pertenece a:
  - "[[♠A-T Bases de Datos]]"
tags:
  - "#TOCHECK"
  - NOTCLEAR
INTERCONN: "[[Kanban - Proyecto BD]]"
---
# Proyecto Final 
>Bases de datos
>Caso: ***ASEGURADORA***

- [[1. INTRODUCCIÓN A LA EMPRESA]]
- [[2. CARACTERÍSTICAS DEL NEGOCIO]]
- [[3. REQUISITOS DE INTEGRIDAD Y REGLAS DE NEGOCIO]]
- [[4. REQUERIMIENTOS DE USUARIOS Y ROLES]]
- [[5. REQUERIMIENTOS FUNCIONALES Y NO FUNCIONALES]]
- [[6. DESCRIPCIÓN NARRATIVA]]
- [[7. INFORMES]]
- [[8. ESTADÍSTICAS]]
- [[#GENERALIDADES]]
- [[#INDICACIONES]]
- [[#CONSIDERACIONES]]

| ⤵️                       |     |
| ------------------------ | --- |
| [[Kanban - Proyecto BD]] |     |
# Requerimientos
# Requisitos
# Entregables
# Criterios de calificación

# Generalidades
- Equipos hasta 3 personas
- [ ] Elaborar la hoja de rúbrica, llenar con datos de los integrantes
- [ ] Durante la entrega del proyecto, se debe:
	- Explicar
	- justificar
	*las actividades realizadas en cada uno de los scripts*
# Indicaciones
>En un word
1. [ ] Tabla de contenido (ÍNDICE) #TOCHECK
2. [ ] Enunciado del problema
3. [ ] MER
4. [ ] Diseño lógico
	1. [ ] A. Modelo Relacional (ER Studio)
	2. [ ] B. [[Diccionario de datos]]
	3. [ ] C. Normalización hasta 3FN
5. [ ] Diseño Físico 
	1. Poner la [[#Forma de la tabla del punto 5|tabla]] 
6. [ ] Cada :
	- script
	- trigger
	- vista
	- procedimiento almacenado
	- dml
	*debe estar documentado al menos con la siguiente información*:
	- autor
	- fecha de creación
	- descripción
## Forma de la tabla del punto 5
#Pendiente 

| Punto | Nombre del archivo | Observaciones |
| ----- | ------------------ | ------------- |
| A     |                    | *Llenar aquí* |
| B     |                    |               |
| C     |                    |               |
| D     |                    |               |
| E     |                    |               |
| F     |                    |               |
| G     |                    |               |

# Consideraciones
1. [ ] Hacer uso de todos los tipos de restricciones vistas en clase: ``unique, check, pk, fk``
2. [ ] Alguna tabla (al menos un caso) deberá usar `default`
3. [ ] Se debe haber un uso al menos 2 veces de **llaves naturales**
4. [ ] Elaborar 4 o más consultas. Empleando:
	1. [ ] uso de ``JOINS`` (distintos tipos)
	2. [ ] funciones de agregación
	3. [ ] álgebra relacional
	4. [ ] subconsultas[^1]
5. [ ] Para cada [[estadística]] debe generar 1 [[procedimiento almacenado]], para nombrarlos utilice el prefijo ``pa_NombredelProcedimiento``
6. [ ] Cada [[estadística]] debe generarse con información suficiente que permita ver que la estadística se genera de forma adecuada #NOTCLEAR
7. [ ] Hacer un análisis y seleccionar casos donde el uso de índices pudiera ser adecuado:
	1. [ ] Índices Non Clustered
	Considerar ``FK`` usadas frecuentemente en ``JOINS``
	2. [ ] índices Unique (simples o compuestos) para verificar *unicidad*
8. [ ] Debe contar con:
	1. [ ] 3 vistas
	2. [ ] 3 funciones
# *Notas*
>❗Selección aleatoria de un miembro para que explique cada script SQL desarrollado
>❗Trabajo debe contener un apartado en donde se especifique donde aplicó cada [[#Consideraciones|consideración]] -> "*[[#Aplicación de consideraciones]]*"
>Debe contener:
>- Consideración
>- Componente
>- Nombre
>- Descripción
>- [ ] Comp, nom y desc de qué exactamente?

[^1]:  (si ya las uso en las estadísticas no es necesario este punto, solo agregarlas en la parte de aplicación de consideraciones)
