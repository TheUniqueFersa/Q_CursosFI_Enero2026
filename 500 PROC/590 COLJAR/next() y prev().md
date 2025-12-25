---
pertenece a:
  - "[[♠Olympic Mind - PROC]]"
  - "[[iteradores]]"
tags:
  - PROC
  - Method
nota_PROC: Consideraciones
---
# ``next()`` y ``prev()``
>Ambos de ``\<iterator\>``

| Llamada            | Movimiento |
| ------------------ | ---------- |
| `std::next(it)`    | +1         |
| `std::next(it, n)` | +n         |
| `std::prev(it)`    | –1         |
| `std::prev(it, n)` | –n         |
>*it*: iterador
>**n**: número de pasos a recorrer
## Funcionamiento en DS
|Contenedor|Tipo de iterador|`std::next` / `std::prev` funcionan?|
|---|---|---|
|`std::vector`|Random Access Iterator|Sí|
|`std::deque`|Random Access Iterator|Sí|
|`std::list`|Bidirectional Iterator|Sí|
|`std::forward_list`|Forward Iterator|**`std::next()` sí, pero `std::prev()` NO** (solo forward)|
|`std::set`, `std::multiset`|Bidirectional Iterator|Sí|
|`std::map`, `std::multimap`|Bidirectional Iterator|Sí|
|`std::unordered_set`|Forward Iterator|**`std::next()` sí, `std::prev()` NO**|
|`std::unordered_map`|Forward Iterator|**`std::next()` sí, `std::prev()` NO**|
