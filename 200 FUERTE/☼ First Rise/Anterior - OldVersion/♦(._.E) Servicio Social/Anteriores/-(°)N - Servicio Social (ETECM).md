---
image:
title: -(°)N - Servicio Social (ETECM)
fecha_creado: 
fecha_terminado:
terminado: 
prioridad:
---

---------------------------------------------------------------------------
21/07/2022

###### Lista de cosas por hacer (ANTERIOR)
{08/02/2023}
-validar en php los datos de todo el perfil

-boton hamburguesa 
-sesiones que no haya forma de colarse
-arreglar los botones de datos personales (biblioteca que genera pdf)

HECHO:
-boton impresora en el Perfil (hoja de datos Personales)
-imagen de la credencial en el perfil 
-tira de materias diseño 

---
{13feb-17feb}

- Conservar nomenclatura
- Poder Descargar TIRA DE MATERIAS
--Corregir el diseño cuando se genera el pdf
- Agregar foto en boton de perfil

->Indices? para BUSCADOR

---> Pensar en un sistema para <---
--¿Qué? y ¿Como?
< Para Configurar el portal
< Para visualizar y ocultar cosas
< Hacer algun agregado de  manera sencilla




¿Qué?
- Añadir ...
- Configurar // Editar ... 
- Mostrar ... 
- Ocultar ...
- Eliminar? ...

... elemento {
	Es aquel que se le dara una clase para que se identifique que se podra someter a cualquiera de las
	cosas que se describen arrivba (5 acciones)
}

---> SECTORES SUCEPTIBLES PARA SU MODIFICACION Y CONFIGURACION <---
Se toma en cuenta la vista principal:
PlantillaPrincipal.sectores : 5
1: Barra superior
2: Barra Lateral Izquierda 
3: Barra Lateral Derecha
4: Footer
5: De Contenido

1- Barra Superior
Dividido en
{
	Datos identificacion de la pagina

+
	Boton de credencial
	Boton de usuario
	+
	
}	




2- Barra Lateral Izquierda (mas botones y menus) 
{

	Botones de acceso a Secciones de la pagina
	+
---------------------------------
	Botones de 
		Modo nocturno // modo normal
		Informacion 

}
-> Significa tener que crear una seccion nueva en la pagina



3- Barra Lateral Derecha
{
	Tira de Materias

+
	Avisos (Tomalo en cuenta)
	(Linea de atencion)
	+

}


4- Footer
{

	Ubicacion prepa
	Informacion pagina

---------------------------------
?

}

??
5- De Contenido
{
	+	
}



###### {9 de marzo de 2023}


Arreglar la tabla de búsqueda
Palabras clave **







Agregar el nombre al usuario 

Agregar columna del orden de los cuadros ? 


Y del menú
Corregir el maravilloso inglés de alguien que escribió mal el tipo de dato JAJAJA


Alinear a la izquierda
Lo de portal
Y
Lo de escuela
Del inicio
Carrusel
Óvalos raritos
Qué hay que ponerle un limite
Y
La letra
Más peque


Modo oscuro: revisar paletas de modo oscuro
Horario y tira, según ese algoritmo


Que esa cosa no se encime en lo blanquito 👍
Y centrar la foto
Que el triángulo desaparezca cuando sale el menú


Alinear esas cositas


El estándar del nombrado de los campos
😽 que todo con minúsculas
Que con guiones bajo
Que no empiecen con mayúsculas


Limitar los caracteres de las cositas del carrusel



Y que ya pensemos bien como hacer el buscador



****
-- Diagrama de casos de uso --

Lo que puede hacer cada usuario
3 muñequitos, sus flechitas y sus casos de uso

*****


@Zarcotgames que pongas el archivo de diagrams en la carpeta
Hacer la vista del portal de administración
Que es libre porque nadie lo va a ver 😽
Pero que sea institucional
Pero padre dice JAJAJ


*** GUATAFAK ***



Hecho:

Select de grupos para ver horarios
Agregar el botón regresar cuando se muestra el formulario de creación de cuadro.
Margen en las opciones del menú lateral.
Arreglar los circulitos del carrusel (que no se apachurren)




Mostrar el nombre del archivo a la izquierda del ícono.

No hecho:

?Implementar un botón para habilitar/deshabilitar la tira de materias. 
Input para buscar la tira de materias de un alumno



Implementar página de edición de vínculos. Implementar buscador.



Revisar que funcione bien la parte de subir la imagen. 
Validar que sólo se puedan subir imágenes de máximo 5MB



Crees que puedas mañana??? 

##### SQL notable



---------------> Nueva Tabla en SAE PRUEBAS (BD) por la impresión de la Tira de materias
```mysql
CREATE TABLE `GBDGAE` (
  `NoCta` varchar(9) DEFAULT NULL,
  `numAsi` int(11) DEFAULT NULL,
  `GBase` varchar(255) DEFAULT NULL,
  `Folio` varchar(4) DEFAULT NULL,
  `NomDir` varchar(75) DEFAULT NULL,
  `Plt` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
```

```mysql
INSERT INTO `GBDGAE` (`NoCta`, `numAsi`, `GBase`, `Folio`, `NomDir`, `Plt`) VALUES
('321078522', 7, '0605', '3727', 'RODRIGUEZ SANCHEZ RICARDO', '026'),
('321085854', 6, '0601', '3483', 'CARDENAS BENAVIDES DANIELA', '026'),
('321088642', 7, '0605', '3694', 'FLORES MORAN JULIETA MELINA', '026'),
('321102502', 7, '0602', '3581', 'ZARCO ROMERO JOSE ANTONIO', '026'),
('321125853', 7, '0605', '3703', 'HERNANDEZ VAZQUEZ ANTONIO SEBASTIAN', '026'),
('321165848', 6, '0601', '3518', 'PUEBLITA ZACARIAS ARACELI MICHEL', '026'),
('321172974', 6, '0601', '3504', 'LOPEZ MORALES FERNANDO SAMUEL', '026');
```



#### Sistemas de pruebas
#Dirección:
https://sistemas.prepa6.unam.mx/PortalAlumno/
Ejemplo:
https://sistemas.prepa6.unam.mx/PortalAlumno/perfil.php
---------------------------------------------------------------------------


https://fontawesome.com/search?m=free&o=r



¿COMO GUARDAMOS LAS IMAGENES?


---
### Ejemplos Manuales para documentación
#### PREPARADOS


http://132.248.96.65/


---





