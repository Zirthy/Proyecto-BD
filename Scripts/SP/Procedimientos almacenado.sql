-- Minimarket --
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

-- Clientes--

delimiter $$
create procedure client_data
(
in _nombre VARCHAR(100),
in _telefono INTEGER,
in _correo VARCHAR (40)
)
begin
insert into cliente (nombre, telefono, correo)
values (_nombre, _telefono, _correo);
end $$

-- Trabajador--
delimiter $$
create procedure employee_data
(
in _idtrabajador VARCHAR(12),
in _nombre VARCHAR(100)
)
begin 
insert into trabajador (idtrabajador, nombre)
values (_idtrabajador, _nombre);
end $$

-- Productos --

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

-- Proveedores --

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