---
ancestro_directo: "[[T - SQL]]"
scope: Específico
pertenece a:
  - "[[Lg - Bases de Datos]]"
---

```sql
CREATE [OR ALTER] PROCEDURE [<SCHEMA>.]<ProcedureName>
   @<ParameterName1> <data type>,
   @<ParameterName2> <data type>
AS   
BEGIN
   SET NOCOUNT ON; --Para ocultar mensaje (n rows affected ...)
   SELECT <your SELECT statement>;
END;
GO
```
