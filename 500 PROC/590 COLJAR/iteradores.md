---
pertenece a:
  - "[[♠Olympic Mind - PROC]]"
tags:
  - PROC
nota_PROC: Consideraciones
---
# Iteradores

|Función|Devuelve nuevo iterador|Modifica el iterador original|Requiere tipo mínimo de iterador|¿Sirve para retroceder?|Uso común|
|---|---|---|---|---|---|
|`std::next(it, n)`|✅ Sí|❌ No|ForwardIterator|❌ No (solo avanza)|Avanzar sin modificar `it`|
|`std::prev(it, n)`|✅ Sí|❌ No|BidirectionalIterator|✅ Sí|Retroceder sin modificar `it`|
|`std::advance(it, n)`|❌ No (void)|✅ Sí|depende de `n` (negativo → Bidirectional)|✅ Sí (si el iterador lo permite)|Avanzar o retroceder modificando `it`|
|`std::distance(a, b)`|✅ Sí (retorna `int`)|❌ No|InputIterator|✅ Sí|Saber cuántos pasos hay entre dos iteradores|

![[next() y prev()]]
