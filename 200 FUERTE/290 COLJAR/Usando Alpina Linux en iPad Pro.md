---
pertenece a:
  - "[[-(°)EH - iPad Professional]]"
---
# ***Usando Alpina Linux en iPad Pro***


## Instalación de programas

### GCC
```shell
# Instalar gcc
apk add gcc
# Ejercutar c
gcc hola.c -o hola

# Instalar g++
apk add g++
# Ejecutar
g++ hola.cpp -o hola

# Saber la ruta real de gcc
which gcc
```

Se dice que también se debe instalar `musl-dev`, pero yo no lo requerí