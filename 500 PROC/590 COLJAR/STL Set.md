---
pertenece a:
  - "[[♠Olympic Mind - PROC]]"
tags:
  - PROC/DS
nota_PROC: Consideraciones
---
# Set
>**Sorted DS**

| Notas relacionadas  |     |
| ------------------- | --- |
| [[iteradores]]      |     |
| [[next() y prev()]] |     |

| Methods        | Action                                                     | Time Complexity |
| -------------- | ---------------------------------------------------------- | --------------- |
| `s.insert(x)`  | Insert the value x into set, do nothing if already present | $O(logn)$       |
| `s.erase(x)`   | erase the value x from set if present                      | $O(logn)$       |
| ``s.count(x)`` | returns 0 if x is not in set and 1 if x is in set          | $O(logn)$       |
| `s.clear()`    | erase all elements                                         | $O(n)$          |
| ``s.size()``   | returns the current size of the set                        | $O(1)$          |

# Acceder al primer elemento
Hay que desreferenciar el iterador
```C++
std::set<int> miSet = {5, 1, 3, 9};
// Acceder al primer elemento
int primero = *miSet.begin();

// Último elemento (mayor)
int ultimo = *miMultiSet.rbegin();
```

# Eliminar elementos (`erase()`)
```C++
miSet.erase(miSet.begin());
//⚠️ **Nota importante en `multiset`**: si el primer elemento aparece varias veces, `erase(begin())` solo elimina **una ocurrencia**.

int valor = 3;
// Borra todas las ocurrencias de '3'
miMultiSet.erase(valor);
```

|Lo que pasas a `erase()`|¿Qué hace?|
|---|---|
|`erase(iterator)`|🔹 Borra **solo** el elemento al que apunta el iterador|
|`erase(valor)`|🔹 Borra **todas** las ocurrencias del valor en el multiset|


