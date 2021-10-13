use stock;

-- Selects-- 

-- Seleccionar todos los productos con la letra b--
delimiter $$
create procedure products_with_b (letra CHAR (2))
(
select
*
from 
productos
where
descripcion like letra
); 
$$
-- Call--
call products_with_b ('b%');




-- Fecha de compra entre abril 15 y agosto 17 --

delimiter $$
create procedure select_date_purchasetiket_data
(
)
begin
select * from ordenes_de_compra
where fecha between '2021-04-15' and '2021-08-17'
; 
end $$

call select_date_purchasetiket_data ();

-- Updates --

-- Update Cantidad y stock de la tabla productos--
delimiter $$
create procedure update_products
(
in _idproducto VARCHAR (12),
in _cantidad INTEGER,
in _stock INTEGER
)
begin
update productos set
cantidad =_cantidad,
stock = _stock
where idproducto =_idproducto;
end $$
delimiter 
-- Call-- 
call update_products ( 1, 30, 40);

