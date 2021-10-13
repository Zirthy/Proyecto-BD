delimiter $$
create procedure supplier_data
(in _idproveedor VARCHAR(12),
in _nombre VARCHAR(30),
in _telefono INTEGER,
in _correo VARCHAR (40)
)
begin
insert into proveedor (idproveedor, nombre, telefono, correo)
values(_idproveedor, _nombre, _telefono, _correo);
end $$

-- call--
call supplier_data("1", "Yarella Aniamara Ruz Zamudio", 926513820, "ferguge.plaisir12@gmail.com");
call supplier_data("2", "Edinson Osvaldo Ruz Zamudio", 956248258, "edinsonruz12@gmail.com" );
call supplier_data("3", "Ivonne Zamudio Gonzales", 956179468, "ivo.z3@gmail.com");
call supplier_data("4", "Osvaldo Zamudio Zamudio",926510258 , "os.os15@gmail.com");
call supplier_data("5", "Maria Nuñez Nuñez ", 926476205, "m.mn45@gmail.com" );