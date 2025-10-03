---
pertenece a:
  - "[[♠A-T Lenguajes Formales y Autómatas]]"
fecha_entrega: 2025-10-06
fecha_terminado: 2025-10-01
terminado: true
---
# ***Presentación Karaoke***

| Presentación asignada                                                                       |                                   |
| ------------------------------------------------------------------------------------------- | --------------------------------- |
| [JoséManuel_12.pdf](https://drive.google.com/file/d/15HFxxCcVIb0GxJuJN8TfKqYc6Sb_e7hh/view) | Guardada en *holafersa.academico* |
Duración: ~~**5 min**~~ ->  9 minutos

# ¿Qué son los LFyA?
Wua wua

# Sección cuatro: ER vida real
## Explicación del problema
¿Qué es lo que se solicita?
Reportar y analizar un conjunot de datos, osea identificar las solicitudes cuyo solicitante ha sido ``TESTADO``

Analicemos por partes:
 - Biblioteca

```python
import pandas as pd
# Permite trabajar con datos tabulares de manera eficiente
```
Objeto principal es el DataFrame, que organiza los datos en filas y columnas



```python
import re
#Proporciona soporte para expresiones regulares en python
```

Sirve para buscar, validar, dividir o reemplazar texto siguiendo patrones


## Descarga del archivo excel
- Indica la fecha y hora, la dirección del servidor, confirma la conexión, el tamaño del archivo, el nombre con el que se guarda, el proceso de la descarga y al final confirma que se descargó completo

---
- Hace una petición a esa url
- regresa el archivo de excel con los datos de una base de datos del gobierno

- confirmamos que el archivo llegó y de hecho lo podemos manipular y abrir con un programa de excel (hojas de cálculo)

## Abrir el excel con pandas y ver las columnas de la BD
- Se usa pandas para abrir el archivo de Excel
- lo carga en un Dataframe[^1]

- una tabla en memoria con filas y columnas

- se muestran las primeras 5 filas de esa tabla
- se muestran los títulos de cada columna

## ER propuesta
- Explicar la ER, `T E S T A D O.`
	- Explicar el punto
- correr la regex buscando la cuenta

- Respuesta de 1093 solicitudes

---
- Explicar la lógica de los objetos y de los métodos dentro de la sentencia 
```python
datos_filtrados.RESPUESTA.count()
```

## Comprobación
- valores únicos resultantes en la columna SOLICITUD filtradas
- 10 primeras al igual que un segmento de datos


## De la vida real
- [x] Explicar por qué es de la vida real ✅ 2025-10-02
- REGEX
- BD
# GRACIAS POR SU ATENCIÓN ==EMOJI EMOJI==

[^1]: Qué es un dataframe
