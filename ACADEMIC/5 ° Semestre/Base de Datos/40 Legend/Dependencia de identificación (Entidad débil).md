---
ancestro_directo: "[[4. DISEÑO LÓGICO DE UNA BASE DE DATOS]]"
tipo: Nota Legend
---
>👀 Una entidad es débil únicamente cuando su clave principal es compuesta, es decir, hace uso del concepto de dependencia de identificación.

![[Pasted image 20250905031043.png]]
>📌❗No olvidar 
>- Poner dobles líneas en la **entidad**, en el **rombo** 
>- Usar una línea punteada para subrayar a la clave principal de la entidad hija


Representa una [[Dependencia de existencia]]

>Se verifica del lado de la **entidad hija**

Entidad hija es dependiente de existencia y adicionalmente, se ha detectado que si clave principal no es suficiente para identificarla. Por lo tanto requiere de la clave principal de la entidad padre para identificar a sus instancias de forma única

Clave principal de la entidad hija: formada por clave principal compuesta: ``clavePrincipalA + clavePrincipalB``

>💭 Caso común cuando los valores de la clave principal de la entidad hija se reinician o se repiten por cada valor de la clave principal de la entidad padre

>*Ejemplo*
>El boleto 001 para la función F1, el boleto 002 para la función F1, el boleto 003 para la función F1, el boleto 001 para la función F2, el boleto 002 para la función F2 y así sucesivamente.

>📌 Cuando la hija requiere de una clave principal compuesta se marca con doble línea, su clave principal parcial se subraya con una línea punteada y a la entidad se le llama ***entidad débil***



