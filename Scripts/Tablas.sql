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