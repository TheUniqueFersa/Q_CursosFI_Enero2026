
#SCPA
## Varios

https://es.acervolima.com/como-hacer-el-modo-oscuro-para-sitios-web-usando-html-css-y-javascript/

ALTER TABLE menu ADD ocultar TINYINT(1) NOT NULL;

---

## GIT

### Comandos
```bash
git config --global user.name "Mona Lisa"
git config --global user.email "a@a"

git config --local
```


```bash
git status
```
3 estados:

- untracked
- commited (tracked)
	(estados para tracked)


```bash
git checkout
```


Navegación entre versiones
===> Cambio a una versión (commit) anterior <===
```bash
git checkout "nombre del commit"
```


salir del estado "DETACHED HEAD"
```bash
git switch -
```


```bash
git remote -v
```
Muestra la lista de los respositorios remotos asosciados con el repositorio local, con sus URLs



### RAMAS
Crear rama: git branch nombreRama
Moverse de rama: git checkout nombreRama
Crear y moverse de rama al mismo tiempo: git checkout -b nombreRama
Ver ramas: git branch -a 

Unir ramas: 
```bash
git merge nombreRama
```


------
## MySQL

#### Crear e importar Base de Datos correctamente 

##### Crear Base de datos: (codificación correcta)

```mysql
CREATE DATABASE [] CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
```


##### Crear respaldos:
```bash
./mysqldump -u [usuario] [nombre de la base de datos] -r [nombre del respaldo].sql
```


Insertar respaldos:
```bash
./mysql -u [usuario] --default-character-set=utf8
```

```mysql
SET names 'utf8';
USE [nombre de la base];
SOURCE [nombre del respaldo].sql;
```


---
a
<!--Recuadro de ejemplo-->                
```html
	<div id="1" class="item">
		<div>
			<span class="nombreBusqueda">

			</span>
			<!-- Botones -->
			<span class="btn-acciones">
				<button data-btn="editarB" data-id="1" class="editar-izq">
					<i data-btn="editarB" data-id="1" class="fa-solid fa-pencil editarB"></i>
				</button>
				<button data-btn="eliminarB" data-id="1" class="editar-izq">
					<i data-btn="eliminarB" data-id="1" class="fa-solid fa-trash"></i>
				</button>
			</span>
		</div>
		<!--Nombre Busqueda-->
		<div>
			<input id="buscador" class="" type="search" placeholder="Introduce el título de la nueva busqueda" aria-label="Search">
		</div>
		<!-- Palabras -->
		<div class="palabrasClave">
			<p>
				<button data-btn="minusB" data-id="1" class="editar-izq" id="1">
					<i data-btn="minusB" data-id="1" class="fa-solid fa-minus" id="1"></i>
				</button>
				<span>Calificaciones</span>
			</p>    
			<p>
				<button data-btn="minusB" data-id="1" class="editar-izq" id="1">
					<i data-btn="minusB" data-id="1" class="fa-solid fa-minus" id="1"></i>
				</button>
				<span>Promedios</span>
			</p>
		</div>
		<!-- Formulario -->
		<div class="mt-2 mb-3 pt-2 form-item hide" id="1"> 
			<div>
				<label for="Palabra">Palabras Clave</label><br>
				<div class="input-editar-menu">
					<input name="Palabra" type="text" placeholder="Palabra" id="1">
					<button data-btn="plusB" data-id="1" class="editar-izq" id="1">
						<i data-btn="plusB" data-id="1" class="fs-sharp fa-solid fa-plus" id="1"></i>
					</button>
				</div>
			</div>
			<div>
				<label for="Ruta">Ruta</label><br>
				<div class="input-editar-menu">
					<input Ruta="link" type="text" placeholder="Ruta" id="2">
					<button data-btn="confirmarB" data-id="1" class="editar-izq" id="2">
						<i data-btn="confirmarB" data-id="1" class="fas fa-floppy-disk" id="2"></i>
					</button>
				</div>
			</div>
		</div>
		<!--url-->
		<div>
			<input id="buscador" class="" type="search" placeholder="Introduce el título de la nueva busqueda" aria-label="Search">
		</div>
		<!-- Botones -->
		<!--<span class="btn-acciones">
			<button data-btn="editarB" data-id="1" class="editar-izq">
				<i data-btn="editarB" data-id="1" class="fa-solid fa-pencil editarB"></i>
			</button>
			<button data-btn="eliminarB" data-id="1" class="editar-izq">
				<i data-btn="eliminarB" data-id="1" class="fa-solid fa-trash"></i>
			</button>
		</span>-->
	</div>
```




---


---
## PHP
Declaración de un TERNARIO que recibe información POST
```php 
$contrasena= (isset($_POST['contraseña']) && $_POST["contraseña"] != "")? $_POST['contraseña'] : "no especifico";
```

---
## JavaScript
###### Plantilla para un formulario FETCH
```JS
fetch("./dynamics/PHP/datos_personales.php", {
	method:"POST", 
	body: datosForm,
  }).then ((response) =>{
	return response.json();
  }).then ((datosJSON)=>{
	datosPerfil=datosJSON;
   
	base_nombre.innerHTML = datosJSON.nombre+' '+datosJSON.ap_pat+' '+datosJSON.ap_mat;
	//Obtener generación o ciclo escolares para la prepa
	const iniciogen=datosJSON.generacion;
	const añoini=parseInt(iniciogen);
	const añoterm=añoini+2;
	base_ciclo.innerHTML = añoini+'-'+añoterm;
	if(datosJSON.area != ""){
		esp_area.style.display += "inline";
		base_area.innerHTML=datosJSON.area; 
	}
	base_seccion.innerHTML=datosJSON.seccion;
	base_grupo.innerHTML=datosJSON.grupo;
	//Primera parte
	BASED2.innerHTML = datosJSON.correoPersonal;
	BASED3.innerHTML = datosJSON.seguro;
	//Segunda Parte
	BASED4.innerHTML = datosJSON.direccion.calle;
	BASED5.innerHTML = datosJSON.direccion.num_ext;
	BASED6.innerHTML = datosJSON.direccion.num_int;
	BASED7.innerHTML = datosJSON.direccion.cp;
	const CodPostalVar = datosJSON.direccion.cp;
	//Probar variable codigo Postal
	//const CodPostalVar = 09020;
	// console.log(datosJSON.direccion.colonia);
	// console.log(datosJSON.nombrecolonias);
	BASED8.innerHTML = datosJSON.direccion.colonia;
	BASED9.innerHTML = datosJSON.municipio;
	//https://buscacp.com/codigos-postales/ciudad-de-mexico/
	
	//Sacar datos alcaldia
	
	BASED10.innerHTML = datosJSON.telefonos[0]; //Numero Casa Estudiante
	//Tercera Parte
	BASED11.innerHTML=datosJSON.tutor;
	BASED12.innerHTML=datosJSON.telefonos[2]; //Numero Casa Tutor
	BASED13.innerHTML=datosJSON.telefonos[3]; //Numero Celular tutor
	BASED14.innerHTML=datosJSON.telefonos[4]; //Numero Trabajo tutor
	BASED15.innerHTML=datosJSON.correoTutor;
	imprimeColonias(datosPerfil.direccion.cp);
});
```