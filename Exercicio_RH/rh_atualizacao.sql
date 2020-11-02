begin;
 update funcionarios
 set salario = 4.000
 where id = 1;
 
  select * from funcionarios;
  
 rollback;
 
 begin;
 update funcionarios
 set salario = 1.700
 where nome = "clarencio";
 
  select * from funcionarios;
  
 rollback;
 
 begin;
 update funcionarios
 set cargo = "Dev java senior", salario = 18.000
 where id = 3;
 
 select * from funcionarios;
 
rollback;
 
 select * from funcionarios;