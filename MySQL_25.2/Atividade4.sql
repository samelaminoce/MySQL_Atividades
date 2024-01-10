CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE  tb_categoria(

id bigint auto_increment,
classes varchar(50),
descricao varchar(50),
primary key(id)

);

CREATE TABLE  tb_produtos(
id bigint auto_increment,
nome varchar(50) not null,
preco decimal(10,2),
dosagem decimal(10,2),
indicacao enum("todos"),
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

INSERT INTO tb_categoria (classes, descricao) 
VALUES ('Aves', 'Provenientes De Aves.');

INSERT INTO tb_categoria (classes, descricao) 
VALUES ('Carne Suína', 'Provenientes De Procos.');

INSERT INTO tb_categoria (classes, descricao) 
VALUES ('Carne Bovina', 'Proveniente De Gado');

INSERT INTO tb_categoria (classes, descricao) 
VALUES ('Embutidos', 'Proveniente De Carne Processada.');



INSERT INTO tb_produtos (nome, preco, dosagem, indicacao, categoria_id) 
VALUES ('Bife de Alcatra', 25.99, 100, 'todos', 1);

INSERT INTO tb_produtos (nome, preco, dosagem, indicacao, categoria_id) 
VALUES ('Linguiça Toscana', 10.50, 200, 'todos', 3);

INSERT INTO tb_produtos (nome, preco, dosagem, indicacao, categoria_id) 
VALUES ('Peito de Peru', 15.50, 300, 'todos', 4);

INSERT INTO tb_produtos (nome, preco, dosagem, indicacao, categoria_id) 
VALUES ('Costela Suína', 18.45, 350, 'todos', 2);

INSERT INTO tb_produtos (nome, preco, dosagem, indicacao, categoria_id) 
VALUES ('Salsicha', 8.45, 120, 'todos', 4);

INSERT INTO tb_produtos (nome, preco, dosagem, indicacao, categoria_id) 
VALUES ('Picanha', 29.99, 200, 'todos', 1);

INSERT INTO tb_produtos (nome, preco, dosagem, indicacao, categoria_id) 
VALUES ('Presunto', 10.50, 150, 'todos', 3);

INSERT INTO tb_produtos (nome, preco, dosagem, indicacao, categoria_id) 
VALUES ('Peito de Frango', 13.85, 190, 'todos', 4);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco >50.00;

SELECT * FROM tb_produtos where preco between 50.00 and 150.00;

SELECT * FROM tb_produtos WHERE nome Like "%C%"; 

SELECT nome,preco,dosagem,indicacao 
from tb_produtos
inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

SELECT tb_produtos.*, tb_categoria.classes AS categoria, tb_categoria.descricao
FROM tb_produtos
INNER JOIN tb_categoria ON tb_produtos.categoria_id = tb_categoria.id
WHERE tb_categoria.classes = 'Aves';