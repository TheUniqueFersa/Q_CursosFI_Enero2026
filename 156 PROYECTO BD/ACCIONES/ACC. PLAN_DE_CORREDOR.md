---
implementado: false
analizado: true
---
Una tabla intermedia de: [[2.CORREDOR DE SEGURO]] y [[3.TIPO DE SEGURO]] debe ser creada para asignar ciertos corredores para vender cierto tipo de seguro. 
Toma relevancia el **supervisar corredores**


| ID_P_D_C | ID_CORREDOR | ID_PLAN |
| -------- | ----------- | ------- |
| 1        | 1           | 2       |
| 2        | 1           | 3       |
| 3        | 2           | 2       |
Aquí se establecen las relaciones, pero podemos también establecer un tipo de CORREDOR que tenga permiso de vender cualquiera:

Si en CORREDOR se le añade un atributo: 

``permiso_asociacion_plan``: Permiso que dice si un corredor tiene la autorización de vender todos los planes o solo algunos.
Si está configurado en 1, puede vender todos, si es 0 no puede vender todos y debe emplearse la tabla [[PLAN_CORREDOR]] para determinar qué planes puede vender

