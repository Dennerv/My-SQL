create database db_GameGen;
use db_gameGen;

create table tb_classe(
id bigint auto_increment,
posição varchar(255) not null,
forca float,
defesa float,
primary key (id)
);

insert into tb_classe (posição,forca,defesa) values ("Ataque",30,35);
insert into tb_classe (posição,forca,defesa) values ("Defesa",20,50);
insert into tb_classe (posição,forca,defesa) values ("Agilidade",25,25);


create table tb_personagem(
id bigint auto_increment,
nome varchar(255) not null,
nivel int,
dtcompra date null,
preco decimal(6,2),
skin int,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classe(id)
);

insert into tb_personagem (nome,nivel,dtcompra,preco,skin,classe_id)
values("kay",1,"2022-02-14",30.00,2,1);
insert into tb_personagem (nome,nivel,dtcompra,preco,skin,classe_id)
values("samira",2,"2022-02-14",25.00,3,2);
insert into tb_personagem (nome,nivel,dtcompra,preco,skin,classe_id)
values("Cris",3,"2022-02-14",45.00,5,3);
insert into tb_personagem (nome,nivel,dtcompra,preco,skin,classe_id)
values("Ravena",4,"2022-02-14",65.00,9,1);
insert into tb_personagem (nome,nivel,dtcompra,preco,skin,classe_id)
values("Tokyo",5,"2022-02-14",100.00,5,3);

select *from tb_personagem;




