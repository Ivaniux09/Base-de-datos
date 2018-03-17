drop database if exists libreria_ugm;
create database if not exists libreria_ugm;
	use libreria_ugm;

	create table autores
(

autor_id int,
nombre varchar(50) not null,
apellido varchar(50) not null,
seudonimo varchar(50) unique,
genero char(1) not null,
fecha_nacimiento DATE not null,
pais_origen varchar(50) not null,
fecha_creada datetime default current_timestamp

);

insert into autores (autor_id, nombre, apellido, seudonimo, genero, fecha_nacimiento,pais_origen)
	values (1, 'Edgar Ivan', 'Ocelot R', 'Ivaniux', 'M', '1990-09-01', 'Mexico'),
	       (2, 'Christian Omar', 'Ocelot', 'TK', 'M', '1993-07.13', 'Mexico');

	select * from autores;