
create database db_pizzaria_legal;
use db_pizzaria_legal;


create table tb_categoria(
id bigint auto_increment,
tipo varchar(255) not null,
tamanho varchar(255) not null,
opcao varchar(255) not null,
primary key (id)
);

insert into tb_categoria (tipo,tamanho,opcao) values("pizza","pequena","salgada");
insert into tb_categoria (tipo,tamanho,opcao) values("pizza","média","salgada");
insert into tb_categoria (tipo,tamanho,opcao) values("pizza","grande","salgada");
insert into tb_categoria (tipo,tamanho,opcao) values("pizza","pequena","doce");
insert into tb_categoria (tipo,tamanho,opcao) values("pizza","média","doce");
insert into tb_categoria (tipo,tamanho,opcao) values("pizza","grande","doce");
insert into tb_categoria (tipo,tamanho,opcao) values("esfiha","padrão","salgada");
insert into tb_categoria (tipo,tamanho,opcao) values("esfiha","padrão","doce");

select * from tb_categoria;
create table tb_pizza(
id bigint auto_increment,
sabor varchar(255) not null,
ingredientes int,
espera varchar (255),
preco decimal(6,2),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_pizza (sabor, ingredientes, espera, preco, categoria_id)
values("Brasieleira", 5, "30 minútos", 45.00,4);
insert into tb_pizza (sabor, ingredientes, espera, preco, categoria_id)
values("Bacon", 2, "30 minútos", 7.00,1);
insert into tb_pizza (sabor, ingredientes, espera, preco, categoria_id)
values("Brigadeiro", 1, "30 minútos", 7.00,5);
insert into tb_pizza (sabor, ingredientes, espera, preco, categoria_id)
values("Tradicional", 4, "30 minútos", 55.00,3);
insert into tb_pizza (sabor, ingredientes, espera, preco, categoria_id)
values("Vegetariana", 6, "30 minútos", 70.00,4);
insert into tb_pizza (sabor, ingredientes, espera, preco, categoria_id)
values("Quatro Queijos", 4, "30 minútos", 40.00,2);

select * from tb_pizza;

select * from tb_pizza where preco>45.00;
select * from tb_pizza where preco  between 29 and 60;
select * from tb_pizza where sabor like "%c%";

select * from tb_pizza inner join tb_categoria
on tb_pizza.categoria_id = tb_categoria.id;

select * from tb_pizza where tamanho;  
select sum(preco) as ValorT from tb_pizza;


