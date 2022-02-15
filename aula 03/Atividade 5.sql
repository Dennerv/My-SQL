create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;


create table tb_categoria(
id bigint auto_increment,
tipo varchar(255) not null,
tamanho varchar(255) not null,
opcao varchar(255) not null,
primary key (id)
);

insert into tb_categoria (tipo,tamanho,opcao) values("ferro","medio","novo");
insert into tb_categoria (tipo,tamanho,opcao) values("madeira","medio ","usado");
insert into tb_categoria (tipo,tamanho,opcao) values("massa seca","pequeno","usado");
insert into tb_categoria (tipo,tamanho,opcao) values("ferro","pequena","unidade");

select * from tb_categoria;


create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
quantidade_minima int,
setor varchar (255),
preco decimal(6,2),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto (nome, quantidade_minima, setor, preco, categoria_id)
values("carrinho de mão", 1, "intens", 100.00,4);
insert into tb_produto (nome, quantidade_minima, setor, preco, categoria_id)
values("bloco", 100, "construção", 6.00,3);
insert into tb_produto (nome, quantidade_minima, setor, preco, categoria_id)
values("bianco", 3, "construção", 7.00,3);
insert into tb_produto (nome, quantidade_minima, setor, preco, categoria_id)
values("ferro", 5, "avulso", 35.00,1);
insert into tb_produto (nome, quantidade_minima, setor, preco, categoria_id)
values("tabua", 10, "avulso", 10.00,2);
insert into tb_produto (nome, quantidade_minima, setor, preco, categoria_id)
values("pia banheiro", 1, "casa", 150.00,1);
insert into tb_produto (nome, quantidade_minima, setor, preco, categoria_id)
values("armario", 1, "casa", 110.00,2);


select * from tb_produto;

select * from tb_produto where preco>50.00;
select * from tb_produto where preco  between 3.00 and 60.00;
select * from tb_produto where nome like "%C%";
select setor from tb_produto;
select * from tb_produto inner join tb_categoria
on tb_produto.categoria_id = tb_categoria.id;

