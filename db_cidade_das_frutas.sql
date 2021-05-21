create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(255),
preco decimal(5,2),
primary key(id)
);

insert into tb_categoria(categoria, preco) values("frutas", 8.00);
insert into tb_categoria(categoria, preco) values("vegetais", 6.00);
insert into tb_categoria(categoria, preco) values("produtos importados", 70.00);
insert into tb_categoria(categoria, preco) values("produtos fabricação própria", 25.00);

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar(255),
descricao varchar(255),
aVencer boolean,
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto(nome, descricao, aVencer, categoria_id) values("tomate", "fru", true, 1);
insert into tb_produto(nome, descricao, aVencer, categoria_id) values("abobrinha", "veg", false, 2);
insert into tb_produto(nome, descricao, aVencer, categoria_id) values("cenoura", "veg", true, 2);
insert into tb_produto(nome, descricao, aVencer, categoria_id) values("maçã", "fruta", true, 1);
insert into tb_produto(nome, descricao, aVencer, categoria_id) values("geléia de morango", "geléia", false, 4);
insert into tb_produto(nome, descricao, aVencer, categoria_id) values("pão sovado", "padaria", true, 4);
insert into tb_produto(nome, descricao, aVencer, categoria_id) values("tempero raro da Índia", "tempero", false, 3);

select * from tb_produto;

select tb_produto.nome, tb_categoria.preco from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.preco>50.00;

select tb_produto.nome, tb_categoria.preco from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.preco between 3 and 60;

select * from tb_produto where nome like "%c%";

select tb_produto.nome, tb_produto.descricao, tb_produto.aVencer, tb_categoria.categoria, tb_categoria.preco from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto where descricao = "tempero";

