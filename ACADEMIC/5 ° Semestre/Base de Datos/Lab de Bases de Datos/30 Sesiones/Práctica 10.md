# Lab
![[Pasted image 20251030220944.png]]

## Secuencias creadas
![[Pasted image 20251030225355.png]]
● tarjeta_credito_seq
● medio_transporte_seq
● viaje_seq
● pasajero_seq
● viaje_detalle_seq
● historico_estatus_viaje_seq
## 1.2 Carga inicial
-  No olvidar hacer commit al terminar de registrar los datos
-  ● Para hacer referencia a un registro a través del último generado para su PK, se puede emplear el valor actual de su secuencia. ejemplo: viaje_seq.currval
- ● En caso de no poder emplear el último valor generado por la secuencia, se puede hacer referencia a un registro empleando una subconsulta con los valores de las columnas con constraint unique. Por ejemplo:

- [x] A. ✅ 2025-10-30
- [x] B ✅ 2025-10-30
- [ ] C LO BUENO EMPIEZA
- [ ] D
- [ ] 


# Previo

---
# Transacción
## 4 propiedades de una transacción ACID
- Atomicidad
- Consistencia
- Aislamiento (Isolation)
- Durabilidad


Los usuarios no pueden ver los datos nuevos hasta que se confirmen

| Problema            | Nivel que lo resuelve  |
| ------------------- | ---------------------- |
| Lecturas sucias     | Lecturas confirmadas   |
| Lecturas fantasma   | Lecturas serializables |
| Lectura irrepetible |                        |

Oracle tiene por default

```sql

```

# Lectura no repetible
A lo largo del tiempo requiero de varias operaciones
y si los datos no son repetibles, caigo en problemas de inconsistencia

Lost update -> Hacer control de concurrencia optimista o pesimista




Control de concurrencia

Optimista


Pesimista

