create database db_ecommerce;

use db_ecommerce;

create table funci(
id int auto_increment,
nome varchar(30),
quantidade int,
dias int,
valor float,
primary key(id)
);

insert into funci(nome, quantidade, dias,valor)
values("Camisa", 4,3, 50.00);
insert into funci(nome, quantidade, dias,valor)
values("Bota", 5,3, 210.00);
insert into funci(nome, quantidade, dias,valor)
values("Jaqueta", 4,3, 300.00);
insert into funci(nome, quantidade, dias,valor)
values("Meia", 10,3, 20.00);
insert into funci(nome, quantidade, dias,valor)
values("Jeans", 4,3, 150.00);

select * from  funci where valor>200.00;
select * from  funci where valor<200.00;
select * from Funci;

