rename table funcionarios to colaboradores;

alter table colaboradores add column cpf int first;
alter table colaboradores add column email varchar(30);
alter table colaboradores add column sobrenome varchar(30) after nome;
alter table colaboradores modify column nome varchar(20);
alter table colaboradores drop column sobrenome;

select * from colaboradores;
describe colaboradores;