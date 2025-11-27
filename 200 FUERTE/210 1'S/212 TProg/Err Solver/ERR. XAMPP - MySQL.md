---
pertenece a:
  - "[[♠Antierror]]"
---
# XAMPP
## MySQL

### Para el error: 'Error: MySQL shutdown unexpetedly'
#### Solucion 1:
- Se abre 'XAMPP xontrol' con permisos de administrador.
#### Solucion 2:
{
- Se posiciona en la carpeta '\xampp\mysql\'

0.- Se hace una copia de seguridad de 'data'
1.- Carpeta 'data' se renombra a 'data-old' (puede ser cualquier nombre)
2.- Se crea una nueva carpeta vacia llamada 'data'
3.- Copiar todo el contenido de la carpeta 'backup' a la carpeta recien creada 'data'

4.- De la carpeta 'data-old' se copian solo las carpetas (todas, pues es algo relacionado con las BD
								menos mysql, phpmyadmin, performance_schema, (y aparentemente test)
	a la carpeta 'data'

5.- Se copia de data-old, solo el archivo 'ibdata1' [se reemplaza] (notese que pesa mas, porque tiene toda la info de las BD)
}
