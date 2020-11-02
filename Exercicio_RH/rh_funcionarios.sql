create table funcionarios(
id int not null auto_increment,
nome varchar(20),
idade int,
cargo varchar(20),
salario double(10,3),
primary key (id)
);

drop table funcionarios;

insert into funcionarios (nome, idade, cargo,salario)
	values
    ("Gabriela", "29","Scrum master", 4.000),
    ("Marcos", "40","Dev ops", 6.000),
    ("Jacqueline", "20","Dev java junior", 4.000),
    ("Luiz", "34","Dev java senior", 18.000),
    ("Clarencio", "17","Estagiário de RG", 1.600);
    
    select * from funcionarios;
    
    select * from funcionarios where salario > 2.000;
    
    select * from funcionarios where salario < 2.000;
