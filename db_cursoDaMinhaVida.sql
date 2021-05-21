create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(255),
preco decimal(5,2),
anos int,
primary key(id)
);

insert into tb_categoria(categoria, preco, anos) values("TI", 175.00, 2);
insert into tb_categoria(categoria, preco, anos) values("Maquiagem", 80.00, 1);
insert into tb_categoria(categoria, preco, anos) values("Manicure", 45.00, 1);
insert into tb_categoria(categoria, preco, anos) values("Línguas", 300.00, 4);

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar(255),
professor varchar(255),
certificacao boolean,
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto(nome, professor, certificacao, categoria_id) values("Segurança do Sistema", "Milton", true, 1);
insert into tb_produto(nome, professor, certificacao, categoria_id) values("Design de Unhas", "Anabelle", false, 3);
insert into tb_produto(nome, professor, certificacao, categoria_id) values("Aprendendo com as Sombas", "Clara", false, 2);
insert into tb_produto(nome, professor, certificacao, categoria_id) values("Ingles", "Emilia", true, 4);
insert into tb_produto(nome, professor, certificacao, categoria_id) values("Casamento", "Clara", true, 2);
insert into tb_produto(nome, professor, certificacao, categoria_id) values("Frameworks", "Ana", true, 1);


select * from tb_produto;

select tb_produto.nome, tb_categoria.preco from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.preco>50.00;

select tb_produto.nome, tb_categoria.preco from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.preco between 3 and 60;

select * from tb_produto where nome like "%j%";

select tb_produto.nome, tb_produto.professor, tb_produto.certificacao, tb_categoria.categoria, tb_categoria.preco from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto where professor = "Clara";

