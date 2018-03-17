drop database if exists libreria_ugm;
create database if not exists libreria_ugm;
	use libreria_ugm;

create table autores
(

	autor_id int unsigned primary key auto_increment,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	seudonimo varchar(50) unique,
	genero char(1) not null,
	fecha_nacimiento DATE not null,
	pais_origen varchar(50) not null,
	fecha_creada datetime default current_timestamp

);

create table libros(
	libros_id int unsigned primary key auto_increment,
	autor_ID int unsigned not null,
	titulo varchar(50) not null,
	descripcion varchar(250),
	paginas integer unsigned,
	fecha_publicacion date not null,
	fecha_creacion datetime default current_timestamp,
	FOREIGN KEY (autor_ID) REFERENCES autores (autor_id));

insert into autores (nombre, apellido, seudonimo, genero, fecha_nacimiento,pais_origen)
	values ('Edgar Ivan', 'Ocelot R', 'Ivaniux', 'M', '1990-09-01', 'Mexico'),
	       ('Christian Omar', 'Ocelot', 'TK', 'M', '1993-07.13', 'Mexico'),
	       ('Oscar Jair', 'Ocelot', 'Seven','M', '1994-10-14', 'Mexico'),
	       ('Esmeralda', 'Ocelot', 'Esme', 'F', '1997-03-10', 'Mexico'),
	       ('Rosendo Iran', 'Ocelot', 'Chendo', 'M', '2010-01-02','Mexico');

insert into libros (autor_ID, titulo, paginas, fecha_publicacion)
	values (1, 'Base de datos I','250', '2018-02-28'),
	       (1, 'Base de datos II', '250', '2018-02-28'),
	       (2,'Sistemas Operativos I','250', '2018-02-28'),
	       (2,'Programacion Phyton','250', '2018-02-28'),
	       (2,'Redes cisco','250', '2018-02-28');







	select * from autores;
	select * from libros;