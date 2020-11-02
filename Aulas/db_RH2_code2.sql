CREATE DATABASE db_RH2;
use db_RH2;
CREATE TABLE cargo (
	id_cargo int primary key not null auto_increment,
    nome_cargo varchar(30),
    salario_cargo decimal(5,3)
    );
    
CREATE TABLE tb_funcionario (
	id_funcionario int primary key not null auto_increment,
    nome_funcionario varchar(30) not null,
    idade_funcionario varchar(2),
    cargo_funcionario varchar(45),
    salario_funcionario decimal(5,3),
	id_cargo integer,
    CONSTRAINT fk_cargo FOREIGN KEY (id_cargo) REFERENCES cargo (id_cargo)
    );
    
INSERT INTO cargo (nome_cargo, salario_cargo) 
VALUES
("Dev junior",4.000),
("Dev senior",8.000),
("Dev pleno",10.000),
("Scrum master",16.000),
("estagio",1.600);

insert into tb_funcionario (nome_funcionario,idade_funcionario,cargo_funcionario,salario_funcionario)
VALUES
("Emily", 29,"Scrum master",16.000),
("Tibor", 40,"Scrum master",16.000),
("Rurique", 27,"Dev junior",4.000),
("Satir", 27,"Dev junior",4.000),
("João", 29,"Dev junior",4.000),
("Anastacia", 30,"Dev senior",8.000),
("Vinicius", 23,"Dev senior",8.000),
("Clarencio", 24,"Dev senior",8.000),
("Florencia", 24,"Dev senior",8.000),
("Suzana", 29,"Dev pleno",10.000),
("Carlos", 43,"Dev pleno",10.000),
("Alex", 30,"Dev pleno",10.000),
("Beatriz", 17,"Estagio",1.600),
("Adamastor", 19,"Estagio",1.600),
("Luiz", 20,"Estagio",1.600);

select * from tb_funcionario;
select * from cargo;

select * from tb_funcionario where salario_funcionario >2.000;
select * from tb_funcionario where salario_funcionario <=2.000 and salario_funcionario >=1.000;
select * from tb_funcionario where nome_funcionario like 'C%';
 