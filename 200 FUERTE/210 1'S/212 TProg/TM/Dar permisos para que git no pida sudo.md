---
pertenece a:
  - "[[EH - TM-  LINUXERO]]"
tags:
  - Git
---
>Comandos a escribir para que en una carpeta se puedan ejecutar los comandos de git sin que pida sudo a cada rato.
# Cambiar la propiedad de la carpeta y sus archivos

```bash
sudo chown -R <usuario>:<usuario> <carpeta>
```
Esto cambia la propiedad de `<carpeta>` y de todos sus archivos, incluyendo subdirectorios

# Cambiar los [[permisos para permitir lectura y escritura]]

```bash
sudo chown -R 755 /unam
```
Esto otorga permisos de lectura y ejecución a todos los usuarios, pero solo el propietario tendrá permisos de escritura

# Verificar los permisos

```shell
ls -l <carpeta>
```

Y con eso ya se puede ejecutar los comandos de Git sin que te pida sudo :)