>A fecha de [[2025-09-22]], solo la sección de 
>- Installation
>- Quickstart
>- Regular Languages}
>están disponibles

| Tipo[^1] | nombre      | descripción |
| -------- | ----------- | ----------- |
|          | `save_file` |             |

- [[CREATING MACHINES]]

# Diseccionando `Expresiones Regulares, reducciones y minimazación.ipynb`
>Todo lo siguiente requeriría que se inserte en un *jupyter notebook*

Primero instalamos la biblioteca ``maquinas``[^2]
```shell
# Execute if not installed
!pip install maquinas
```
Luego importamos todo lo necesario de biblioteca
```python
from maquinas.regular.RE import RegularExpression
from maquinas.regular.reductions import *
from maquinas.regular.minimization import *
```

# Declaración de AFD
```python
# Creating automata finito
ceros_uno=DFA(Q=['q_0','q_1'],
                         sigma=['0','1'],
                         q_0='q_0',
                         A=['q_1'],
                         delta=[
                            (('q_0','0'),'q_0'),
                            (('q_0','1'),'q_1')
                         ])
ceros_uno=dfa2ndfa_e(ceros_uno)
ceros_uno.graph()
```


```python
uno_ceros=DFA(Q=['q_0','q_1'],
                         sigma=['0','1'],
                         q_0='q_0',
                         A=['q_1'],
                         delta=[
                            (('q_0','1'),'q_1'),
                            (('q_1','0'),'q_1')
                         ])
uno_ceros=dfa2ndfa_e(uno_ceros)
uno_ceros.graph()
```



```python
union=ceros_uno.union(uno_ceros)
union.graph()
```


```python
#CONCAT
concat=ceros_uno.concat(uno_ceros)
concat.graph()
```



```python
# KLEENE (?)
kleene=ceros_uno.kleene()
kleene.graph()
```



```python
# ER -> AFND-e :
#TABULAR
reg = RegularExpression('a*(ba*ba*)*+a*')
reg=reg.ndfa_e()
reg.table()
```




- [ ] ==Cómo verificamos las entradas validas de una ER?== [🍅:: 1] ^5s1d

	

---
- [ ] END PRESENTATION #AEM 

- [ ] PUT THE NECESARY CODE FOR AUTOMATONS -> a b
	- [ ] Prove that it actually transforms into NDFA-e correctly
	- [ ] Put the collab link into the presentation

>🕐 9:20

- [ ] Correct hmk DB

---
# Qué es lo que hace Emir?

- Define por constructor su Expresión regular y lo transforma a AFND-$\epsilon$
	- Guarda el lenguaje


- Crea una simulación
	- La ejecuta

- Grafica el lenguaje

- Imprime el resumen con `print_sumary()` (método)

- Lo transforma a AFND
	- Lo guarda
	- lo grafica
	- lo simula

- 

- [ ] Qué es una simulación


# El proceso del autómata










[^1]: Método: m
	Función: f

[^2]: Requiere de pip, osea de nodejs
