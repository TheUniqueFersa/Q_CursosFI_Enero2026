---
pertenece a:
  - "[[♠Olympic Mind - PROC]]"
tags:
  - PROC
nota_PROC: Consideraciones
---
# Suma desbordada con ``long long`` (``ll``) e ``int``
Cuando se efectua una operación entre ``int``s y estos valores se asignan a un ``long long``, si el valor del resultado de la operación hecha con las variables `int` operadas exceden el máximo posible[^1] de int, entonces no se asignaran a la variable `ll` con el valor correcto (se desbordará y tendremos valores erróneos) a menos que haya:
- Cast ``(ll) var``
- Se cambie el tipo de `var` a `ll`

[^1]: [[Consideración Rangos de tipos de datos en C++]]