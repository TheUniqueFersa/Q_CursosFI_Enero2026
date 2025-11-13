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
- [ ] #IF_CONF
- [ ] #ELSE
- [ ] ANALIZAR [[4. REQUERIMIENTOS DE USUARIOS Y ROLES]]
- [ ] ANALIZAR [[6. DESCRIPCIÓN NARRATIVA]]
- [ ] ``lugar_siniestro`` puede ir conectado con las tablas de lugar que se usan  en usuario
- [ ] [[3. REQUISITOS DE INTEGRIDAD Y REGLAS DE NEGOCIO]]
- [ ] [[GENERAR COTIZACIÓN]]
- [ ] [[ADMINISTRAR PLANES]]
- [ ] [[INGRESAR ASEGURADO]]
- [ ] [[PRESUPUESTO]]


## ♦(°)Out - ♦(...R)

- [ ] 3. En 2.3 SEGURO_AUTO, ``detalle vehículo`` se puede llamar matrícula
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
	![[7. COTIZACIÓN#^0fb359]]
- [ ] ``COTIZACIÓN`` Recordatorio? Recordatorios no vendidos
- [ ] ![[1. ASEGURADO#^cce1d5]]
- [ ] ![[4. VEHÍCULO#^e6fde4]]
- [ ] DEBE guardar sobre quien realizó la cotización?
- [ ] # Bitácora o no bitácora?
	SI: porque lo pide
- [ ] El valor comercial
	Decisión de convertir modelo y marca en un catálogo complejo para poder determinar la cantidad del seguro


## # #Pendiente

- [ ] Establecer bien las cardinalidades
- [ ] Establacer bien las PKs de todas las relaciones
- [ ] ![[5. PÓLIZA#^2c4b1a]]
- [ ] [[DUDA LÓGICA. TIPO_SEGURO es un catálogo o como se interpreta?]]
- [ ] DUDA LÓGICA. Conexión de AUTO con seguro_auto
- [ ] ![[7. INFORMES#^7de5b7]]
- [ ] [[8. ESTADÍSTICAS#^df9761|Campo de monto prima total vendido]] no es claro donde debe colocarse
- [ ] RENOVACIÓN vuelve a estar en discusión por [[8. ESTADÍSTICAS#^1e40cd|Punto 10]]


## Para la profa

- [ ] 2. Será buena idea modelar 
	- colonia
	- ciudad
	- estado
	Como catálogo en cliente.dirección
	>Si, para la carga de información nos podemos ayudar de chatgpt
- [x] 6. ``CLAVE`` en ``SEGURO_VIDA`` y ``SEGURO_RETIRO`` es la llave heredada de la jerarquía no? ✅ 2025-11-02
	>Si
- [x] 5. ``AJUSTADOR`` pa que sirve? ✅ 2025-11-02
- [x] ``CLIENTE`` moral y natural, requiere de más atributos que los sugeridos? ✅ 2025-11-02
	>No
- [ ] ![[Proyecto BD#^a9fbf2]]
- [ ] ![[8. ESTADÍSTICAS#^69f9eb]]: Debe considerar las primas en general? osea aun cuando no han sido pagadas?
	O solo las totalmente pagadas
- [ ] ![[8. ESTADÍSTICAS#^ad58cc]]
	Como modelar mejor la **distribución**?


## **Propuesta de Acciones**

- [ ] `RUC` en ASEGURADO
- [ ] Corregir `PAGO` para todas las polizas
- [ ] Modelo ER
- [ ] Modelo Relacional
- [ ] JERARQUÍA en CLIENTE SI O NO #❓
	>Como MORAL solo tendría su RFC, pues mejor no xd
- [ ] Aportación mínima mensual -> pagos que se deben registrar para dichas pólizas o seguros?
- [ ] Quitar relacion  ATIENDE entre CLIENTE CORREDOR
- [ ] modelar ``causa`` como catálogo dado el requierimiento en [[8. ESTADÍSTICAS#^df9761|ESTADÍSTICAS]]
- [ ] [[LÓGICA DEL FRACCIONAMIENTO DE LA PRIMA]] modificar el Relacional
- [ ] [[RECURSIVA EN PÓLIZA PARA RENOVAR]]}
	modificar relacional
- [ ] RELACION COTIZACION incluye SEGURO


## Listos para ♦(...R) X-chelons

- [ ] 
- [ ] # #TETRAPETAL/TALLO
	TERMINAR DE HACER EL **ANÁLISIS EXHAUSTIVO**
- [ ] Verificar CS#
- [ ] Recabar preguntas iniciales en iPad


## # Secuencia de Acciones<br>‼Yi

**Complete**
- [x] Un ajustador a un `SINIESTRO`? ✅ 2025-11-02
- [x] 4. Podemos trabajar en Google docs en vez de word? ✅ 2025-11-02
- [x] 1. Se puede trabajar en drawio? ✅ 2025-11-02




%% kanban:settings
```
{"kanban-plugin":"board","list-collapse":[null,false,null,false,null,false,false]}
```
%%