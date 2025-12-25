---
estado: STANDBY
tipo_nota: Essentia
Ruta: CIENCIAS E INGENIERÍAS
LIGHTVOLT: ⚡3🟠
Materia: Fundamentos de Programación
pertenece a:
  - "[[♣Platzi Master]]"
  - "[[‼Essentia]]"
Serie_Platzi: I. FUNDAMENTOS
fecha_creado: 2024-04-25
fecha_terminado:
terminado: false
image:
Calificación: ⭐⭐⭐⭐
dificultad: 🟢
Completado: 0
Incompleto: 9
Total: 9
profesor(a): Freddy Vega
tags:
  - Active_kanban/PlatziM/FundamentosIngSoftware
nombre: FunIngSoftware
links_url:
  - https://platzi.com/cursos/ingenieria/
horas_totales: 16
horas_contenido: 6
horas_práctica: 10
horas_empleadas: 1.5
próxima_clase: https://platzi.com/home/clases/1098-ingenieria/6558-puertos-y-protocolos-de-red/
próxima_fecha: 
---
# ***Fundamentos de Ingeniería de Software***
``` dataviewjs
function projectTracker(dv, query) {
    let searchPagePaths = dv.pages(query).file.path
    
    for(let i=0; i < searchPagePaths.length; i++){
        if(dv.page(searchPagePaths[i]).Total){
                    let title = dv.page(searchPagePaths[i]).nombre;
                    console
                    let total = dv.page(searchPagePaths[i]).Total;
                    let status = ((dv.page(searchPagePaths[i]).Completado / dv.page(searchPagePaths[i]).Total) * 100).toFixed();
                    const progress = "![pb|500](https://progress-bar.dev/" + status + "/?scale=" + "100" + "&title=" + title + "&width=400)"; //you could set any width if you need
                    dv.paragraph(progress);
                    dv.paragraph("<br>"); //use this if you have many projects to track.
        }
    }
} 

projectTracker(
    dv,
    "#Active_kanban/PlatziM/FundamentosIngSoftware" //change tag if you need
)
```

| Presentación general del Curso | Apuntes adicionales | Examen |
| ------------------------------ | ------------------- | ------ |
|                                |                     |        |
## 🏁 *Objetivos* 🎯
### 🕛⏳ Meta de tiempo ⏰⏲
## 🌿Abstract🌿

## ❓ Preguntas detonadoras ❓

## 📃Guía de Repaso 

## ℹ Índice de contenido

---
# Byte

``UTF-16``: 16 bits para representar los caracteres, les sobran espacios.
Por lo que empizan a poner emojiss

>**UNICODE** es un estándar de codificación de caracteres diseñado para facilitar el tratamiento informático, transmisión, y visualización de textos de numerosos idiomas y disciplinas técnicas, además de textos clásicos de lenguas muertas (Wikipedia)

>Unicode **es un sistema de codificación de caracteres utilizado por los equipos informáticos para el almacenamiento y el intercambio de datos en formato de texto**. Asigna un número único (un punto del código) a cada carácter de los principales sistemas de escritura del mundo. (arcgis.com)


---

# Correo electrónico
**Drivers**: Capaz de software que le permiten a la computadora entender señales de hardware externo

## **API 
Aplication Programming Interface**: Comunicarse entre sí

**AJAX**: Asynchronous JavaScript And XML
**JSON**: JavaScript Object Notation

**HTTP**: Protocolo de transferencia de Hipertexto. Hipertext

>*Cuando mandamos un correo.*
*Un evento se dispara que a través de JS encapsula datos en JSON y usando AJAX los envia a una API reste del lado del servidos a través de HTTP*

**FTP**: FIle transfer protocol

**SSH**: Si quieres controlar de manera remota un servidor a través de una consola de texto.

Big Torent: Archivos muy pesados

**HTTPS** S de cifrado, encriptado, solo tu y el servidor ven la información que compartes. 
**Dominio**: nombre con el cual se encuentra un servidor. Localiza el DNS
**DNS**: Domain Name server. Una IP equivale a un *nombre*

Los servidores, computadoras, etc se localizan en **IP**s

```Shell
ping google.com
```
*Comando hacer ping a Google.com*
- [ ] Qué hace realmente el comando

