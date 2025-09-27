```ASSEMBLY
ORG $8000 *DIR DE INICIO
LDS #$03FF *APUNTADOR DE STAK[^1]

LDAA #$00 *CONFIGURO TODO EL PUERTO A COMO ENTRADAS
STAA DDRA *EL PUERTO A

LDAA #$FF *CONFIG TODO EL PUERTO G COMO SALIDAS
STAA DDRG *EL PUERTO G


LDD #$302C *CONFIGURA PUERTO SERIAL
STAA BAUD *BAUD 9600 PARA CRISTAL DE 8MHz
```

[^1]: Note que la localidad es la 03FF, la última del 68HC11, pues `LDS` es el stack, que funciona como pila osea va creciendo hacia memoria baja (osea hacia arriba de manera gráfica)
