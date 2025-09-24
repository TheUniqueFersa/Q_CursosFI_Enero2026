---
pertenece a:
  - "[[FORMULARIUM - Biblioteca MAQUINAS]]"
---
![[Pasted image 20250923111418.png]]
>(Hopcroft)

# DFA -> RE 


# RE -> NDFA-$\epsilon$
```python
reg = RegularExpression('a*(ba*ba*)*+a*')
reg=reg.ndfa_e()
reg.table()
```
