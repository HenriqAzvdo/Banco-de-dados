-- criar banco de dados
create database db_generation_game_online;

-- selecionar banco de dado
use db_generation_game_online;

-- criar tabela tb_classe
create table tb_classe (
id bigint auto_increment,
classe varchar (100),
primary key (id)
);

--  Adicionando coluna salário
ALTER table tb_classe add arma varchar (200);

-- Visualizar todos os dados da tabela tb_classe
select * from tb_classe;

-- inserir dados na tabela tb_classe
insert into tb_classe(classe, arma)
value("Guerreiro", "Espada");

insert into tb_classe(classe, arma)
value("Cavaleiro", "Lança");

insert into tb_classe(classe, arma)
value("Arqueiro", "Arco e flecha");

insert into tb_classe(classe, arma)
value("Mago", "Cajado");

insert into tb_classe(classe, arma)
value("Assassino", "Adaga");

insert into tb_classe(classe, arma)
value("Clérico", "Maças");

insert into tb_classe(classe, arma)
value("Paladino", "Escudo e espada de uma mão");

insert into tb_classe(classe, arma)
value("Feiticeiro", "Grimório");

insert into tb_classe(classe, arma)
value("Monge", "Manopla");

insert into tb_classe(classe, arma)
value("Bardo", "Arco e flexa");

-- selecionar banco de dado
use db_generation_game_online;

-- criar tabela tb_classe
create table tb_personagem (
id bigint auto_increment,
nome varchar (200) not null,
idade int,
origem varchar (200),
raca varchar (200),
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classe(id)
);

-- inserir dados na tabela tb_personagem
insert into tb_personagem (nome, idade, origem, raca, classe_id)
values("Ophior", 30, "The mountains of dawn", "humano", 1);

insert into tb_personagem (nome, idade, origem, raca, classe_id)
value("Urhan", 5100, "Caerphy Forest", "Elfo", 2);

insert into tb_personagem (nome, idade, origem, raca, classe_id)
value("Ejamar", 41, "Gisla Bluffs", "humano", 7);

insert into tb_personagem(nome, idade, origem, raca, classe_id)
value("Qrutrix", 35, "Malefic plain", "Goblin", 4);

insert into tb_personagem(nome, idade, origem, raca, classe_id)
value("Ophior", 30, "The mountains of dawn", "Humano", 1);

insert into tb_personagem(nome, idade, origem, raca, classe_id)
value("Oruxeor", 26, "The desert of glants", "Minotauro", 5);

insert into tb_personagem(nome, idade, origem, raca, classe_id)
value("Ushan", 151, "Naledzund", "Elfo", 6);

insert into tb_personagem(nome, idade, origem, raca, classe_id)
value("Ugovras", 30, "Teham", "Anão", 3);

insert into tb_personagem(nome, idade, origem, raca, classe_id)
value("Atosh", 65, "The desert of flames", "humano", 8);

insert into tb_personagem(nome, idade, origem, raca, classe_id)
value("Olozor", 115, "Teham", "Anão", 10);

-- Visualizar todos os dados da tabela tb_classe
select * from tb_personagem;

-- adicionar 2 colunas ataque e defesa
--  Adicionando coluna salário
ALTER table tb_personagem add ataque decimal(10, 2);
ALTER table tb_personagem add defesa decimal(10, 2);

update tb_personagem set ataque = 1000.00, defesa = 5214.00 where id = 1;
update tb_personagem set ataque = 2000.00, defesa = 4000.00 where id = 2;
update tb_personagem set ataque = 900.00, defesa = 540.00 where id = 3;
update tb_personagem set ataque = 5000.00, defesa = 4000.00 where id = 4;
update tb_personagem set ataque = 4500.00, defesa = 4500.00 where id = 5;
update tb_personagem set ataque = 1000.00, defesa = 900.00 where id = 6;
update tb_personagem set ataque = 1000.00, defesa = 5214.00 where id = 7;
update tb_personagem set ataque = 900.00, defesa = 5000.00 where id = 8;
update tb_personagem set ataque = 3500.00, defesa = 4000.00 where id = 9;
update tb_personagem set ataque = 8000.00, defesa = 900.00 where id = 10;

select * from tb_personagem where ataque > 2000.00 order by ataque;

select * from tb_personagem where defesa between 1000.00 and 2000.00 order by defesa;

select * from tb_personagem where nome like "%c%";

select nome, idade, origem, raca, tb_classe.classe
from tb_personagem inner join tb_classe
on tb_classe.id = tb_personagem.classe_id;

select nome, idade, origem, raca, tb_classe.classe, tb_classe.arma
from tb_personagem inner join tb_classe
on tb_classe.id = tb_personagem.classe_id
where classe = ("Guerreiro")
