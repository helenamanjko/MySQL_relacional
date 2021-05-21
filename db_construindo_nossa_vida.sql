create database db_construindo_nossa_vida;

use db_construindo_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(255),
preco decimal(5,2),
primary key(id)
);

insert into tb_categoria(categoria, preco) values("bloco", 50.00);
insert into tb_categoria(categoria, preco) values("grãos", 30.00);
insert into tb_categoria(categoria, preco) values("telhas", 70.00);
insert into tb_categoria(categoria, preco) values("encanamento", 25.00);

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar(255),
descricao varchar(255),
troca boolean,
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto(nome, descricao, troca, categoria_id) values("tijolo", "frágil", true, 1);
insert into tb_produto(nome, descricao, troca, categoria_id) values("telha plástico", "resistente", true, 3);
insert into tb_produto(nome, troca, categoria_id) values("areia", false, 2);
insert into tb_produto(nome, troca, categoria_id) values("cimento", false, 2);
insert into tb_produto(nome, descricao, troca, categoria_id) values("cano", "frágil", true, 4);


select * from tb_produto;

select tb_produto.nome, tb_categoria.preco from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.preco>50.00;

select tb_produto.nome, tb_categoria.preco from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.preco between 3 and 60;

select * from tb_produto where nome like "%c%";

select tb_produto.nome, tb_produto.descricao, tb_produto.troca, tb_categoria.categoria, tb_categoria.preco from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto where descricao = "resistente";

