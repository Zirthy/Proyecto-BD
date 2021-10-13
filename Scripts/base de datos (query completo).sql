create database stock default character set utf8mb4 collate utf8mb4_0900_ai_ci;
use stock;

-- 	Tablas -- 
create table minimarket_drak(
idempresa VARCHAR(12),
nombre VARCHAR(100),
giro VARCHAR(30),
razon VARCHAR(40)
);
alter table minimarket_drak add primary key (idempresa);

create table cliente(
nombre VARCHAR(100),
telefono INTEGER,
correo VARCHAR (40)
);
alter table cliente add primary key (nombre);

create table trabajador(
idtrabajador VARCHAR(12),
nombre VARCHAR(100)
);
alter table trabajador add primary key (idtrabajador);

create table productos(
idproducto VARCHAR(30),
descripcion VARCHAR(100),
cantidad INTEGER,
valor_compra INTEGER,
valor_venta INTEGER,
fecha DATE,
stock INTEGER
);
alter table productos add primary key (idproducto);

create table proveedor(
idproveedor VARCHAR(12),
nombre VARCHAR(30),
telefono INTEGER,
correo VARCHAR (40)
);
alter table proveedor add primary key (idproveedor);

create table detalles_compra(
idcompra VARCHAR (12),
idorden VARCHAR (12),
idproducto VARCHAR (30),
precio INTEGER,
cantidad INTEGER
);
alter table detalles_compra add primary key (idcompra);
alter table detalles_compra add foreign key (idorden) references ordenes_de_compra (idorden);
alter table detalles_compra add foreign key (idproducto) references productos (idproducto);

create table ordenes_de_compra(
idorden VARCHAR(20),
idempresa VARCHAR(12),
idproveedor VARCHAR(12),
fecha DATE
);
alter table ordenes_de_compra add primary key (idorden);
alter table ordenes_de_compra add foreign key (idempresa) references minimarket_drak (idempresa);
alter table ordenes_de_compra add foreign key (idproveedor) references proveedor (idproveedor);

-- Procedimientos almacenados -- 

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




-- calls --

-- empresa-- 
call enter_data("12", "Minimarket Drak", "venta de abarrotes", "Drak S.A");

-- Cliente--
call client_data ("Íñigo", 697129986, "iñigo_alas@gmail.com");
call client_data ("Ovidio",646926987, "ovidio.briones@gmail.com" );
call client_data ("Lázaro",690879509, "lázaro.bas@gmail.com");
call client_data ("Ramón",649173103,"ramón.bassol@gmail.com");
call client_data ("Zoraida",685105532,"zoraida.cepeda@gmail.com");
call client_data ( "Carola",699909258, "carola.cervantes@gmail.com");

-- Trabajador--
call employee_data ("321","Sofia Alexandra Olivares Sepúlveda");
call employee_data ( "322","Martin Alejandro ramírez Fuenzalida");
call employee_data ( "323","Felipe Sebastián Martinez Martinez");
call employee_data ( "324","Juan Cristobal Sepulveda Gonzalez");
call employee_data ( "325","Sergio Luciano Gutierrez Castro");

-- Productos --
call product_data ( "1","bebida Energizante", 10, 590, 800,'2021-10-03',20);
call product_data ( "2","papas Fritas", 7, 450, 600,'2021-10-02',10);
call product_data ( "3","helados", 20, 300, 400,'2021-10-03',5);
call product_data ( "4","bebidas alcolhicas", 12, 790, 1099,'2021-10-01',15);
call product_data ( "5","tomate", 10, 300, 400,'2021-10-01',10);

-- Proveedor--
call supplier_data("1", "Yarella Aniamara Ruz Zamudio", 926513820, "ferguge.plaisir12@gmail.com");
call supplier_data("2", "Edinson Osvaldo Ruz Zamudio", 956248258, "edinsonruz12@gmail.com" );
call supplier_data("3", "Ivonne Zamudio Gonzales", 956179468, "ivo.z3@gmail.com");
call supplier_data("4", "Osvaldo Zamudio Zamudio",926510258 , "os.os15@gmail.com");
call supplier_data("5", "Maria Nuñez Nuñez ", 926476205, "m.mn45@gmail.com" );

-- Ticket de compra--
call purchasetiket_data ("1","12","4","2021-05-14");
call purchasetiket_data ("2","12","1","2021-04-24");
call purchasetiket_data ("3","12","2", "2021-06-17");
call purchasetiket_data ("4","12","3", "2021-08-30");
call purchasetiket_data ("5","12","5", "2021-12-28");

-- Detalles de compra --
call tiket_details ("1","1","1", 5900, 40);
call tiket_details ("2","2","2", 4500, 35);
call tiket_details ("3","3","3", 4000, 50);
call tiket_details ("4","4","4", 10100, 99);
call tiket_details ("5","5","5", 4000, 100);