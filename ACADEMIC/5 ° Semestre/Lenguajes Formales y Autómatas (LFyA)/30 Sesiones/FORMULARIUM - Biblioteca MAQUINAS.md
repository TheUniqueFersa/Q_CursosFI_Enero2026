>A fecha de [[2025-09-22]], solo la sección de 
>- Installation
>- Quickstart
>- Regular Languages}
>están disponibles

- QUICKSTART
	- [[CREATING MACHINES]]
- [REGULAR LANGUAGES](https://maquinas.readthedocs.io/en/stable/rl.html#regular-languages)
	- [[REDUCTIONS]]
	- [[MINIMIZATION]]
- [[SIMULATION]]
## Métodos comúnes y útiles

| Tipo[^1] | Ubicación                              | nombre            | descripción                                                                                                                                                                                                                                  |
| -------- | -------------------------------------- | ----------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `m`      |                                        | `save_file`       | Guarda el autómata en formato txt (lo pid)                                                                                                                                                                                                   |
| `m`      |                                        | `print_summary()` | Imprime el resumen del autómata                                                                                                                                                                                                              |
| `m`      |                                        | `table()`         | Imprime la tabla de estados (transiciones)                                                                                                                                                                                                   |
| `m`      |                                        | `graph()`         | Imprime el autómata en su forma de grafo                                                                                                                                                                                                     |
| `m`      |                                        | `save_img()`      | guarda una imagen del autómata                                                                                                                                                                                                               |
| `m`      | Cada autómata en **REGULAR LANGUAGES** | `accepts(w)`      | `true` o `false` si acepta o no una cadena<br>Particularmente útil si le autómata fue construido definiéndolo con constructor y no se consideraron todas las transiciones. Osea es útil cuando la simulación falla por falta de transiciones |


# Diseccionando `Expresiones Regulares, reducciones y minimazación.ipynb` [:LiExternalLink:](https://colab.research.google.com/drive/1DWocXqt7gilyyaA87a6TLFjxqWqCWyzP#scrollTo=FO5y4ZcLj7u2)
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



- [x] ==Cómo verificamos las entradas validas de una ER?== [🍅:: 1] ✅ 2025-09-26 ^5s1d
>Con el método `accepts(w)` o con una [[SIMULATION]]


---
- [x] FINISH PRESENTATION #AEM ✅ 2025-09-26

- [ ] PUT THE NECESARY CODE FOR AUTOMATONS -> a b
	- [ ] Prove that it actually transforms into NDFA-e correctly
	- [ ] Put the collab link into the presentation

---
# Qué es lo que hace Emir?

- Define por constructor su Expresión regular y lo transforma a AFND-$\epsilon$
	- **Guarda** el lenguaje


- Crea una **simulación**
	- La ejecuta

- **Grafica** el lenguaje -> `.graph()`

- Imprime el *resumen* con ->  `.print_summary()`
- Aunque también podría imprimir la *tabla* -> `.table()`

- Lo transforma a AFND
	- Lo guarda
	- lo grafica
	- lo simula

- [x] Qué es una [[SIMULATION]] ✅ 2025-09-26
>Algo bien chido que te permite ver paso a paso la evaluación de una cadena específica por ejemplo
>Cuando se declara en un DFA se puede controlar paso a paso la simulación, en otro tipo no y es más bien una imagen fija

- [x] Cómo compruebo que las minimizaciónes a autómata es correcto ✅ 2025-09-23
>Con ele ejercicio hecho en clase XD

- [ ] Cómo construyo un AFND-e?

# El proceso del autómata






[^1]: Método: m
	Función: f

[^2]: Requiere de pip, osea de nodejs
