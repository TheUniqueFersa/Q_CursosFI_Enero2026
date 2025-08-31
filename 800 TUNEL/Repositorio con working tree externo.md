---
pertenece a:
  - "[[Git - GitHub]]"
---

# ***Repositorio con working tree externo***
# ℹ Abstract
Respaldar con [[Git - GitHub|git]] un directorio $X$ y guardar la información del repositorio en otro directorio $Y$

>👉Ejemplo de uso

```bash
git --git-dir="C:\Users\TU_USUARIO\NoSync\MiApp.git" --work-tree="C:\Users\TU_USUARIO\iCloudDrive\MiApp" status
```


# Windows
## Convenciones
se identifican 2 directorios importantes:
- `C:\Users\TU_USUARIO\iCloudDrive\MiApp` que llamaremos `Working Tree` $WT$.
>Es donde está toda la estructura (de archivos) que se desea guardar en el repositorio
>Esto implica que todo lo que esté dentro de ``MiApp`` se commiteará
- `C:\Users\TU_USUARIO\NoSync` que llamaremos `Repositorio` $REP$
>Es donde se guardará toda la información del repositorio (la carpeta `.git`)

En la ruta de `REP` iniciar un repositorio con

```bash
git init
```


## Pasos a seguir
- Creación de directorios ([[#Convenciones]])
- Creación de [[#Comando personalizado]]

## Comando personalizado
1. Editar `$PROFILE`

```bash
notepad $PROFILE
```

2.  Agregar la siguiente función al archivo

**Opción 1**
Para esta opción se debe posicionar en $WT$
```BASH
function gitf {
    $gitdir = "C:\Users\FERSA\Fuerte\.git"
    $worktree = "C:\Users\FE
    git --git-dir="C:\Users\TU_USUARIO\NoSync\MiApp.git" --work-tree="C:\Users\TU_USUARIO\iCloudDrive\MiApp" @Args
}
```

**Opción 2**
Se puede ejecutar el comando en cualquier carpeta, siempre va a hacer referencia a las carpetas descritas en la función

```bash
function gitf {
    $gitdir = "C:\Users\FERSA\Fuerte\.git"
    $worktree = "C:\Users\FERSA\iCloudDrive\iCloud~md~obsidian\Fuerte de la Creacion"
    git --git-dir=$gitdir --work-tree=$worktree @Args
}
```

Guarda el documento y cerrar
3. Recarga el perfil

```bash
. $PROFILE
```

## USO
Ya se 


## Errores comúnes
### `$PROFILE` no existe tal ruta
1. Verificar la existencia de una ruta
```bash
echo $PROFILE
```

2. Crea la carpeta si no existe
```bash
New-Item -ItemType Directory -Force -Path (Split-Path $PROFILE)
```
3. Crea el archivo de perfil
```bash
New-Item -ItemType File -Force -Path $PROFILE
```

>Después de esto ya se debería ejecutar `echo $PROFILE` sin problema


### Permisos de administrador (ejecución de scripts está deshabilitada en este sistema)
1. Abre la terminal como Administrador
2. Ver la política actual
```bash
Get-ExecutionPolicy
```
Debería decir `Restricted`
3. Cambiar la política para permitir scripts locales
```bash
Set-ExecutionPolicy RemoteSigned
```


### working tree no funciona por repositorio `bare`
Si no se creo el repositorio con `git init`, probablemente el repo sea ``bare``[^1]

Configura el repositorio:
```bash
cd "C:\Users\LEOPARD\NoSync\(MiApp).git"
git config core.worktree "C:\Users\FERSA\iCloudDrive\iCloud~md~obsidian\Fuerte de la Creacion"
```


[^1]: Q
