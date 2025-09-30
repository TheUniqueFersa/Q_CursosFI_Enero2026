---
pertenece a:
  - "[[Lg - Bases de Datos]]"
ancestro_directo: "[[4. DISEÑO LÓGICO DE UNA BASE DE DATOS]]"
---
A diferencia del concepto de [[Dependencia de existencia]], la ***participación*** de una entidad en una relación es un concepto propio de la **entidad padre**

![[Pasted image 20250905030100.png]]


Indica si cada una de las instancias de la *entidad padre están obligadas* o no a relacionarse con *al menos una instancia* de la **entidad hija**


==2 tipos==
- **Participación obligatoria**: las instancias de la entidad padre deben *asociarse al menos* con una instancia de la *hija*
>👀 El digito 1 en `(1,*)` indica ==participación obligatoria==


- **Participación opcional**: las instancias de la entidad padre pueden o no asociarse con las instancias de la entidad hija
>👀 El dígito 0 en `(0,<>)` indica una ==participación opcional==