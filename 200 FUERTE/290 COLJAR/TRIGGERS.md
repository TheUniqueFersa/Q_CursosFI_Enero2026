---
pertenece a:
  - "[[Lg - Bases de Datos]]"
scope: Específico
ancestro_directo: "[[T - SQL]]"
---

```SQL
CREATE [ OR ALTER ] TRIGGER [ schema_name . ] trigger_name
ON { table | view }
[ WITH <dml_trigger_option> [ , ...n ] ] --no visto en SEM5
{ FOR | AFTER | INSTEAD OF }
{ [ INSERT ] [ , ] [ UPDATE ] [ , ] [ DELETE ] }
[ WITH APPEND ] --no visto en SEM5
[ NOT FOR REPLICATION ] --no visto en SEM5
AS 

{ sql_statement  [ ; ] [ , ...n ] | EXTERNAL NAME <method_specifier [ ; ] > } --no visto en SEM5

<dml_trigger_option> ::=
    [ ENCRYPTION ]
    [ EXECUTE AS Clause ]

<method_specifier> ::=
    assembly_name.class_name.method_name
```
