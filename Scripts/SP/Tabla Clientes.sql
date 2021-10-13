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

-- Calls--
call client_data ("Íñigo", 697129986, "iñigo_alas@gmail.com");
call client_data ("Ovidio",646926987, "ovidio.briones@gmail.com" );
call client_data ("Lázaro",690879509, "lázaro.bas@gmail.com");
call client_data ("Ramón",649173103,"ramón.bassol@gmail.com");
call client_data ("Zoraida",685105532,"zoraida.cepeda@gmail.com");
call client_data ( "Carola",699909258, "carola.cervantes@gmail.com");