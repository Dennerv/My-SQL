create database db_rh;
use db_rh;



create table funci(
id int auto_increment,
nome varchar(30),
idade int,
tarefas int,
salario float,
primary key(id)


);

insert into funci(nome, idade,tarefas,salario)
values("Denner", 24, 3,1.500 ) ;
insert into funci(nome, idade,tarefas,salario)
values("Amanda", 47, 3,2.500 ) ;
insert into funci(nome, idade,tarefas,salario)
values("Debora", 22, 3,1.700 ) ;
insert into funci(nome, idade,tarefas,salario)
values("Daiane", 30, 3,2.630 ) ;
insert into funci(nome, idade,tarefas,salario)
values("Mauro", 35, 3,1.400 ) ;

select * from  funci where salario>2.000;
select * from  funci where salario<2.000;
select * from  funci;




