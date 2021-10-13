delimiter $$
create procedure product_data
( in _idproducto VARCHAR(30),
in _descripcion VARCHAR(100),
in _cantidad INTEGER,
in _valor_compra INTEGER,
in _valor_venta INTEGER,
in _fecha DATE,
in _stock INTEGER
)
begin
insert into productos (idproducto, descripcion, cantidad, valor_compra, valor_venta, fecha, stock)
values(_idproducto, _descripcion, _cantidad, _valor_compra, _valor_venta, _fecha, _stock);
end $$

-- Call-- 
call product_data ( "1","bebida Energizante", 10, 590, 800,'2021-10-03',20);
call product_data ( "2","papas Fritas", 7, 450, 600,'2021-10-02',10);
call product_data ( "3","helados", 20, 300, 400,'2021-10-03',5);
call product_data ( "4","bebidas alcolhicas", 12, 790, 1099,'2021-10-01',15);
call product_data ( "5","tomate", 10, 300, 400,'2021-10-01',10);
