---

tipo: Kanban
tipo_nota: alimentadora/secundaria
kanban-plugin: board
pertenece a:

---

## Para mi

- [ ] Qué es una matrícula
- [ ] #TOCHECK
- [ ] #TOREPLACE
- [ ] #NOTCLEAR
- [ ] #NO_RELEVANTE


## ♦(°)Out - ♦(...R)

- [ ] 2. Será buena idea modelar 
	- colonia
	- ciudad
	- estado
	Como catálogo en cliente.dirección
- [ ] 3. En 2.3 SEGURO_AUTO, ``detalle vehículo`` se puede llamar matrícula
- [ ] 5. ``AJUSTADOR`` pa que sirve?
- [ ] 6. ``CLAVE`` en ``SEGURO_VIDA`` y ``SEGURO_RETIRO`` es la llave heredada de la jerarquía no?
- [ ] 7. Entidades potenciales, como ``BENEFICIARIOS``, se tienen que modelar en ER asumiendo datos esenciales?
- [ ] Diferencia entre ``monto_asegurado_mínimo`` y ``cobertura básica``
- [ ] En 8. estadísticas
	Como se calcula ``Tasa de renovación de polizas``
	renovadas vs finalizaron vigencia
- [ ] # recursiva
	en poliza ``Poliza`` renueva ``poliza``
- [ ] # histórico
	``Poliza`` - ``vehículo``
- [ ] cuando se vende una poliza
- [ ] se tienen que unir forzosamente CORREDOR con CLIENTE en la relación ``ATIENDE``
- [ ] `num_empleado` en ``CORREDOR`` no es ya una artificial?
- [ ] `num_poliza` `id_poliza` no son lo mismo?
- [ ] `COTIZACIÓN` cobertura y opciones?
- [ ] ``COTIZACIÓN`` Recordatorio? Recordatorios no vendidos


## # #Pendiente

- [ ] Establecer bien las cardinalidades
- [ ] Establacer bien las PKs de todas las relaciones


## **Propuesta de Acciones**

- [ ] Modelo ER
- [ ] Modelo Relacional


## Listos para ♦(...R) X-chelons

- [ ] # #TETRAPETAL/TALLO
	TERMINAR DE HACER EL **ANÁLISIS EXHAUSTIVO**
- [ ] Verificar CS#
- [ ] Recabar preguntas iniciales en iPad


## # Secuencia de Acciones<br>‼Yi

**Complete**
- [x] 4. Podemos trabajar en Google docs en vez de word? ✅ 2025-11-02
- [x] 1. Se puede trabajar en drawio? ✅ 2025-11-02


## Para la profa

- [ ] ``CLIENTE`` moral y natural, requiere de más atributos que los sugeridos?




%% kanban:settings
```
{"kanban-plugin":"board","list-collapse":[null,false,null,null,false,false,false]}
```
%%