---
pertenece a:
  - "[[♣ T - OBSIDIAN]]"
  - "[[Conceptos Obsidian]]"
---
# ***CALLOUTS***
>***🔶Recolectado🔶*** con #ChatGPT 

En **Obsidian**, los _callouts_ son bloques especiales de texto que se usan para resaltar información dentro de una nota.  
Funcionan como cajas visuales (tipo “citas destacadas”) que pueden tener un ícono, un color y un estilo diferente según el tipo de callout que uses.

Se escriben usando una sintaxis muy simple en Markdown:

```markdown
> [!NOTE]  
> Este es un callout de tipo **nota**.
```

## Estructura

- `>` → indica que es un bloque de cita (como en Markdown normal).
    
- `[!NOTE]` → define el tipo de callout.
    
- El contenido debajo del bloque será parte del callout, mientras lo mantengas indentado con `>`.
    

## Tipos comunes de callouts

Algunos de los más usados en Obsidian (y soportados de forma nativa) son:

- `[!NOTE]` → Nota.
    
- `[!TIP]` → Consejo.
    
- `[!INFO]` → Información.
    
- `[!WARNING]` → Advertencia.
    
- `[!DANGER]` → Peligro.
    
- `[!QUOTE]` → Cita.
    
- `[!EXAMPLE]` → Ejemplo.
    

Cada uno tiene un color y un ícono distinto, y puedes personalizarlos con CSS si quieres.

## Ejemplo completo

```markdown
> [!WARNING] Cuidado
> Esto es un aviso importante.  
> 
> Puedes poner varias líneas aquí.  

> [!TIP] Truco
> Recuerda que puedes **plegar** los callouts con el triangulito a la izquierda.
```

Esto en Obsidian se verá como cajas resaltadas, similares a bloques de notas o advertencias en documentación técnica.

# Tipos de Callouts

En Obsidian los **callouts** vienen de la librería _Admonitions_ de Docusaurus, y tienen muchos tipos. Todos se escriben con la sintaxis:

```markdown
> [!TIP]
> Texto aquí
```

Aquí tienes una lista de los **tipos de callouts soportados nativamente** en Obsidian (desde la versión 0.15 en adelante):

---

## 📒 Notas y referencias

- `[!NOTE]` → Nota.
    
- `[!ABSTRACT]`, `[!SUMMARY]`, `[!Tldr]` → Resumen.
    
- `[!INFO]` → Información.
    
- `[!TODO]` → Tareas pendientes.
    

## 💡 Ideas y consejos

- `[!TIP]`, `[!HINT]`, `[!IMPORTANT]` → Consejos / información destacada.
    

## ⚠️ Alertas

- `[!WARNING]`, `[!CAUTION]`, `[!ATTENTION]` → Advertencia.
    
- `[!FAIL]`, `[!MISSING]` → Fallo o algo faltante.
    
- `[!DANGER]`, `[!ERROR]` → Error / peligro.
    

## 📚 Ejemplos y extras

- `[!EXAMPLE]` → Ejemplo.
    
- `[!QUOTE]` → Cita textual.
    

---

🔹 Además:

- Puedes usar el mismo bloque para varias líneas mientras mantengas el `>` al inicio.
    
- Puedes personalizarlos con CSS si quieres cambiar colores, íconos o bordes.
    
- Si quieres que sean **plegables**, basta con añadir un signo `+` o `-` después del tipo:
    

```markdown
> [!NOTE]- Esto es una nota plegable
> Texto dentro de la nota
```


# Sintesis de tipos
> [!ABSTRACT] Abstract
> También puedes usar `[!ABSTRACT]`, `[!SUMMARY]` o `[!TLDR]`.

> [!INFO] Info
> Para resaltar información importante.

> [!TODO] Todo
> Para tareas pendientes o cosas por hacer.

> [!IMPORTANT] Important
> Para información relevante o destacada.

> [!TIP] Tip
> También funciona como `[!TIP]` o `[!HINT]`.

> [!SUCCESS] Success
> También se puede usar `[!SUCCESS] (check)` o `[!SUCCESS] (done)`.

> [!QUESTION] Question
> También válido `[!QUESTION] (help)` o `[!QUESTION] (faq)`.

> [!WARNING] Warning
> También se puede usar `[!WARNING] (caution)` o `[!WARNING] (attention)`.

> [!FAILURE] Failure
> También válido `[!FAILURE] (fail)` o `[!FAILURE] (missing)`.

> [!DANGER] Danger
> También válido `[!DANGER] (error)`.

> [!BUG] Bug
> Para anotar errores o problemas encontrados.

> [!EXAMPLE] Example
> Para mostrar ejemplos.

> [!QUOTE] Quote
> También válido `[!QUOTE] (cite)` para citas textuales.

> [!TIP]+ Consejo plegable
> Este callout empieza cerrado.
