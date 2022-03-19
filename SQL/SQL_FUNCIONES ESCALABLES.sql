declare @a int 
declare @b int 
set @a=(select SUM(existencia) 'cantidad' FROM productos
where nombre='Gallo')

set @b=(select SUM(existencia) 'cantidad' FROM productos
where nombre='cabro')

print (@a+@b)