create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(255),
preco decimal(5,2),
primary key(id)
);

insert into tb_categoria(categoria, preco) values("doce", 42.00);
insert into tb_categoria(categoria, preco) values("salgada", 60.00);
insert into tb_categoria(categoria, preco) values("1/2", 80.00);

select * from tb_categoria;

create table tb_pizza(
id bigint auto_increment,
nome varchar(255),
descricao varchar(255),
bordaRecheada boolean,
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_pizza(nome, descricao, bordaRecheada, categoria_id) values("Calabresa", "picante", true, 2);
insert into tb_pizza(nome, descricao, bordaRecheada, categoria_id) values("Caipira", "saborosa", true, 2);
insert into tb_pizza(nome, descricao, bordaRecheada, categoria_id) values("Atum", "frutos do mar", false, 2);
insert into tb_pizza(nome, descricao, bordaRecheada, categoria_id) values("Banana Salgada", "agridoce", false, 3);
insert into tb_pizza(nome, descricao, bordaRecheada, categoria_id) values("Romeu e Julieta", "agridoce", false, 3);
insert into tb_pizza(nome, descricao, bordaRecheada, categoria_id) values("Prestigio", "adocicada", false, 1);
insert into tb_pizza(nome, descricao, bordaRecheada, categoria_id) values("Ninho", "adocicada", false, 1);

select * from tb_pizza;

select tb_pizza.nome, tb_categoria.preco from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.preco>45.00;

select tb_pizza.nome, tb_categoria.preco from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.preco between 29 and 60;

select * from tb_pizza where nome like "%c%";

select tb_pizza.nome, tb_pizza.descricao, tb_pizza.bordaRecheada, tb_categoria.categoria, tb_categoria.preco from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

select * from tb_pizza where descricao = "agridoce";

