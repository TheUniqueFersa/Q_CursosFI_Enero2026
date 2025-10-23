---
estado:
status:
tipo_nota: primaria
ptetra: "[[♣Legend]]"
fecha_creado: <% tp.date.now("YYYY-MM-DD") %>
próxima_fecha:
serie:
scope:
modelo:
  - "[[►Recolección Wissen-Garden]]"
Completado:
Incompleto:
Total:
tags:
Materia:
Saga:
recolecta de: "[[USO del Puerto serial asíncrono.pdf]]"
---
# ***ESTRUCTURA Y PROGRAMACIÓN DE COMPUTADORAS S9C1***
>***LIGHTVOLT*** *ENTRADA*
>Una vez que sea configurado [[El registro de puerto serial asíncrono]], ya es posible:
>- transmitir
>- recibir
>información a través del [[El registro de puerto serial asíncrono]] denominado $SCDR$

>$SCDR$ se conoce también como **Buffer de puerto serial**

>EL buffer del puerto serial es como un buzón, se coloca lo que se requiera transmitir o lo que recibimos de otro equipo

| MNEMÓNICO |       |                               |
| --------- | ----- | ----------------------------- |
| $SCDR$    | $102F | Buffer del puerto serial      |
| $SCSR$    | $102E | Estatus del [[puerto serial]] |


# Proceso para escritura (envío) a través del puerto serial



>Ejercicio
>1 byte a 9600 **baudios**

$$\frac{1}{9600}=1.04\times10^{-4}\ seg$$
tiempo que demora la transmisión de 1 byte a 9600 Baudios


---

Frec. del reloj interno
$$E = \frac{Frec.\ cristal}{4}=\frac{8MHz}{4}=2MHz$$
$$T = \frac{1}{E}=\frac{1}{2MHz}=\frac{1}{2000000Hz}=5\times10^{-7}\ seg$$
tiempo que demora un ciclo de reloj con un cristal de $8MHz$

>- [ ] ❓

$$\frac{1.04\times10^{-4}\ seg}{5\times10^{-7}\ seg}=208.33  = 209$$
número de ciclos de reloj que demora la transmisión de 1 bite a 9600 baudios con un cristal de cuarzo de $8MHz$




# Proceso de lectura (recepción) a través del puerto serial
1. Se hace la lectura del registro de control $SCSR$ (estátus del puerto serial)
2. Se hace una lectura de la palabra de 8 o 9 bits contenida en el registro $SCDR$



>Cuando se ejecuta una subrutina de interrupción, se copia automáticamente el contenido de todos los cargadores para que estén libres para su uso durante una interrupción
>
>Cuando se ejecuta RTI, se reestablecen los valores anteriores a la subrutina de interrupción que se tenían antes de la interrupción



>El MC tiene 16 vectores de interrupción


# Vector de interrupción del puerto serial y de la función *RESET*

```ASM
* Vector de interrupción de puerto serial asíncrono
  ORG #$FFD6
  FCB $FI,$00

* Vector de interrupción de Reset
  ORG $FFFE
  FCB $80,$00
  
  END
```

Normalmente es lo último del archivo, después de configurar los vectores de interrupción viene el `END`


# Ejercicios
- [ ] Ejercicio 1
- [ ] Ya hicimos el ejercicio 2
- [ ] Ejercicio 3
