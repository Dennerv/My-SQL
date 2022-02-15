create database db_cidade_das_frutas ;
use db_cidade_das_frutas;


create table tb_categoria(
id bigint auto_increment,
tipo varchar(255) not null,
tamanho varchar(255) not null,
opcao varchar(255) not null,
primary key (id)
);

insert into tb_categoria (tipo,tamanho,opcao) values("citricas","pequeba","kilo");
insert into tb_categoria (tipo,tamanho,opcao) values("acidas ","pequena ","unidade");
insert into tb_categoria (tipo,tamanho,opcao) values("doce","grande","unidade");
insert into tb_categoria (tipo,tamanho,opcao) values("doce","media","unidade");

select * from tb_categoria;


create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
quantidade_minima int,
cor varchar (255),
preco decimal(6,2),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto (nome, quantidade_minima, cor, preco, categoria_id)
values("melancia", 1, "vermelha e verde", 10.00,3);
insert into tb_produto (nome, quantidade_minima, cor, preco, categoria_id)
values("maracuja", 3, "amarelo", 6.00,1);
insert into tb_produto (nome, quantidade_minima, cor, preco, categoria_id)
values("melao", 2, "amarelo", 7.00,4);
insert into tb_produto (nome, quantidade_minima, cor, preco, categoria_id)
values("manga", 3, "amarelo e verde", 9.00,4);
insert into tb_produto (nome, quantidade_minima, cor, preco, categoria_id)
values("limao", 10, "verde", 4.00,2);
insert into tb_produto (nome, quantidade_minima, cor, preco, categoria_id)
values("melancia", 1, "vermelha e verde", 10.00,3);
insert into tb_produto (nome, quantidade_minima, cor, preco, categoria_id)
values("jaca", 1, "verde", 15.00,3);


select * from tb_produto;

select * from tb_produto where preco>50.00;
select * from tb_produto where preco  between 3.00 and 60.00;
select * from tb_produto where nome like "%C%";
select cor from tb_produto;
select * from tb_produto inner join tb_categoria
on tb_produto.categoria_id = tb_categoria.id;

