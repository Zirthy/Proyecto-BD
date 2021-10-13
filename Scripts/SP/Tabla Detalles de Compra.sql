-- Detalles de compra --
delimiter $$
create procedure tiket_details
(
in _idcompra VARCHAR(12),
in _idorden VARCHAR (12),
in _idproducto VARCHAR (30),
in _precio INTEGER,
in _cantidad INTEGER
)
begin
insert into detalles_compra (idcompra, idorden, idproducto, precio, cantidad)
values (_idcompra, _idorden, _idproducto, _precio, _cantidad);
end $$

-- Detalles de compra --
call tiket_details ("1","1","1", 5900, 40);
call tiket_details ("2","2","2", 4500, 35);
call tiket_details ("3","3","3", 4000, 50);
call tiket_details ("4","4","4", 10100, 99);
call tiket_details ("5","5","5", 4000, 100);