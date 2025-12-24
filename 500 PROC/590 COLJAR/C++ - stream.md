---
pertenece a: "[[C++]]"
---
# ``stream``

## ``stringstream``

```c++
#include <iostream>
#include <sstream>
using namespace std;

int main() {
    string datos = "23 45 67";
    istringstream iss(datos);

    int a, b, c;
    iss >> a >> b >> c;

    cout << a << ", " << b << ", " << c << "\n";
}
```

>📌 **Ventaja**: puedes procesar texto que ya tienes en memoria usando el mismo operador `>>` que usarías con `cin`.

### **Diagrama de jerarquía de clases**

```txt
ios_base  ←  ios  ←  istream  ←  istringstream
```

1. **`ios_base`** → Clase base con configuraciones de formateo, banderas, etc.
2. **`ios`** → Hereda de `ios_base` y maneja el estado de flujo (`fail`, `eof`, etc.).
3. **`istream`** → Añade operaciones de entrada (`>>`, `get`, `getline`, etc.).
4. **`istringstream`** → Especializa `istream` para que la entrada provenga de una **cadena de texto**


