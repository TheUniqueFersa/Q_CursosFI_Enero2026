---
pertenece a:
  - "[[FORMULARIUM - Biblioteca MAQUINAS]]"
---
# ***CREATING MACHINES***
## DFA
En [[REGULAR MACHINES]] se define:

```python
from maquinas.regular.dfa import DeterministicFiniteAutomaton as DFA
```
por lo que se pueden usar los constructores de la siguiente forma (ejemplo):


```python
m=DFA(Q=['q_0','q_1'],
                     sigma=['a','b'],
                     q_0='q_0',
                     A=['q_0'],
                     delta=[
                        (('q_0','a'),'q_0'),
                        (('q_1','b'),'q_0'),
                        (('q_1','a'),'q_1'),
                        (('q_0','b'),'q_1'),
                     ])
m.print_summary()
```



## NDFA

## NDFA-$\epsilon$

*From scratch*

```python
from maquinas.regular.ndfa_e import NonDeterministicFiniteAutomaton_epsilon as NDFA_e

m=NDFA_e(Q=['q_0','q_1'],
                     sigma=['a','b'],
                     q_0='q_0',
                     A=['q_0'],
                     delta=[
                        (('q_0','ε'),['q_0']),
                        (('q_0','a'),['q_0']),
                        (('q_1','b'),['q_0']),
                        (('q_1','a'),['q_1']),
                        (('q_0','b'),['q_1']),
                     ])
m.print_summary()
```


# Regular Expression

```python
reg = RegularExpression("a*(ba*ba*)*+a*");
reg = reg.ndfa_e() # lo convierte a ndfa_e
```


