---
pertenece a:
  - "[[Proyecto BD]]"
---
>Todo lo que diga el documento de [Indicaciones del proyecto. Caso de estudio: ASEGURADORA](https://drive.google.com/file/d/1p6stCqx610eOUixKypk1DV9oEvNkNIYE/view?usp=drive_link) de manera explícita o implícita para su implementación, es considerado como ***REGLA DE NEGOCIO***
# Consideraciones semánticas

| RN                                                                                                                                                          | CS       |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| ![[1. ASEGURADO#^16e1dd]]<br>                                                                                                                               | **CS1**  |
| ![[2.CORREDOR DE SEGURO#^9a76f7]]                                                                                                                           | **CS2**  |
| ![[3.TIPO DE SEGURO#^000400]]                                                                                                                               | **CS3**  |
| ![[3.2 SEGURO DE VIDA#^ee6dec]]                                                                                                                             | **CS4**  |
| ![[6. PAGO#^6ad37e]]                                                                                                                                        | **CS5**  |
| ![[7. COTIZACIÓN#^84f74c]]                                                                                                                                  | **CS6**  |
| ![[7. COTIZACIÓN#^9cb266]]                                                                                                                                  | **CS7**  |
| ![[8. SINIESTRO#^3c78d5]]                                                                                                                                   | **CS8**  |
| ![[3. REQUISITOS DE INTEGRIDAD Y REGLAS DE NEGOCIO#^4e7940]]                                                                                                | **CS9**  |
| ![[3.2 SEGURO DE VIDA#^eb2254]]                                                                                                                             | **CS10** |
| Si es una poliza de Auto, entonces los campos de Auto son obligatorios                                                                                      | **CS11** |
| Si es una poliza de vida, al menos debe contar con un BENEFICIARIO                                                                                          | **CS12** |
| Columna virtual, ``estado_poliza``: 'V' vigente, 'N': no vigente                                                                                            | **CS13** |
| Si la POLIZA cubre seguro_Auto, entonces el campo POLIZA_RENUEVA puede ser llenado                                                                          | **CS14** |
| `estado` P: Pagado, N: no pagado                                                                                                                            | **CS15** |
| ``tipo_tarifa`` F: Fija, P: porcentaje                                                                                                                      | **CS16** |
| Tabla OFERTA_PARA_AUTO solo aplica para una OFERTA que se esté realizando para un [[3.1 SEGURO DE VEHÍCULO]], pues requiere conexión con un [[4. VEHÍCULO]] | **CS17** |
| **CS18: edad_máxima_contratación**: Un cliente que contrata este plan, no debe rebasar la edad máxima del seguro                                            | **CS18** |
| **CS19: tipo_complemento:** 'D': descuento, y debe ser una cantidad negativa, 'R': recargo y debe ser una cantidad positiva                                 | **CS19** |
| Tipo teléfono: Casa o Celular                                                                                                                               | **CS20** |
|                                                                                                                                                             |          |
|                                                                                                                                                             |          |
|                                                                                                                                                             |          |

![[4. VEHÍCULO#^45ebf2]]