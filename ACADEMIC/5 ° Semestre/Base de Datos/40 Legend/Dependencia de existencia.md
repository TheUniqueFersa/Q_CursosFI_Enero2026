---
fecha: 2025-08-26
pertenece a:
  - "[[♠A-T Bases de Datos]]"
scope: Específico
ancestro_directo: "[[4. DISEÑO LÓGICO DE UNA BASE DE DATOS]]"
---

>📌 Se verifica en la **tabla hija**
>> Quien recibe la `FK` se convierte en hija

Una entidad hija será **dependiente de existencia** cuando cada una de sus instancias requieran de la existencia de al menos una instancia de la entidad padre.
>Una entidad será independiente de existencia cuando sus instancias no dependen de la existencia de las instancias de la entidad padre con la que se relacionan.

>*Ejemplo*
>- Un cliente genera al menos una orden
>- Una orden de compra la solicita un solo cliente

![[Pasted image 20250905003815.png]]
**Notar** el valor de ``cardinalidad`` 1 del lado izquierdo indica dependencia de existencia, mientras que 0 indica independencia de existencia[^2]

La tabla hija puedes ser **dependiente** o **independiente** de la tabla padre

- Cuando la [[cardinalidad]] mínima es 0 en la tabla padre
La tabla hija es ***independiente de existencia***, por lo tanto la FK[^1] es nula.

- Cuando la [[cardinalidad]] mínima en la tabla padre es 1 es **dependiente** de existencia, por lo tanto la **FK** es `NOT NULL`





[^1]: [[Foreign Key]]
[^2]: Puede no existir un registro y no una relación
