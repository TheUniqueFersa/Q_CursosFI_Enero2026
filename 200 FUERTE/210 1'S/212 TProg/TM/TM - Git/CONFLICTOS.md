---
pertenece a:
  - "[[EH - TM - GitHub]]"
---
## Aceptar Incoming en todos los archivos en ==Conflicto==
> [!danger] Consideración Importante
> Esto sobreescribe todo.
> No hy un undo fácil después
> Hay que asegurarnos que queremos perder los cambios locales, pues estamos acceptando el **incoming**

Varía si se está haciendo merge o rebase
### `merge`
SI git dice algo así como:
```text
CONFLICT (content): Merge conflict in archivo.txt
```

Y queremos aceptar siempre lo que viene del otro branch (Incoming):
```shell
git checkout --theirs .
```

Posteriormente:
```shell
git add .
git commit
```

- Reemplaza **todos los archivos en conflicto**
- Usa la versión **incoming**
- Aplica a **todos los archivos** de una vez

### `rebase`
```shell
git checkout --theirs .
git add .
git rebase --continue
```


> [!note] 👀 Términos
> | Interfaz gráfica | Git        |
> | ---------------- | ---------- |
> | Accept Incoming  | `--theirs` |
> | Accept Current   | `--ours`   |
> 
