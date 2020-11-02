use db_construindo_a_nossa_vida;

create table tb_produto(
id_produto int not null auto_increment,
nome varchar(30),
cor varchar(30),
preco decimal(5,2),
quantidade int,
id_categoria int,
primary key(id_produto),
constraint fk_itb_categoria_id
foreign key (id_categoria)
references tb_categoria (id_categoria)
);
drop table tb_produto;
create table tb_categoria(
id_categoria int null auto_increment,
tipo varchar(30),
aplicacao varchar(30),
primary key(id_categoria)
);

insert into tb_categoria (tipo, aplicacao)
values
("Acrilico","Madeira"),
("Látex PVA","Paredes"),
("PVA","Decorações");

insert into tb_produto (id_categoria, nome,cor, preco, quantidade)
values
(1,"Verniz","Translucido",20.00,100),
(1,"Lata de tinta","Mogno",20.00,100),
(2,"Tambor de tinta","Branco gelo",80.00,30),
(2,"Tambor de tinta","Azul celeste",80.00,30),
(2,"Tambor de tinta","Amarelo ambar",80.00,30),
(2,"Tambor de tinta","Verde musgo",80.00,30),
(3,"Tinta spray","Dourado",14.00,30),
(3,"Tinta spray","Preto espacial",14.00,30);

select * from tb_categoria;
select * from tb_produto;
select * from tb_produto where preco > 50.00;
select * from tb_produto where preco >3.00 and preco <=60.00;
select * from tb_produto where nome like "%ci%";
select * from tb_produto
inner join tb_categoria
on tb_produto.id_produto = tb_categoria.id_categoria; 

select id_categoria,nome, cor from tb_produto where id_categoria = 2;

