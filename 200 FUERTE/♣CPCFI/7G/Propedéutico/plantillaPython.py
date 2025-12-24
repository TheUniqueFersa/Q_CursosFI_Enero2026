import sys

# Para leer una sola variable
a = int(input()) # (Ejemplo)

# Para leer múltiples variables
def get_ints_var(): return map(int, sys.stdin.readline().strip().split())

x,y,z = get_ints_var() # (Ejemplo)
 
# Para leer un arreglo de golpe
def get_ints_arr(): return list(map(int, sys.stdin.readline().strip().split()))

arr = get_ints_arr() # (Ejemplo)

# Para leer cadenas
def get_string(): return sys.stdin.readline().strip()
 
s = get_string() # (Ejemplo)