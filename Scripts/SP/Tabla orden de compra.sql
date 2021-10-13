-- Orden de compra --

delimiter $$
create procedure purchasetiket_data
(
in _idorden VARCHAR(20),
in _idempresa VARCHAR(12),
in _idproveedor VARCHAR(12),
in _fecha DATE
)
begin
insert into ordenes_de_compra (idorden, idempresa, idproveedor, fecha)
values(_idorden, _idempresa, _idproveedor, _fecha);
end $$

-- call --
-- Ticket de compra--
call purchasetiket_data ("1","12","4","2021-05-14");
call purchasetiket_data ("2","12","1","2021-04-24");
call purchasetiket_data ("3","12","2", "2021-06-17");
call purchasetiket_data ("4","12","3", "2021-08-30");
call purchasetiket_data ("5","12","5", "2021-12-28");