>


Un computador gigantesco -> **SERVIDOR**
Gmail esta programado en Java

SO de un servidor es Linux.
Linux tiene drivers que le permiten reconocer la electricidad. (Ethernet)

***LINUX***: Ethernet -> TCP / IP -> HTTP -> nginx | Apache -> :

Ahora sí, **Java** procesa lo resultante

-> La manda a una *base de datos*, para poder tener la información estructurada y guardada
-> Manda a servidor del correo (que viene en la petición)
``nombre@dominio``

**postfix**: Base de datos / Bandeja


*Pregunta y pregunta ?*
## **Servidor de notificaciones**
*Tiene*: Telefono, ID, IP
Recibe de los servidores y manda notificación a tu celular?

**UDP**: este nunca espera respuesta


---
# Procesadores y arquitecturas de CPU
**Core**:

Se tienen que agarrar circuitos y hacerlos más pequeños.
Los límites están dados por cuestiones físicas

*Central Process Unit*
CPUs hechas de (Si) Silicio
Herramientas de aislación para que la electricidad no pase de un circuito a otro

## **BIOS**
Pequeño sistema operativo de arranque, le indica a la CPU que puede arrancar.
Detecta donde están todas las cosas conectadas al computador:

BIOS -> Disco Duro (S.O) -> RAM -> CPU -{ Periféricos }

- **Disco duro**

*Fragmentación*
Datos dispersos


USB -> chip flash
Borrar y cambiar hacía que ciertos sectores se hacían inútiles


Datos del S.O. y se envían a un lugar donde la información se mueve muy rápido:
## **RAM** (Random Acess Memory) -> solo funciona cuando hay electricidad
Circuitos y transistores en placas paralelas

## Memristor
Promete que a futuro remplace el disco duro y la RAM y la unifique

Drivers
Piezas de software que entienden como convertir las señales eléctricas en bytes para funcionar

## **GPU**
Encargada de comunicar la pantalla con la CPU
Puede hacer procesos en paralelo

En la actualidad, hacen modelado 3D, álgebra vectorial para hacer videojuegos!

Antes, el chip de sonido era aquel que se conectaba con los speakers.

---
## System On A Chip
Contiene: BIOS, RAM, CPU
Radio, GPU.

![[pi_board_pinout.jpg|600]]

- [ ] Qué son los GHz?

- [ ] ¿Qué son sistemas embedidos?⏫ 


![[SYSTEM ON A CHIP-4a821c6b-ed2f-4e9e-9751-98d9aad4f46f.webp|600]]


# RAM y Disco Duro 👇[[#RAM y Disco Duro ==*Resumen de **Platzi***==|Resumen de Platzi]]
- Persistente
- Secuencial
- Esctructurada

## Sistemas de Archivos
Forma de guardarse/estructurar los archivos (convenciones internas para acceder a los archivos)
**Linux**: Ext3, Ext4
**Windows**: 
- FAT (File Alocation Table) ->Quedo en el pasado
- NTFS (**NEW TECHNOLOGY FILE SYSTEM**) viene de *Windows NT*

**MacOS**:
- HFS
- APFS (Apple File System)

### Cabecera
En la cabecera están las direcciones de todos los archivos (índices)

Cuando se borran archivos, no se reescriben los bytes inmediatamente, sino que se borran los índices de la cabecera y ya no se pueden acceder a ellos desde allí.
Por ende:
>🧠Los **software de recuperación de archivos** trabajan bajo este principio, escanean la memoria, identifican que secciones no están indexadas y arroja los archivos que pueden recuperarse (los reindexa).
>Programas más avanzados logran también recuperar aquellos que fueron parcialmente reescritos por otro programa/archivo

>🧠*Recuperar datos de una memoria RAM de manera loca*: congelan a casi 0 absoluto para frenar los electrones? y así analizar con herramientas de científicos forenses


## CPU -> caché
Es más rápida que la RAM

Archivos que requiere la CPU de manera inmediata
## RAM (*Random Access Memory*)
### Direcciones de memoria 
>💬A diferencia de la *cabecera* del **Disco Duro** , la RAM siempre sabe donde está todo, esto mediante las direcciones de memoria, mismas que es compartida con la CPU para poder *acceder inmediatamente*

