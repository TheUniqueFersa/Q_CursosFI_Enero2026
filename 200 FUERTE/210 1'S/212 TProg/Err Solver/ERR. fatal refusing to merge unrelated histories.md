---
pertenece a:
  - "[[Git - GitHub]]"
---
# ERR. fatal refusing to merge unrelated histories
Aparece cuando intentas hacer un `git pull` pero **las historias del repositorio local y el remoto no tienen un ancestro común**. Esto suele pasar, por ejemplo:

- Cuando inicializaste un repo con `git init` y después intentaste conectarlo a uno remoto que ya tenía commits.
- O cuando el remoto fue creado con un _README.md_, licencia, etc., y tu repo local estaba vacío.

---

# 🔧 Soluciones:
## 1. Permitir la fusión de historias no relacionadas

Si quieres unir ambos historiales:
```bash
git pull origin main --allow-unrelated-histories
```

>_(cambia `main` por `master` u otra rama si tu remoto usa otra)_.  
Esto te pedirá resolver conflictos si hay archivos distintos.

---

## 2. Forzar a que tu repo use el remoto

Si no quieres conservar lo que tenías localmente y prefieres que tu repo sea **igual al remoto**:

```bash
git fetch origin
git reset --hard origin/main

```

>⚠️ Esto elimina tus commits locales.

## 3. Subir tu versión ignorando el remoto

Si lo contrario: quieres que el remoto adopte tu repo local (sobrescribir lo que hay en GitHub, GitLab, etc.):

```bash
git push origin main --force
```

>⚠️ Esto reemplaza la historia remota con la tuya