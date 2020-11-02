begin;
insert into colaboradores (nome, nascimento, sexo, peso, altura)
	values	('jacqueline', "1998-02-03","F","58.5","1.60");
    
    select * from colaboradores;
rollback;	#rollback volta a ação feita no begin
   select * from colaboradores;
   
   begin;
insert into colaboradores (nome, nascimento, sexo, peso, altura)
	values	('jacqueline', "1998-02-03","F","58.5","1.60");
    
    select * from colaboradores;
commit;	#commit confirma o dado na tabela
    select * from colaboradores;