---- insertando una imagen

use empresa
go

insert into catalogo.bitacoraPUESTO(descripcion,foto)
select 'registro con imagen', *
from OpenRowset(Bulk 'D:\MARTHA\UNAM\SEMESTRE 2020-2\BASES DE DATOS\PROYECTO FINAL\yop.jpg', Single_Blob) As ProductosFoto
go


select * from catalogo.bitacoraPUESTO