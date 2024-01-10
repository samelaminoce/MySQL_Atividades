alter table tb_produtos add categoria_id bigint;
alter table tb_produtos add constraint fk_produtos_categorias foreign key (categoria_id) references tb_categorias(id);
