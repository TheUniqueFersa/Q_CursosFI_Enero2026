# ESTADO
- [x] OK ✅ 2025-11-30

# CIUDAD
- [x]  ✅ 2025-11-30


# ASENTAMIENTO
- [x] OK, ✅ 2025-11-30
- [ ] Verificar valores reales ssegun EXCEL

# ASEGURADORA
- [x] EL buen Retiro S.A. -> OK ✅ 2025-11-30

# IMPUESTO
Son 3 valores en `tipo_seguro`: `A,V,R`
Aunque el valor de la cantidad puede corresponder al 16 en autos, es mejor:
- Guardar el valor en decimal
- [ ] Cambiar el tipo #alter a numeric (6,4)
- [ ] CORREGIR INSERSION

```sql
INSERT INTO IMPUESTO VALUES (1, 0.16, 'A', 1);
```

# PERIODO_PAGO
Hubo un error, en el relacional se dejó como VARCHAR(40)
Debio haber sido NUMERIC (PK)

Sin embargo las insersiones parecen cuerentes
```SQL
INSERT INTO PERIODO_PAGO VALUES (1, 12, 'ANUAL');

INSERT INTO PERIODO_PAGO VALUES (2, 6, 'SEMESTRAL');

INSERT INTO PERIODO_PAGO VALUES (3, 1, 'MENSUAL');
```


# METODO_PAGO
- [x] OK ✅ 2025-11-30

# MARCA_AUTO
- [x] OK ✅ 2025-11-30
# MODELO_AUTO
- [x] OK ✅ 2025-11-30
# PARENTESCO
- [x] OK ✅ 2025-11-30
# CAUSA_SINIESTRO
- [x] OK! ✅ 2025-11-30
# SEGURO
- [ ] Cambiar Porcentaje numeric(6,4) y de 9 a 0.09
- [ ] Añadir los 2 impuestos respectivos para los otros 2 seguros, hacerlos coincidir en lo registros
- [ ] EL segundo de hecho puede ser más COBERTURA

# EMPLEADO
- [ ] APellidos paternos raros? XD
- [ ] Formatear correctamente las fechas

- [x] ==OK== ✅ 2025-11-30

# AJUSTADOR
- [x] ==OK== ✅ 2025-11-30

# CORREDOR
- [ ] Corregir Porcentajes?
- [x] ==OK== ✅ 2025-11-30

- [ ] Implementar CODIGO POSTAL -> CLIENTE


# CLIENTE
- [ ] Implementar logica RFC - CURP

# CLIENTE_NATURAL
- [ ] Implementar columna virtual de `edad`

# CLIENTE_MORAL
- [x] ==OK== ✅ 2025-11-30

# POLIZA
- [ ] Corregir formatos de fechas en insersion
- [ ] CORREGIR estado_poliza con CS

# VEHICULO
- [ ] cORREGIR PK

# BENEFICIARIO
- [ ] Corregir porcentaje?

- [x] ==OK== ✅ 2025-11-30


# SINIESTRO
- [ ] Implementar columna virtual dias trancurridos

# PAGO
- [ ] COrregir estado, debeser NOT NULL, CHAR 1



---
Faltan:
COBERTURA
- [ ] Ver ejemplo de la asegurdaora que le tomaste foto y generar sus registros




# ==Store P==
## Siniestro
- [ ] Cambiar parámetros de entrada, envez de los IDs, los nombres

# ==TRIGGER==
## 1
- [ ] Cambiar el Try Catch. no lo vimos









