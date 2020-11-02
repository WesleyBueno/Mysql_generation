use db_cidade_das_carnes;

create table tb_produto(
id_produto int not null auto_increment,
nome varchar(30),
peso decimal (4,2),
validade date,
preco decimal (4,2),
id_categoria int,
primary key(id_produto),
 CONSTRAINT fk_tb_categorias_id
 FOREIGN KEY (id_categoria)
 REFERENCES tb_categoria (id_categoria)
);

drop table tb_produto;
drop table tb_categoria;

create table tb_categoria(
id_categoria int not null auto_increment,
tipo_carne varchar(40),
origem varchar(40),
primary key(id_categoria)
);

insert into tb_produto (id_categoria,nome, peso, validade, preco) 
values
(2,"Costela", 40.46,'2020-11-02',60.50),
(1,"Carne de soja", 70.54,'2020-12-10',50.00),
(1,"Tofu", 20.40,'2021-02-03',15.99),
(3,"Frango a passarinho", 35.46,'2020-11-11',25.50),
(2,"linguiça", 15.89,'2020-11-22',10.00),
(2,"Bacon", 7.20,'2020-11-12',3.00),
(2,"Salsicha", 30.00,'2020-12-30',23.50),
(2,"filé Mignon", 40.00,'2020-12-30',70.00);

select * from tb_produto;

insert into tb_categoria (tipo_carne,origem)
values
("Soja","Vegetal"),
("Carne Vermelha","Animal"),
("Carne Branca","Animal");

select * from tb_categoria;

select * from tb_produto where preco > 50.00;
select * from tb_produto where preco >=3.00 and preco <=60.00;
select * from tb_produto where nome like "%co%";

select * from tb_produto
inner join tb_categoria
on tb_produto.id_produto = tb_categoria.id_categoria;

select nome from tb_produto where id_categoria = 1;