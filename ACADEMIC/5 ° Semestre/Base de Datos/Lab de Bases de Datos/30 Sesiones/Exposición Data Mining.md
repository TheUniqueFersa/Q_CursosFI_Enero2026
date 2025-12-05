---
pertenece a:
  - "[[♠A-T Bases de Datos]]"
terminado: true
---

- ## Qué es
>La minería de datos es el proceso general de identificar patrones y extraer información útil de grandes conjuntos de datos

Las técnicas de minería de datos que sustentan los análisis de datos se pueden desplegar para dos propósitos principales:

- Describir el conjunto de datos objetivo
- Predecir resultados mediante algoritmos de machine learning

> [!note] Lol
> Cuando se combina con herramientas de análisis y visualización de datos, como Apache Spark, el software de minería de datos es cada vez más sencillo y la extracción de información relevante se puede obtener más rápido que nunca. 


---

- ## Historia 
- ## Etapas o fases de un proyecto de minería de datos

La minería de datos suele incluir cinco pasos principales:

1. Establecimiento de objetivos del negocio
2. Selección de datos
3. Preparación de datos
4. Construcción de modelos de datos y minería de patrones
5. Evaluación de resultados y aplicación de las mejoras

- ## [[# Tipos de bases de datos utilizadas]]
- ## Técnicas empleadas para hacer minería de datos

---

Modelos predictivos
Algoritmos de aprendizaje profundo también se pueden usar para clasificar o agrupar un conjunto de datos según los datos disponibles


datos sean identificados, extraídos o limpiados
# Tipos de bases de datos utilizadas 
## Bases de datos relacionales (SQL)
Gestionan datos estructurados en tablas con filas y columnas, estableciendo relaciones definidas entre conjuntos de datos. Garantizan integridad mediante reglas ACID
(Atomicidad, Consistencia, Aislamiento y Durabilidad)
y permiten consultas complejas usando SQL
### Casos de Uso
- Oracle
- MySQL

