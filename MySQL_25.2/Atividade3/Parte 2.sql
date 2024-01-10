create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal (6,2),
setor varchar(255),
estoque int,
primary key (id)
);
