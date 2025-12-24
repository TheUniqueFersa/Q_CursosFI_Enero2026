---
pertenece a:
  - "[[♠Olympic Mind - PROC]]"
  - "[[Temario PROC]]"
tags:
  - PROC/Strings
  - Lg
nota_PROC: Teoría
---
# Strings
>*Se tratan las Strings desde la forma en que lo hace C++*

## Formas de Instanciar o declarar

Se puede construir una string con iteradores y con otra string:
```C++
std::string subcadena(original.begin() + 6, original.begin() + 11);
```

## **Operaciones**
### Insertar
#### `append()`
```C++
string s = "HOLA";
s.append(" Mundo");
// Imprime "HOLA Mundo"
```
#### `insert()
```C++
std::string s = "Hla";
s.insert(1, "o");  // Inserta "o" en la posición 1 → Resultado: "Hola"
```

### Eliminar
#### `erase()`
```C++
std::string s = "Hola";
s.erase(1, 2);  // Borra desde el índice 1, 2 letras → Resultado: "Ha"
```

Si no se pone segundo argumento, se borra desde el caracter del primer argumento *hasta el final*
```C++
std::string s = "Hola Mundo";
s.erase(5);  // Borra desde la posición 5 hasta el final → Resultado: "Hola"
```

# Métodos asociados
- [ ] Poner Dataview query para insertar todas las notas que tengan #PROC/Strings y #Method 