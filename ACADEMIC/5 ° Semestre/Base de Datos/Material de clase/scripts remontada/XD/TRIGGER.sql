
-- INSERT UPDATE

-- 2 opciones, o lo haces instead para evitar que se inserte si el pago excede,
--o lo haces sencillo que solo acutalice, tomando en cuenta que el pago es válido
-- hagamos primero el segundo XD
CREATE OR ALTER TRIGGER SEGURO.TGPAGO
ON SEGURO.PAGO
INSTEAD OF INSERT, UPDATE
AS
BEGIN
  --CASO INSERT
  IF EXISTS (SELECT * FROM INSERTED) AND NOT EXISTS (SELECT * FROM DELETED)
    BEGIN

    END
  -- CASO DELETEING
  ELSE IF NOT EXISTS (SELECT * FROM INSERTED) AND EXISTS (SELECT * FROM DELETED)
    BEGIN

    END
  --Caso UPDATING
  ELSE 
    BEGIN

    END
  
  declare @sumaPagos INT




END;
