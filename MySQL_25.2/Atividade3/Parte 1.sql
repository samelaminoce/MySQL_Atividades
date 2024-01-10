create database db_farmacia_bem_estar;
use db_farmacia_bem_estar;

create table tb_categorias(
id bigint auto_increment,
tipo varchar(255),
descricao varchar(255),
primary key (id)
);