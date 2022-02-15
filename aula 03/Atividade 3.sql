create database db_farmacia_do_bem;
use db_farmacia_do_bem;


create table tb_categoria(
id bigint auto_increment,
tipo varchar(255) not null,
receita varchar(255) not null,
opcao varchar(255) not null,
primary key (id)
);

insert into tb_categoria (tipo,receita,opcao) values("analgezico","sem","generico");
insert into tb_categoria (tipo,receita,opcao) values("antiinflamatório","com ","original");
insert into tb_categoria (tipo,receita,opcao) values("antidepressivo","sem","manipulado");
insert into tb_categoria (tipo,receita,opcao) values("anticoncepcional","sem","original");
insert into tb_categoria (tipo,receita,opcao) values("antivirais","sem","generico");

select * from tb_categoria;


create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
compostos int,
efeito varchar (255),
preco decimal(6,2),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto (nome, compostos, efeito, preco, categoria_id)
values("remedioA", 5, "rapido", 45.00,4);
insert into tb_produto (nome, compostos, efeito, preco, categoria_id)
values("remedioB", 3, "médio", 35.00,3);
insert into tb_produto (nome, compostos, efeito, preco, categoria_id)
values("remedioC", 2, "longo", 55.00,1);
insert into tb_produto (nome, compostos, efeito, preco, categoria_id)
values("remedioD", 3, "médio", 75.00,4);
insert into tb_produto (nome, compostos, efeito, preco, categoria_id)
values("remedioE", 5, "longo", 85.00,1);
insert into tb_produto (nome, compostos, efeito, preco, categoria_id)
values("remedioF", 3, "médio", 95.00,4);
insert into tb_produto (nome, compostos, efeito, preco, categoria_id)
values("remedioG", 2, "rapido", 25.00,3);

select * from tb_produto;

select * from tb_produto where preco>50.00;
select * from tb_produto where preco  between 3.00 and 60.00;
select * from tb_produto where nome like "%B%";
select * from tb_produto inner join tb_categoria
on tb_produto.categoria_id = tb_categoria.id;

select efeito,id from tb_produto;
