---
pertenece a:
  - "[[♣T - Programador Junior]]"
links_url:
  - https://theuniquefersa.github.io/Fuerte-Universal/
---
# ***Acciones para desplegar notas del Fuerte*** 
En `FUERTE-DE-LA-CREACIÓN`, hacer cambios, committear y subir
En `FUERTE-UNIVERSAL`
1. Hacer pull del ``subtree`` desde la rama ``v4``
```shell
git subtree pull --prefix=content notes main --squash
```
Cambios sincronizados: *ok*
2. Sincronizar repo Universal con Pages
```shell
npx quartz sync
```
3. ***¡¡Listo!!***
# ***Quartz***
## Set up
1. [Clonar repo de quartz4](https://quartz.jzhao.xyz/#-get-started)
```bash
git clone https://github.com/jackyzha0/quartz.git
cd quartz
npm i
npx quartz create
```
1. Crear repositorio, no agregar nada
2. [Añadir url mediante ``git remote add``](https://quartz.jzhao.xyz/setting-up-your-GitHub-repository):
```bash
# list all the repositories that are tracked
git remote -v
 
# REMOTE-URL es el repo de donde se sacara la informacion (Repo B en CASO GENERAL)
git remote set-url origin REMOTE-URL
 
# if you don't have upstream as a remote, add it so updates work
git remote add upstream https://github.com/jackyzha0/quartz.git
```
3. Ejecutar por primera vez:
```bash
npx quartz sync --no-pull
```
# Caso General
Se tienen 2 repositorios: $A$ de donde quieres sacar la información y $B$ donde tendrá Quartz y donde quieres que se ponga la información sacada y selecta de $A$. ($A\rightarrow B$)
1. Crea un repositorio vacío en GitHub, el cuál será $B$
2. Efectua localmente los pasos en [[#Set up]]
3. En $B$ Borrar el contenido de content y #Pendiente: Una vez eliminado (guarda ==index.md== en otro lado) efectuar:
4. Añadir repo $A$
```bash
git remote add <repoA> <link-repoA>
```
5. Añadir `subtree`
(`<repoA>` será el nombre identificador de tu repo A)
`Rama-en-A`: será la rama de donde quieres sacar la información el el repo $A$
```bash
# Ahora esto añadirá el subtree en content
git subtree add --prefix=content <repoA> <Rama-en-A> --squash
# ESto hará pull a la rama
git subtree pull --prefix=content <repoA> <Rama-en-A> --squash
```
6. Devolver el `index.md` a `/content`
7. En este punto ya podría efectuar [[#En local]]
8. Si se quiere desplegar, efectuar: [[#Configuración para desplegar en `GitHub Pages`]]
9. Ahora ya se podrá efectuar [[#Despliegue en `pages`]] para sincronizar con la *página web*
# Comandos comúnes
## Renderizado
### Despliegue en `pages`
Sincronizar con repo remoto (y pages)
```shell
npx quartz sync
```

### En local
Crear archivos en local
```bash
npx quartz build --serve
```

# Configuración para desplegar en `GitHub Pages`
1. Copiar el yml:
```yml
name: Deploy Quartz site to GitHub Pages
 
on:
  push:
    branches:
      - v4
 
permissions:
  contents: read
  pages: write
  id-token: write
 
concurrency:
  group: "pages"
  cancel-in-progress: false
 
jobs:
  build:
    runs-on: ubuntu-22.04
    steps:
      - uses: actions/checkout@v4
        with:
          fetch-depth: 0 # Fetch all history for git info
      - uses: actions/setup-node@v4
        with:
          node-version: 22
      - name: Install Dependencies
        run: npm ci
      - name: Build Quartz
        run: npx quartz build
      - name: Upload artifact
        uses: actions/upload-pages-artifact@v3
        with:
          path: public
 
  deploy:
    needs: build
    environment:
      name: github-pages
      url: ${{ steps.deployment.outputs.page_url }}
    runs-on: ubuntu-latest
    steps:
      - name: Deploy to GitHub Pages
        id: deployment
        uses: actions/deploy-pages@v4
```

en `/.github/workflows/deploy.yml`
>Notar la importancia de que se use la rama `v4`

2. Habilitar en GitHub: ``Repo>Settings>Source``: ``GitHub Actions``
3. Commit con `npx quartz sync`

# ***INTERCONN***
## Conexiones
Notas secundarias
Notas que han de considerarse para la revisión de la actual, para tener contexto
## Recursos

| Recurso                                                |
| ------------------------------------------------------ |
| [Página oficial de Quartz4](https://quartz.jzhao.xyz/) |

Aspectos visibles de las notas secundarias
MATEEXTRA relacionado


## Referencias

| Referencias                                                                                     | Status |
| ----------------------------------------------------------------------------------------------- | ------ |
| [Video que explica la configuración inicial](https://www.youtube.com/watch?v=6s6DT1yN4dw&t=34s) | ✅      |
| [Página oficial de Quartz4](https://quartz.jzhao.xyz/)                                          | ✅      |
### Conversaciones con mi tío que me ayudaron

| Conversasiones                                                                                                                     | Ayudó? |
| ---------------------------------------------------------------------------------------------------------------------------------- | ------ |
| [Corregir problema de `unrelated-histories` y `'content' never added`](https://chatgpt.com/c/691a0154-7294-832e-8f83-66374af862a1) | ✅      |
|                                                                                                                                    |        |
