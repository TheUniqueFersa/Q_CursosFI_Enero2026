---
tags:
  - GitHub
pertenece a:
  - "[[EH - TM - GitHub]]"
---
# SSH en Windows y Linux Manjaro
## Verificación de llaves
En *powershell*
```shell
ls ~/.ssh
```

Si hay llaves existentes como:
```shell
id_ed25519
id_ed25519.pub
```

podemos saltar a [[#Inicia el agente SSH]]

## Generar clave SSH
```shell
ssh-keygen -t ed25519 -C "holafersa@gmail.com"
```

- Enter para ingresar la ruta donde se guardara (Enter vacío si se quiere guardar en `~/.ssh` por defecto)
- Ingresar passphrase (opcional) (Enter vacío si no se quiere passphrase)
## Inicia el agente SSH
```bash
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
```

>👀 Cuando se ejecuta `eval ...`
>Si todo va bien, verás algo como: 
>`Agent pid 1234`

Si windows pide permiso, acepta
Si se ingresó passhphrase, aquí se pide de nuevo

### Prueba
Para verificar que quedó cargada después de `ssh-add`
```shell
ssh-add -l
```
se deberá ver algo como:
```text
256 SHA256:xxxxxx id_ed25519 (ED25519)
```

## Copiar la clave pública
```shell
cat ~/.ssh/id_ed25519.pub
```

Copia todo el contenido

## Agrega la clave en GitHub
1. GitHub -> Settings
2. SSH and GPG Keys
3. New SSH Key
4. Pega la clave que se copio ocn cat en [[#Copiar la clave pública]]
5. Guardar
## Agregar el remote del repo a SSH
Dentro del repo
```shell
git remote -v
```

Si el link comienza: `https://...`, cambia
```shell
git remote set-url origin git@github.com:TheUniqueFersa/Fuerte-de-la-Creacion.git
```

Verifica:
```shell
git remote -v
```

## Probar la conexión
```bash
ssh -T git@github.com
```
Debe decir:
```txt
Hi TU_USUARIO! You've successfully authenticated...
```






