use db_gameGen;
                                       -- RELAÇÃO ENTRE TABELAS 
select * from tb_personagem;
select * from tb_classe;

select * from  tb_personagem where classe_id=1; -- força maior que 20
select * from tb_personagem where classe_id=2 and 3;  -- força entre entre 10 e 20 
select * from tb_personagem where nome like "%A%"; -- COM A LETRA DA PALAVRA QUE BUSCO 

select * from tb_personagem inner join tb_classe on tb_personagem.classe_id = tb_classe.id;




