create database db_escola;
use db_escola;

create table estudantes(
id int auto_increment,
nome varchar(30),
idade int,
turma int,
peso float,
primary key(id)
);

insert into estudantes(nome, idade, turma, peso)
values("Gabriela Araújo",2,1,25.47);
insert into estudantes(nome, idade, turma, peso)
values("Nicolas Migueal",5,2,45.68);
insert into estudantes(nome, idade, turma, peso)
values("Natalia Mateus",2,2,26.44);
insert into estudantes(nome, idade, turma, peso)
values("Mateus Elias",5,2,55.47);
insert into estudantes(nome, idade, turma, peso)
values("Ana Flavia ",2,3,23.87);
insert into estudantes(nome, idade, turma, peso)
values("Moises Silva",7,3,53.54);
insert into estudantes(nome, idade, turma, peso)
values("Nicole Queiroz",5,3,50.32);
insert into estudantes(nome, idade, turma, peso)
values("Evandro Vasconcelos",7,1,60.25);

select * from estudantes where turma=3;
select * from estudantes where turma=2;
select * from estudantes where turma=1;

select * from estudantes where idade=2;
select * from estudantes where idade=5;
select * from estudantes where idade=7;

Select * from estudantes where peso>35.00;
select * from estudantes where peso<35.00;