- **Ventajas clave:** Modelo estructurado y consistente (ideal para datos transaccionales); cumplimiento ACID que asegura transacciones fiables; amplio soporte de SQL estándar, facilitando consultas y análisis complejos[actian.com](https://www.actian.com/es/blog/databases/types-of-databases-pros-cons/#:~:text=Datos%20estructurados%3A%20Ideal%20para%20almacenar,consulta%20y%20gesti%C3%B3n%20de%20datos).
    
- **Desventajas:** **Escalabilidad** limitada horizontalmente (dificultades para distribuir la carga en muchos servidores); **rigidez de esquema** que dificulta manejar datos semi o no estructurado

|                 | Ventajas                                                                                                                                                                                                                                                                                                                                                                                                                                                                  | Desventajas                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| --------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Relacionales    | Modelo estructurado y consistente (ideal para datos transaccionales); cumplimiento ACID que asegura transacciones fiables; amplio soporte de SQL estándar, facilitando consultas y análisis complejos                                                                                                                                                                                                                                                                     | **Escalabilidad** limitada horizontalmente (dificultades para distribuir la carga en muchos servidores); **rigidez de esquema** que dificulta manejar datos semi o no estructurado                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| No relacionales | **Escalabilidad horizontal** casi ilimitada sobre múltiples nodos; **flexibilidad de datos** (permiten datos semi/no estructurados sin predefinir esquemas); alto rendimiento en grandes volúmenes con operaciones de lectura/escritura rápidas                                                                                                                                                                                                                           | muchas bases NoSQL optan por consistencia eventual, pudiendo tener datos temporalmente incoherentes; consultas analíticas complejas pueden ser difíciles (p. ej., carecen de JOINs tradicionales); el modelado de datos puede volverse complejo y dependiente de la lógica de la aplicación                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| Data Warehouses | _Orientados a análisis histórico_: permiten consultas complejas de BI con alto rendimiento gracias a almacenamiento columnar y optimizaciones MPP; aseguran calidad e integridad de datos al aplicar esquemas estrictos y limpieza durante la carga<br>Suelen ser altamente _confiables_ y consistentes, adecuados para informes empresariales críticos.                                                                                                                  | Requieren **esquemas rígidos** y datos estructurados, por lo que no manejan bien datos no estructurados o cambiantes. La preparación de datos (ETL) puede ser lenta y costosa a medida que crecen las fuentes y volúmenes. Tradicionalmente, la escalabilidad estaba limitada en entornos on-premise (aunque la nube ha atenuado esto), y expandirlos puede implicar costos elevados.                                                                                                                                                                                                                                                                                                                                                                                                                               |
| Data Lakes      | **Flexibilidad máxima**: admiten datos de cualquier formato sin necesidad de preprocesamiento, facilitando la ingestión de _big data_. **Escalabilidad** y costo eficiente: pueden crecer a petabytes utilizando hardware/computación asequible (Hadoop y almacenamiento en la nube ofrecen expansión casi ilimitada a bajo costo)<br>Permiten a científicos de datos explorar datos diversos y descubrir insights novedosos que un almacén tradicional podría descartar. | Sin una gestión rigurosa, un lago de datos puede volverse un “_pantano de datos_” caótico. La falta de estructura implica **necesidad de expertos técnicos** para extraer valor[ibm.com](https://www.ibm.com/mx-es/think/topics/data-lakehouse#:~:text=Sin%20embargo%2C%20el%20tama%C3%B1o%20y,debido%20a%20una%20mala%20gesti%C3%B3n). El gobierno de datos es complicado: al no imponer esquemas a priori, pueden surgir silos y datos de baja calidad[ibm.com](https://www.ibm.com/mx-es/think/topics/data-lakehouse#:~:text=Sin%20embargo%2C%20el%20tama%C3%B1o%20y,debido%20a%20una%20mala%20gesti%C3%B3n). Además, carecen de motores analíticos integrados: por sí solos no ofrecen las consultas rápidas de un data warehouse, siendo a menudo necesario complementarlos con frameworks (como Spark, Hive). |
|                 |                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |



- Bases de datos NoSQL (no relacionales)
	- MongoDB
	- Apache Cassandra
- Almacenes de Datos (Data Warehouses)
>A medida que crece la cantidad de datos en un almacén, el costo y la complejidad del almacenamiento crecen con ella
>También problemas de latencia y *rendimiento*



- Lagos de datos (Data Lakes)
	- Apache Hadoop
- Arquitectura Lakehouse (Data Lakehouse)

- Almacen de datos en la nuve
	- Amazon Redshift

>La minería de datos es un proceso que se puede definir en:
>1. Objetivos del negocio
>2. Selección de datos
>3. Preparación de datos
>4. Construcción de modelos de datos y minería de patrones
>5. Evaluación de resultados y aplicación de las mejoras

Entre el punto 2 y 3 se encuentra:
## Pipeline
>*Tuberías*

> [!info] Pipeline
> método en el que los datos sin procesar se ingieren de varias fuentes de datos, se transforman y luego se trasladan a un almacén de datos

Antes de que los datos fluyan a un repositorio de datos, normalmente se someten a un procesamiento que garanticen la integración y estandarización de datos adecuadas 
>Esto es particularmente importante cuando se maneja una base de datos relacional que requiere una alineación en sus columnas y tipos de datos



---

> [!quote] IBM:
> La minería de datos toma los datos sin procesar y encuentra el orden en el caos

> [!important] IBM
> Es útil el conocimiento de lenguajes de minería de datos, incluyendo Python, R y SQL.

> [!warning] IBM
> Un enfoque poco cauteloso de la minería de datos podría dar lugar a resultados engañosos o peligrosos. 


---

## Recursos

| Recurso |     |
| ------- | --- |
|         |     |

