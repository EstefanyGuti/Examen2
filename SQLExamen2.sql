create database examen2

create table encuestas
(
 numeroencuesta int identity (1,1) primary key,
 nombreparticipante varchar (50) not null,
 apellido varchar(50) not null,
 fechanacimiento date default '1993-01-01',
 edad  int not null,
 correoelectronico varchar  (50) unique,
 carropropio varchar (2) check (carropropio in ('Si','No'))
)

--Modificar datos
update encuestas set correoelectronico ='juanmarti@gmail.com' where  numeroencuesta=4
select * from encuestas

insert into encuestas values ('Pablo','Martinez','1993-12-31','20','pablomar01@hotmail.com','No');
select*from encuestas
