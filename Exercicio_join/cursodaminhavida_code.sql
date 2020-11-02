use db_cursodaminhavida;

create table tb_curso (
id_curso int not null auto_increment,
id_categoria int,
nome_curso varchar(40),
duracao_curso decimal (5,3),
preco_curso decimal(5,2),
turmas_curso int,
primary key (id_curso),
constraint fk_tb_categoria_id
foreign key (id_categoria)
references tb_categoria (id_categoria)
);

create table tb_categoria(
id_categoria int not null auto_increment,
tipo_curso varchar(30),
modelo varchar(30),
primary key(id_categoria)
);

insert into tb_categoria(tipo_curso,modelo)
values
("Hard skill","Presencial"),
("Hard skill","Online"),
("Soft skill","Presencial"),
("Soft skill","Online");

insert into tb_curso (id_categoria, nome_curso, duracao_curso, preco_curso, turmas_curso)
values
(1, "Java",3.600 , 150.00,2),
(1, "Angular", 3.600, 200.00,2),
(1, "Bootstrap", 1.600, 250.00,2),
(2, "Java", 3.600,130.00,1),
(2, "Angular", 3.600, 180.00,1),
(2, "Boostrap", 3.600, 230.00,1),
(3, "comunicação não violenta", 1.500, 300.00,1),
(4, "comunicação não violenta", 1.500, 300.00,1);

drop table tb_curso;
select * from tb_curso;
select * from tb_categoria;
select * from tb_curso where preco_curso > 50.00;
select * from tb_curso where preco_curso >3.00 and preco_curso <=60.00;
select * from tb_curso where nome_curso like "%jav%";
select * from tb_curso
inner join tb_categoria
on tb_curso.id_curso = tb_categoria.id_categoria; 
select id_categoria,nome_curso  from tb_curso where id_categoria = 2;





