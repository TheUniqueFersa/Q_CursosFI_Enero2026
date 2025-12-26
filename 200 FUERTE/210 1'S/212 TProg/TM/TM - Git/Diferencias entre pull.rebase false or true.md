---
pertenece a:
  - "[[Git - GitHub]]"
tags:
  - Git
---
# `git config pull.rebase false` → **MERGE (comportamiento clásico)**
Hace:
```shell
git fetch
git merge
```

✔ Mantiene el historial completo  
✔ Aparece un **commit extra de merge**  
❌ Historial más “ruidoso”
# `git config pull.rebase true` → **REBASE**
 **¿Qué hace?**

Reescribe tus commits locales **encima** de los remotos.

`git fetch`
`git rebase`

#### Características:

✔ Historial **limpio y lineal**  
✔ Muy usado en proyectos profesionales  
❌ Reescribe historial (cuidado si ya publicaste esos commits)



# `git config pull.ff only` → **FAST-FORWARD ONLY**

#### ¿Qué hace?
Solo permite el pull si **NO hay divergencia**.

❌ Si hay commits en ambos lados → **ERROR**

#### Características:

✔ Cero merges  
✔ Cero rebase  
✔ Máxima seguridad  
❌ Muy estricto


### ¿Qué deberíamos hacer?
Depende del estilo de trabajo implementado

🔹 **Para proyectos personales / académicos**

`git config --global pull.rebase true`

🔹 **Para trabajo en equipo tradicional**

`git config --global pull.rebase false`

🔹 **Si quieres máxima disciplina**

`git config --global pull.ff only`

> Puedes quitar `--global` si lo quieres solo para un repo.

