delete from matriculados
where id_curso = '2';

#Deleta varios por vez
delete from matriculados
where carga = '40' and nome = 'Julia';

#Deleta tudo!
#truncate table matriculados;