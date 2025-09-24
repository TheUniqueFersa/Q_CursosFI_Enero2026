


# NDFA-$\epsilon$

From scratch
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


# RE