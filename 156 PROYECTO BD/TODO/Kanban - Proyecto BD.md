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
- [x] Aportación mínima mensual -> pagos que se deben registrar para dichas pólizas o seguros? ✅ 2025-11-16
	>aportacion_minima_mensual es el lower bound de dicho PLAN, el usuario puede proponer más y la cantidad que se acuerde es la que se pondrá en prima_total en la [[5. PÓLIZA]]
- [x] 2. Será buena idea modelar ✅ 2025-11-16
	- colonia
	- ciudad
	- estado
	Como catálogo en cliente.dirección
	>Si, para la carga de información nos podemos ayudar de chatgpt
- [x] DUDA LÓGICA. TIPO_SEGURO es un catálogo o como se interpreta? ✅ 2025-11-16
	>Es un catálogo si, pues las pólizas adquieren valores de dichos **PLANES**
- [x] DUDA LÓGICA. Conexión de AUTO con seguro_auto ✅ 2025-11-16
	>Al igual que beneficiarios, se hace hacia PÓLIZA


## ♦(°)Out - ♦(...R)

- [x] modelar ``causa`` como catálogo dado el requierimiento en [[8. ESTADÍSTICAS#^df9761|ESTADÍSTICAS]] ✅ 2025-11-17
- [x] Diferencia entre ``monto_asegurado_mínimo`` y ``cobertura básica`` ✅ 2025-11-16
	>Cobertura básica debió ser un multivalorado que presenta multiples registros de [[COBERTURAS]]
- [x] En 8. estadísticas ✅ 2025-11-16
	Como se calcula ``Tasa de renovación de polizas``
	renovadas vs finalizaron vigencia
	>Se propone: [[ACC. RENOVACIÓN DE PÓLIZAS]]
- [x] `num_empleado` en ``CORREDOR`` no es ya una artificial ✅ 2025-11-16
	>SI, se propone subirla y reemplazar empleado_id
- [x] DEBE guardar sobre quien realizó la cotización? ✅ 2025-11-16
	>Se asume que si, pero tener cuidado con [[ACC. COTIZAR]]
- [x] El valor comercial ✅ 2025-11-16
	Decisión de convertir modelo y marca en un catálogo complejo para poder determinar la cantidad del seguro
	>Si, se requiere


## # #Pendiente

- [ ] **Modificar a jerarquía pues persona moral no tiene muchos atributos de matural**
- [ ] Establecer bien las cardinalidades
- [ ] Establacer bien las PKs de todas las relaciones
- [ ] ![[7. INFORMES#^7de5b7]]
- [ ] [[8. ESTADÍSTICAS#^69f9eb|Campo de monto prima total vendido]] no es claro donde debe colocarse
- [ ] `metodo_pago` en [[6. PAGO]] así como por ejemplos las tarjetas se deben guardar en entidades aparte?


## Para la profa

- [ ] ![[Proyecto BD#^a9fbf2]]
- [ ] ![[8. ESTADÍSTICAS#^69f9eb]]: Debe considerar las primas en general? osea aun cuando no han sido pagadas?
	O solo las totalmente pagadas
- [ ] ![[8. ESTADÍSTICAS#^ad58cc]]
	Como modelar mejor la **distribución**?


## **Propuesta de Acciones**

- [ ] Modelo ER
- [ ] Modelo Relacional
- [x] ACC. RECURSIVA EN PÓLIZA PARA RENOVAR ✅ 2025-11-18
	modificar relacional
- [x] [[LÓGICA DEL FRACCIONAMIENTO DE LA PRIMA]] modificar el Relacional ✅ 2025-11-18


## # Secuencia de Acciones<br>‼Yi

**Complete**
- [x] Recabar preguntas iniciales en iPad ✅ 2025-11-18
- [x] Verificar CS# ✅ 2025-11-18
- [x] RELACION COTIZACION incluye SEGURO ✅ 2025-11-16
	>Es M:M
- [x] Quitar relacion  ATIENDE entre CLIENTE CORREDOR ✅ 2025-11-16
- [x] # #TETRAPETAL/TALLO ✅ 2025-11-16
	TERMINAR DE HACER EL **ANÁLISIS EXHAUSTIVO**
- [x] JERARQUÍA en CLIENTE SI O NO #❓ ✅ 2025-11-16
	>Como MORAL solo tendría su RFC, pues mejor no xd
- [x] `RUC` en ASEGURADO ✅ 2025-11-16
	>En [[GLOSARIO DE CONCEPTOS]] se iguala con RFC
- [x] # recursiva ✅ 2025-11-16
	en poliza ``Poliza`` renueva ``poliza``
- [x] ``CLIENTE`` moral y natural, requiere de más atributos que los sugeridos? ✅ 2025-11-02
	>No
- [x] 5. ``AJUSTADOR`` pa que sirve? ✅ 2025-11-02
- [x] 6. ``CLAVE`` en ``SEGURO_VIDA`` y ``SEGURO_RETIRO`` es la llave heredada de la jerarquía no? ✅ 2025-11-02
	>Si
- [x] RENOVACIÓN vuelve a estar en discusión por [[8. ESTADÍSTICAS#^1e40cd|Punto 10]] ✅ 2025-11-16
	>DEBE IMPLEMENTARSE
	>[[ACC. RECURSIVA EN PÓLIZA PARA RENOVAR]]
- [x] # Bitácora o no bitácora? ✅ 2025-11-16
	>SI: porque lo pide
- [x] ![[4. VEHÍCULO#^e6fde4]]>De hecho es necesario para calcular la prima ✅ 2025-11-16
- [x] `COTIZACIÓN` cobertura y opciones? ✅ 2025-11-16
- [x] `num_poliza` `id_poliza` no son lo mismo? ✅ 2025-11-16
	>si, se queda num_poliza
- [x] se tienen que unir forzosamente CORREDOR con CLIENTE en la relación ``ATIENDE`` ✅ 2025-11-16
	>NO, genera redundancia
- [x] cuando se vende una poliza ✅ 2025-11-16
	>Cuando el usuario lo solicita, se recalcula con [[ACC. CALCULO DE PRIMA]]
- [x] # histórico ✅ 2025-11-16
	``Poliza`` - ``vehículo``
- [x] [[3. REQUISITOS DE INTEGRIDAD Y REGLAS DE NEGOCIO]] ✅ 2025-11-16
- [x] ANALIZAR [[6. DESCRIPCIÓN NARRATIVA]] ✅ 2025-11-16
- [x] ANALIZAR [[4. REQUERIMIENTOS DE USUARIOS Y ROLES]] ✅ 2025-11-16
- [x] 7. Entidades potenciales, como ``BENEFICIARIOS``, se tienen que modelar en ER asumiendo datos esenciales? ✅ 2025-11-16
	>NO, se repiensa para posicionarlos en [[5. PÓLIZA]]
- [x] 3. En 2.3 SEGURO_AUTO, ``detalle vehículo`` se puede llamar matrícula 
	>Si
	✅ 2025-11-16
- [x] Un ajustador a un `SINIESTRO`? ✅ 2025-11-02
- [x] 4. Podemos trabajar en Google docs en vez de word? ✅ 2025-11-02
- [x] 1. Se puede trabajar en drawio? ✅ 2025-11-02


## Listos para ♦(...R) X-chelons

- [ ] [[ACC. CALCULO DE PRIMA]]
- [ ] [[ACC. ADMINISTRAR PLANES]]
- [ ] [[ACC. INGRESAR ASEGURADO]]
- [ ] [[ACC. Recordatorio de cotizaciones no vendidas]]
- [ ] [[ACC. Corredor automático por CP]]
- [ ] [[ACC. VENTA DE PÓLIZA]]
- [ ] [[ACC. Recordatorio de cotizaciones no vendidas]]🔼
- [ ] [[ACC. Modelos por mi tio]]
- [ ] [[ACC. ESTADO, CIUDAD, COLONIA por mi tio]]
- [ ] [[ACC. DIFERENTES CASOS DE PAGO DE ACUERDO A PÓLIZA]]
- [ ] [[ACC. SINIESTRALIDAD]]
- [ ] [[ACC. GLOSA EN POLIZA]]
- [ ] [[ACC. PLAN_DE_CORREDOR]]
- [ ] [[ACC. RENOVACIÓN DE PÓLIZAS]]]
- [ ] [[ACC. MODELO COCHE HACIA PRIMA]]
- [ ] [[ACC. COTIZAR]]
- [ ] [[ACC. CAUSA ES CATÁLOGO]]
- [ ] [[ACC. Actualizar saldos pendientes]]


## # Rescatando del texto

- [x] [[Inconsistencia corregida 1]] ✅ 2025-11-16


## # REPORTES

- [ ] Cotizaciones por [[5. REQUERIMIENTOS FUNCIONALES Y NO FUNCIONALES#^282189]]


## # IMPLEMENTACIONES POSTERIORES

- [ ] ``lugar_siniestro`` puede ir conectado con las tablas de ``colonia``, ``ciudad``, ``estado``,




%% kanban:settings
```
{"kanban-plugin":"board","list-collapse":[true,true,null,false,null,true,false,false,false,false]}
```
%%