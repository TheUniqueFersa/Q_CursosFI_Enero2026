---
pertenece a:
tags:
  - Linux/Manjaro
---
# Instalación de postgresql
## 0. Actualización de paquetes para evitar versiones antiguas no compatibles
```shell
sudo pacman -Syu
```

## 1. Instalar PostgreSQL
```shell
sudo pacman -S postgresql
```
Verificar versión:
```shell
psql --version
```

## 2. Inicializar la base de datos
```shell
sudo -iu postgres
initdb --locale es_MX.UTF-8 -D /var/lib/postgres/data
exit
```

## 3. Arrancar y habilitar el servicio
```shell
sudo systemctl start postgresql
sudo systemctl enable postgresql
```

## Verificar
```shell
sudo systemctl status postgresql
```


## Entrar a Postgresql (usuario postgres)
```shell
sudo -iu postgres
psql
# Se abre una linea de comando sql
```






