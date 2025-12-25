---
tipo: ♦Nota del fuerte
tipo_concepto: Abstracto
pertenece a:
  - "[[GENERADOR]]"
---
# ***SCHEDULE***
ℹ️ Se refiere a un ***conjunto de entidades temporales*** definidas (horarios) que indica al portador la acción que debe realizar dado un tiempo $t$

>🤓 Es decir, es un calendario que le indica al portador que actividad es la que debe realizar en un tiempo dado

Cualquier generador puede tener un SCHEDULE asociado, pero en general deben ser **mutuamente excluyentes** uno del otro.

# Operadores
## Adición - Unión
Se pueden sumar 2 SCHEDULEs, o sea dos conjuntos, que dan como resultado un SCHEDULE nuevo. Note que la intersección del SCH A y el SCH B es igual al conjunto vacío.


---

# Conjunto $SCH$
Se define el conjunto $SCH$ como la unión de todos los SCHEDULEs definidos dentro del [[sector]] de la misión activa[^1]. Dicho SCH es en sí un SCHEDULE manipulable y recuperable por el Fuerte.

# Función $S(t)$
Se define al función $S(t)$, la cuál toma como parámetro un tiempo $t$, mismo que puede estar en cualquier formato siempre y cuando especifique:
- Fecha (Año, mes, día)
	- *Día (de la semana)* -> Implícito con la fecha
- Hora

| `param` | `return`                          |                                                                     |
| ------- | --------------------------------- | ------------------------------------------------------------------- |
| $t$     | Acción definida dentro del fuerte | regresa un apuntador a la acción que esta sucediendo en ese momento |



[^1]: GENERADOR de tipo PLAN que es declarado como MISIÓN ACTIVA, mismo que es único en tiempo dado $T$
