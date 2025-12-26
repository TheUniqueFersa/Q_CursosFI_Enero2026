---
pertenece a:
  - "[[EH - TM - GitHub]]"
tags:
  - ENHANCED/TECHMASTER
  - Git
---
# Git LFS en Windows
1. Instalar con instalador desde [la página](https://git-lfs.com/)

## Inicializar LFS 
>Una vez por usuario

```shell
git lfs install
```

## Trackear los tipos de archivos que van a usar LFS
```shell
git lfs track ".pdf"
```

## Guardar configuración
```shell
git add .gitattributes
git commit -m "Configurar Git LFS para PDFs"
```

## Agregar los archivos PDFs
```shell
git add *.pdf
git commit -m "Agregar PDFs usando Git LFS"
```


# Archivos grandes ya en commits previos
Cuando esto pasa tenemos que migrarlos, esto implica alterar todo el repo, pero es válido dado nuestro requerimiento

## Asegurarse que LFS ya esté activo y trackeando el tipo de archivo requerido
```shell
git lfs install
git lfs track "*.pdf"
```

## Migrar un *tipo de archivo* del historia a LFS
>Este tipo puede ser cualquiera, inclusive varios, pero vamos a ejemplificarlo con `pdf`

```shell
git lfs migrate import --include="*.pdf"
```

Esto hará:
- Eliminar los PDFs del historial normal
- los vuelve objetos LFS
>Puede tardar unos minutos si hay muchos PDFs

- Se puede verificar si ya se trackearon los PDFs con: [[#Verificar que archivos usan LFS]]

- Se puede hacer commit si se requiere
- Hacer push con `git push --force`

---
# Verificar que archivos usan LFS
```shell
git lfs ls-files
```



# Verificar el tamaño real de un pack
>Este debe ser menor a 2 GiB

```shell
git count-objects -vH
```

>`size-pack` **debe ser < 2 GB**

# Uso compartido entre distintos equipos
Una vez que algún usuario haya usado LFS, entonces los demás deberán hacer pull con 
```shell
git lfs pull
```

# Ver los objetos MÁS PESADOS del historial
Usando *git bash*
```shell
git rev-list --objects --all |
git cat-file --batch-check='%(objecttype) %(objectname) %(objectsize) %(rest)' |
sort -k3 -n |
tail -10
```
Con esto podremos ubicar los archivos que hacen que el pack tenga un tamaño mayor al permitido


# Eliminación de blobs por tamaños previamente en historial
>Es evidente que si no estaban en historial, se pueden ignorar con `.gitignore`

- Eliminar todo BLOB mayor a $X$ MB del historial
```BASH
git filter-repo --force --strip-blobs-bigger-than 200M
```
>Elimina todo blob mayor a 200MB
>Esto sirve para asegurar la eliminación de archivos que por ejemplo contienen en su nombre caracteres *UNICODE*, pues este comando:
>- Elimina cualquier archivo > $X$ MB
>- No depende de rutas ni nombres


## Limpieza
```shell
git reflog expire --expire=now --all
git gc --prune=now --aggressive
```

>Después de [[#Limpieza]] ya no deberían salir los archivos pesados al ejecutar [[#Ver los objetos MÁS PESADOS del historial]] que bloquean la subida de un pack por exceso de tamaño.










---
# ERRORES COMÚNES
## remote: fatal: pack exceeds maximum allowed size (2.00 GiB)
>Indica que el pack tiene un tamaño > 2 GB, puede ser inclusive después de usar LFS, 
>lo que implica que **hay otro tipo de objetos grandes en el historial**, NO solo los trackeados hasta ese momento


