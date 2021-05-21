create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(255),
preco decimal(5,2),
primary key(id)
);

insert into tb_categoria(categoria, preco) values("Remédio Respiratório", 33.00);
insert into tb_categoria(categoria, preco) values("Remédio Pressão", 75.00);
insert into tb_categoria(categoria, preco) values("Remédio Infantil", 25.00);
insert into tb_categoria(categoria, preco) values("Saúde Sexual", 19.00);

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar(255),
descricao varchar(255),
farmPopular boolean,
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto(nome, descricao, farmPopular, categoria_id) values("Inalador", "Resp", true, 1);
insert into tb_produto(nome, descricao, farmPopular, categoria_id) values("Purificador de Ar", "Resp", false, 1);
insert into tb_produto(nome, descricao, farmPopular, categoria_id) values("Anti-hipertensivo", "Pressão", true, 2);
insert into tb_produto(nome, descricao, farmPopular, categoria_id) values("Xarope", "Inf", true, 3);
insert into tb_produto(nome, descricao, farmPopular, categoria_id) values("Camisinha", "S.S", true, 4);
insert into tb_produto(nome, descricao, farmPopular, categoria_id) values("Medidor De Pressao Arterial", "Pressão", false, 2);
insert into tb_produto(nome, descricao, farmPopular, categoria_id) values("Lenço Umedecido", "Inf", false, 3);


select * from tb_produto;

select tb_produto.nome, tb_categoria.preco from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.preco>50.00;

select tb_produto.nome, tb_categoria.preco from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.preco between 3 and 60;

select * from tb_produto where nome like "%b%";

select tb_produto.nome, tb_produto.descricao, tb_produto.farmPopular, tb_categoria.categoria, tb_categoria.preco from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto where descricao = "Inf";

