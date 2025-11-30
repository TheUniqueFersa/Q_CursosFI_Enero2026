

| Script            | Desc |
| ----------------- | ---- |
| [[#cargaInicial]] | 👀   |
| creaBase          | ✅    |
| dml               | 👀   |
| informes          | 👀   |
| seguridad         | 👀   |
| validaTriggers    | 👀   |

# cargaInicial
- [ ] Hay que quitar lo de la VERIFICACION Y CORRECION PREVIA WTF


Inseta en:
- ESTADO
- CIUDAD
- ASENTAMIENTO
- ASEGURADORA
- IMPUESTO
- PERIODO_PAGO
- METODO_PAGO

- MARCA_AUTO

- PARENTESCO

- CAUSA_SINIESTRO

---
- SEGURO
	- SEGURO_AUTO
	- SEGURO_VIDA
	- SEGURO_RETIRO

- EMPLEADO
	- CORREDOR
	- AJUSTADOR

- CLIENTE
	- CLIENTE_NATURAL
	- CLIENTE_MORAL

- POLIZA
- BENEFICIARIO

- VEHICULO

- PAGO

- SINIESTRO




# EVE
CAMBIOS:
agregue la tabla corredor_zona y lo relacione con corredor y asentamiento
A póliza, siniestro, empleado y cotización agregue pk artificiales y sus números correspondientes los agregue como UNIQUE
A cliente, CURP, RFC y RAZON_SOCIAL los agregue como UNIQUE
y en la jerarquía de tipo_empleado lo hice NULL y agregue el atributo rol