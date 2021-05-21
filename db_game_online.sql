create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
categoria varchar(255),
ataque int,
defesa int,
primary key(id)
);

insert into tb_classe(categoria, ataque, defesa) values("Premium", 5000, 5000);
insert into tb_classe(categoria, ataque, defesa) values("Gold", 3000, 3000);
insert into tb_classe(categoria, ataque, defesa) values("Iron", 1000, 1000);
insert into tb_classe(categoria, ataque, defesa) values("Regular", 500, 500);

select * from tb_classe;

create table tb_personagem(
id bigint auto_increment,
nome varchar(255),
habilidade varchar(255),
fraqueza varchar(255),
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_classe(id)
);

insert into tb_personagem(nome, habilidade, fraqueza, categoria_id) values("Buba", "terrestre", "água", 2);
insert into tb_personagem(nome, habilidade, fraqueza, categoria_id) values("Fler", "aquático", "fogo", 1);
insert into tb_personagem(nome, habilidade, fraqueza, categoria_id) values("Flufi", "aéreo", "terra", 4);
insert into tb_personagem(nome, habilidade, fraqueza, categoria_id) values("Plomo", "fogo", "água", 3);
insert into tb_personagem(nome, habilidade, fraqueza, categoria_id) values("Axci", "aéreo", "água", 2);
insert into tb_personagem(nome, habilidade, fraqueza, categoria_id) values("Juphi", "terrestre", "fogo", 3);

select * from tb_personagem;

select tb_personagem.nome, tb_classe.ataque from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.categoria_id where tb_classe.ataque>2000;

select tb_personagem.nome, tb_classe.ataque from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.categoria_id where tb_classe.ataque between 100 and 2000;

select * from tb_personagem where nome like "%c%";

select tb_personagem.nome, tb_personagem.habilidade, tb_personagem.fraqueza, tb_classe.ataque, tb_classe.defesa from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.categoria_id;

select * from tb_personagem where habilidade = "terrestre";

