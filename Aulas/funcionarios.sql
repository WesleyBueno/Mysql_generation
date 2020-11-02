CREATE DATABASE Ford;
DROP DATABASE Ford;
show databases;
use aula1;

create table funcionarios(
nome varchar(30),
idade tinyint,
sexo char(1),
peso float,
altura float,
nacionalidade varchar(20)
);

insert into funcionarios values ("Juliana",22,"F",60, 1.65,"Brasileira");
insert into funcionarios (nome) values ("Marcio");

insert into funcionarios values
("celia",22,f,60,1.65,"Brasileira"),
("Mar",22,f,60,1.65,"Brasileira"),
("Lua",22,f,60,1.65,"Brasileira");

SET SQL_SAFE_UPDATES = 0;


update funcionarios set nacionalidade = "Argentina" where nome = "Lua";

#show tables; mostra tabela
#describe funcionarios; mostra o esqueleto da tabela
#select nome from funcionarios; mostra campos especificos
#select nome, nacionalidade from funcionarios; mostra campos especificos
select *from funcionarios;