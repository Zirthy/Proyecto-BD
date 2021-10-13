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

-- Calls--
call employee_data ("321","Sofia Alexandra Olivares Sepúlveda");
call employee_data ( "322","Martin Alejandro ramírez Fuenzalida");
call employee_data ( "323","Felipe Sebastián Martinez Martinez");
call employee_data ( "324","Juan Cristobal Sepulveda Gonzalez");
call employee_data ( "325","Sergio Luciano Gutierrez Castro");