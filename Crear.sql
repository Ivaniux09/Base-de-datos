--Practica 01

Autor_ID
Nombre
Apellido
Genero
Fecha de Nacimiento
Pais de Origen

--Normalizar 

Autor_ID int
Nombre varchar(50)
Apellido varchar(50)
Genero char(1)
Fecha_Nac date --Para fechas 
Pais_Origen varchar(50)

--crear tabla

create table autores
 ( 
Autor_ID int,
Nombre varchar(50),
Apellido varchar(50),
Genero char(1),
Fecha_Nac date,
Pais_Origen varchar(50)
 );
