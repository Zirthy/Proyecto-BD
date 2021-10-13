delimiter $$
create procedure enter_data
(
in _idempresa VARCHAR(12),
in _nombre VARCHAR(100),
in _giro VARCHAR(30),
in _razon VARCHAR(40)
) 
begin 
insert into minimarket_drak (idempresa, nombre, giro, razon)
values (_idempresa, _nombre, _giro, _razon);
end $$


-- Calls -- 
call enter_data("12", "Minimarket Drak", "venta de abarrotes", "Drak S.A");