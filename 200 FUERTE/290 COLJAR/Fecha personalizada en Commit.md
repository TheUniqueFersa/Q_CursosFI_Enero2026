---
pertenece a:
  - "[[Git - GitHub]]"
tags:
  - GitHub/Lg
  - PROW/Git
tipo: Tutorial
---
# ***Fecha personalizada en commit***

>❗Desde **Git Bash**:

```bash
GIT_AUTHOR_DATE="YYYY-MM-DD HH:MM:SS" GIT_COMMITTER_DATE="YYYY-MM-DD HH:MM:SS" git commit -m "Mensaje del commit"
```

>ℹ Usar dicho comando ☝ solo modifica la fecha para el comando especificado, es decir, solo para el commit que se está realizando


# *Modificar* commit existente
En caso de que ya se haya hecho ya el commit, aún se puede modificar su fecha, usando:
```bash
GIT_AUTHOR_DATE="YYYY-MM-DD HH:MM:SS" GIT_COMMITTER_DATE="YYYY-MM-DD HH:MM:SS" git commit --amend --no-edit
```

>🗣 Esto abrirá el commit más reciente y permitirá modificar solo la fecha sin cambiar el mensaje. Después, puedes hacer `push` nuevamente.

Se debe forzar el push al repositorio remoto, dado que has reescrito el historial:
```bash
git push origin nombre-de-la-rama --force
```