>👁‍🗨Las direcciones de memoria para programadores son ***las variables***

>Las direcciones de memoria son representadas usualmente en *código hexadecimal*

En un System on a chip, todo esta pegado (es el mismo circuito)
>👁‍🗨El problema del *System on a chip* es que **no son actualizables**

## Buses de datos
>Cables o circuitos para la comunicación entre componentes

Forma de conectar el disco a CPU o la RAM a CPU

Qué son los 
>**Bridges**
- [ ] 

>


Con los Discos Duros, los buses de datos se llaman
- ATA (Histórico)
- **SATA** (Más actual)

## USB (*Universal Serial Bus*)
>Bus de dato

# GPU
Normalmente hay un **bridge**
PCI Express

- [ ] 

Tiene
- GHz (normalmente menor que la CPU)
- Cores (Normalmente más)
- VRAM
- Operaciones 3D
- Codecs

Divide la pantalla y cada división se le asigna a cada *core*
>Es una grilla

# Periféricos y sistemas de entrada de información
- [ ] **Kernel** 🔍

>

En la RAM se cargan (se cargan como anillos?)
1. Kernel: 
2. *Drivers*: pequeñas piezas de software especializadas que nos permiten interpretar las señales del hardware
3. *Más Drivers* (de aplicación o especializados)
4. **APPS**: la que menos tienen permisos

- [ ] Secure Enclave🔍

>

![[Fundamentos de Ingeniería de Software - Anillos de seguridad.png|450]]


>**Si he visto más lejos es porque estoy sentado sobre los hombros de gigantes** - *Isaac Newton* #Quoted 

