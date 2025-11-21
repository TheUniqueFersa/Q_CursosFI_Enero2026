---
pertenece a:
  - "[[Proyecto BD]]"
---
# Consideraciones
## Aplicación de consideración

| Número de Consideración | Componente | Nombre | Descripción |
| ----------------------- | ---------- | ------ | ----------- |
| 1                       |            |        |             |
| 2                       |            |        |             |
| 3                       |            |        |             |
| 4                       |            |        |             |
| 5                       |            |        |             |
| 6                       |            |        |             |
| 7                       |            |        |             |
| 8                       |            |        |             |


1. [ ] Hacer uso de todos los tipos de restricciones vistas en clase: ``unique, check, pk, fk``
2. [ ] Alguna tabla (al menos un caso) deberá usar `default`
3. [ ] Se debe haber un uso al menos 2 veces de **llaves naturales**
4. [ ] Elaborar 4 o más consultas. Empleando:
	1. [ ] uso de ``JOINS`` (distintos tipos)
	2. [ ] funciones de agregación
	3. [ ] álgebra relacional
	4. [ ] subconsultas [^1]
5. [ ] Para cada [[estadística]] debe generar 1 [[procedimiento almacenado]], para nombrarlos utilice el prefijo ``pa_NombredelProcedimiento``
6. [ ] Cada [[estadística]] debe generarse con información suficiente que permita ver que la estadística se genera de forma adecuada #NOTCLEAR
7. [ ] Hacer un análisis y seleccionar casos donde el uso de índices pudiera ser adecuado:
	1. [ ] Índices Non Clustered
	Considerar ``FK`` usadas frecuentemente en ``JOINS``
	2. [ ] índices Unique (simples o compuestos) para verificar *unicidad*
8. [ ] Debe contar con:
	1. [ ] 3 vistas
	2. [ ] 3 funciones