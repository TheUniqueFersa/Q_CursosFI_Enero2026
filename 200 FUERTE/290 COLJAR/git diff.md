---
tags:
  - PROW/Git
---
# ``git diff``
>`git diff archivo1 archivo2`
>Comando para mostrar las diferencias línea por línea entre `archivo1` y `archivo2`

|Quieres...|Comando|
|---|---|
|Ver cambios locales en un archivo|`git diff archivo.py`|
|Comparar dos archivos distintos|`git diff --no-index archivo1.py archivo2.py`|

## Consideraciones según #ChatGPT 
- **Git sólo compara archivos que ya están bajo control de versiones.**  
    Si esos dos archivos no están _agregados_ a Git (no hiciste `git add` alguna vez), `git diff` no los ve.
    
- **Git espera comparar cambios respecto a su versión "staged" o "committed"**, no simplemente dos archivos cualesquiera del disco.


**Si quieres comparar dos archivos _del sistema de archivos_, no importa si están en Git o no**, debes usar:
```bash
git diff --no-index LUOG.py LUpivoteo.py
```
>El `--no-index` le dice a Git: _"Compáralos aunque no estén en el repositorio."_


# #ChatGPT 
**Y si quieres solo ver si son diferentes sin todo el detalle**, podrías hacer:
```bash
git diff --quiet archivo1 archivo2 && echo "Son iguales" || echo "Son diferentes"
```