>- [ ] 🧠Z1 🔍-> [Video](https://www.youtube.com/watch?v=Nl9Urg0TgU0)

---
# Cómo funciona el Internet

## Red local

>PC se conecta al **[[#switch]]** que busca al **[[#Routers|router]]**, que su vez se conecta con el **[[#Modem del ISP** (*Internet Service Provider*)|modem]]** y este último a internet

### Switch
Busca el equipo al que se quiere conectar
Perite la conexión simultánea de varios equipos por cable

### Routers
- Nombre de la red
- Password
- IP List
- DHCP


- [ ] MAC Address ❓
Número de identificación de las piezas de hardware que se conectan a una red pública

### Modem del **ISP** (*Internet Service Provider*)
>Se conecta al Router y al ==Internet==❓
- Se puede conectar por ADSL
- Por 4G/LTE
- Fibra óptica

>📌 Hay veces que el **modem** *hace de router y de switch*
>Hay veces que tenemos el **switch en el router**
>Hay veces que el modem manda wifi pero no tiene switch, *no se puede por cable*
>Hay veces que no hay wifi, *no emite señales de radio*, solo podremos por cable



---
# ***INTERCONN***
## Conexiones
Notas que han de considerarse para la revisión de la actual, para tener contexto
### Tareas y ejercicios
- *TEMA*
	*Documento*

## Recursos
### Aportaciones

#### [[#RAM y Disco Duro]] ==*Resumen de **Platzi***==
La importancia de la **memoria RAM y el disco duro** radica en que son elementos donde se guarda información y datos de un dispositivo. La memoria RAM se diferencia del disco duro porque no guarda los datos de manera persistente, mientras que los discos duros sí lo hacen.

Este tipo de memoria funciona a alta velocidad porque puede acceder a cualquier lugar donde se guardan los datos de manera instantánea. En cambio, los discos duros son lentos porque deben llegar al punto exacto donde están alojados los archivos para poder abrirlos.

##### ¿Qué es la memoria RAM?

La memoria RAM es una parte importante de dispositivos como computadoras y celulares porque es donde se almacenan los datos de las aplicaciones que estás usando y necesitarás más de ella si estás ejecutando muchos programas.

![memoriaram (1).png](https://static.platzi.com/media/user_upload/memoriaram%20%281%29-5c206cf5-762f-4920-95c6-7f7b6171f211.jpg)

Este elemento almacena información de manera temporal, es decir, esos datos se borrarán cuando apagues el dispositivo, por lo cual si la información excede la capacidad de la memoria RAM, la CPU empezará a guardarla en el almacenamiento de tu computador ralentizado el desempeño del dispositivo.

> Repasa y aprende más sobre: [¿Qué es un system on a chip?](https://platzi.com/clases/1098-ingenieria/6552-que-es-un-system-on-a-chip/)

##### ¿Cómo funciona la memoria RAM?

La memoria RAM guarda temporalmente los programas y archivos en uso en la computadora. La CPU accede a ella mediante un índice compartido y un bus de datos que transfiere datos entre la CPU, el disco duro y la memoria principal.

##### ¿Qué tipos de memoria RAM existen?

Si tienes una computadora encontrarás que tiene alguno de estos dos tipos de memorias RAM: la Memoria RAM estática o la Memoria RAM Dinámica.

###### 1. Memoria RAM estática

La estática es un tipo de memoria conocida como SRAM que preserva los datos siempre que tenga suficiente energía en su sistema. No necesita actualizarse constantemente para retener la información, por lo que es más rápida. Sin embargo, su costo es elevado y no suele ser la primera opción para un dispositivo.

###### 2, Memoria RAM dinámica

En cambio, la memoria RAM dinámica, también conocida como DRAM, suele ser la memoria principal de los sistemas informáticos porque es más asequible. Está compuesta por un capacitor y un transistor, por lo que su sistema está diseñado para actualizarse constantemente con el fin de retener información.

##### ¿Qué es un disco duro?

Un **disco duro**  o _hard drive_ es una pieza de hardware que almacena datos en un disco de manera permanente. El usuario puede acceder a estos datos para leer y escribir archivos.

##### ¿Cómo funciona el disco duro?

Antes, los discos duros tenían un brazo mecánico que leía y escribía datos en un disco de metal que giraba, como un disco de vinilo. El brazo se movía para acceder a diferentes partes del disco.

Hoy en día, existen los discos de estado sólido (SSD) que no tienen brazo ni disco que gira. Funcionan como la memoria RAM y evitan la pérdida de información al apagar la computadora. Son más rápidos para leer y escribir y duran más porque no tienen piezas que se muevan y se puedan romper.

![disco-duro-solido-y-mecanico-ejemplo.jpg](https://static.platzi.com/media/user_upload/inside-SSD-1024x683-4891497e-fa39-401c-a66e-4b0fb401981f.jpg)

##### ¿Cuál es la diferencia entre el disco duro y la memoria RAM?

Los discos duros son lentos porque requieren posicionarse en el lugar exacto donde se encuentra el archivo. En cambio, la RAM es más rápida porque puede acceder instantáneamente a los datos almacenados.

La diferencia radica en que los discos duros no son volátiles y retienen la información aunque no tengan energía. La memoria RAM, por otro lado, pierde los datos al apagar el computador. Los discos duros almacenan archivos de manera secuencial, dividiéndolos en pedazos y guardando su posición y ubicación en el disco para accederlos ordenadamente.

##### ¿Para qué sirven los sistemas de archivos de un disco?

Para poder almacenar los archivos de forma adecuada, un disco duro necesita un sistema de archivos que son convenciones internas de los sistemas operativos para poder acceder a los archivos almacenados.

- En Linux existe ext3 o ext4.
- En Windows existía FAT16 o FAT32 (File Allocation Table), que fue reemplazado por NTFS (New Technology File System).
- En Mac OSX el sistema de archivos se llamaba HFS (Hierarchical File System) pero ahora se llama AFS (Apple File System) en macOS Sierra.

Cuando abrimos un archivo, la CPU (Unidad Central de Procesamiento) se lo pide al disco duro y luego lo lleva a la memoria de acceso aleatorio, o _random access memory_, para leerlo.

>_Contribución creada con los aportes de: Mayra López._


### Materiales del curso

| Clase                                                 | Material                                                                                                                                       | Estado |
| ----------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------- | ------ |
| [[#Periféricos y sistemas de entrada de información]] | 👥[Anillos (seguridad informática)](https://es.wikipedia.org/wiki/Anillo_(seguridad_inform%C3%A1tica))                                         | ❌      |
| La evolución de la arquitectura de la computación     | 👥[La evolución del almacenamiento informático](https://www.revistacloudcomputing.com/wp-content/uploads/2013/08/evolucion-almacenamiento.jpg) | ❌      |


## Referencias
