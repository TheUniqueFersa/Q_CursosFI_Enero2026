---
event-id: 146mmp9i64rlg5do493bn2i114_20250925T210000Z
estado: 
status: 
tipo_nota: primaria
ptetra: "[[♣Legend]]"
fecha_creado: 2025-09-25
próxima_fecha: 
serie: 
tipo_alcance: 
modelo:
  - "[[►Recolección Wissen-Garden]]"
Completado: 0
Incompleto: 1
Total: 1
tags: 
Materia: 
Saga:
---
# ***♣Lg -***
# Tipos de Comunicación?

- [ ] Insertar fotos o traducirlas

# Puestos paralelos y seriales
## Entrada y salida (paralelos)

**Puertos paralelos**
>Puerto A,D y G son puertos configurables como entradas y salidas (bidireccionales)

$DDRA$ configura al puerto A como entrada o como salida
$DDRB$ 
$DDRC$

| Escribo |          |
| ------- | -------- |
| 0       | Entradas |
| 1       | Salida   |
>📌
>Declara DDRA almacenando sus valores en la localidad 1001, (que está reservado para darle valor de 0's y 1's)
```
DDRA EQU $1001
```

```
LDAA #$00 *configuro como
STAA DDRA *entrada puerto A

LDAB #$FF *configuro como salida puerto A
STAB DDRA

guarda el contenido de A en DDRA
```
Puede ser el acumulador A o el B `LDDB`

## Puertos seriales
### Configuración del puerto serial

>**Vesión F1** del 68HC11... tiene rangos de RAM = (0000, 03FF)




Ambos equipos tienen que estar configurados a una *misma velocidad en específico*
Configurar el **protocolo**


$HPRIO$ - máxima prioridad para ser interrumpida


