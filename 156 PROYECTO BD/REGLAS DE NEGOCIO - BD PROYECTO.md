---
pertenece a:
  - "[[Proyecto BD]]"
---
>Todo lo que diga el documento de [Indicaciones del proyecto. Caso de estudio: ASEGURADORA](https://drive.google.com/file/d/1p6stCqx610eOUixKypk1DV9oEvNkNIYE/view?usp=drive_link) de manera explícita o implícita para su implementación, es considerado como ***REGLA DE NEGOCIO***
# Consideraciones semánticas

| RN                                                                                 | CS       |
| ---------------------------------------------------------------------------------- | -------- |
| ![[1. ASEGURADO#^7d46a5]]                                                          | **CS1**  |
| ![[1. ASEGURADO#^16e1dd]]<br>                                                      | **CS2**  |
| ![[2.CORREDOR DE SEGURO#^9a76f7]]                                                  | **CS3**  |
| ![[3.TIPO DE SEGURO#^000400]]                                                      | **CS4**  |
| ![[3.2 SEGURO DE VIDA#^ee6dec]]                                                    | **CS5**  |
| ![[6. PAGO#^6ad37e]]                                                               | **CS6**  |
| ![[7. COTIZACIÓN#^84f74c]]                                                         | **CS7**  |
| ![[7. COTIZACIÓN#^9cb266]]                                                         | **CS8**  |
| ![[8. SINIESTRO#^3c78d5]]                                                          | **CS9**  |
| ![[3. REQUISITOS DE INTEGRIDAD Y REGLAS DE NEGOCIO#^4e7940]]                       | **CS10** |
| ![[3.2 SEGURO DE VIDA#^eb2254]]                                                    | **CS11** |
| Si es una poliza de Auto, entonces los campos de Auto son obligatorios             | **CS12** |
| Si es una poliza de vida, al menos debe contar con un BENEFICIARIO                 | **CS13** |
| ![[1. ASEGURADO#^7ef15b]]                                                          | **CS14** |
| Columna virtual, estado_poliza: 'V' vigente, 'N': no vigente                       | **CS15** |
| Si la POLIZA cubre seguro_Auto, entonces el campo POLIZA_RENUEVA puede ser llenado | **CS16** |
| `estado` P: Pagado, N: no pagado                                                   | **CS17** |
| ``tipo_tarifa`` F: Fija, P: porcentaje                                             | **CS18** |
| Aplica solo para SEGUROS DE AUTOS (relación en CHEN de '*ES PROPUESTO PARA*')      | **CS19** |
| Tipo teléfono: Casa o Celular                                                      | **CS20** |

![[4. VEHÍCULO#^45ebf2]]