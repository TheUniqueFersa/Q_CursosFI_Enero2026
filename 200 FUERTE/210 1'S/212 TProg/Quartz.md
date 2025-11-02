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
# Set up
1. [Clonar repo de quartz4](https://quartz.jzhao.xyz/#-get-started)
```bash
git clone https://github.com/jackyzha0/quartz.git
cd quartz
npm i
npx quartz create
```
1. Crear repositorio, no agregar nada
2. [Añadir url mediante ``git remote add``](https://quartz.jzhao.xyz/setting-up-your-GitHub-repository)
```bash
# list all the repositories that are tracked
git remote -v
 
# if the origin doesn't match your own repository, set your repository as the origin
git remote set-url origin REMOTE-URL
 
# if you don't have upstream as a remote, add it so updates work
git remote add upstream https://github.com/jackyzha0/quartz.git
```
1. Ejecutar por primera vez:
```bash
npx quartz sync --no-pull
```

# Comandos comúnes
Sincronizar con repo remoto (y pages)
```shell
npx quartz sync
```


# Para desplegar
## En GitHub Pages
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
