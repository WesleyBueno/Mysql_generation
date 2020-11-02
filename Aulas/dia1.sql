CREATE TABLE tb_venda (
idVenda smallint primary key auto_increment,
produto varchar(255) not null,
preco decimal(10.2) unsigned,
horarioVenda datetime default current_timestamp,
data_Entrega date,
hora_Entrega time
);

INSERT INTO tb_venda (produto, preco, data_Entrega, hora_Entrega) VALUES 
("Ecosport", 70.000, "2020-12-03", "13:40:00");

SELECT * from  tb_venda;

drop table tb_venda;



#Primary key é uma chave primaria, auto increment aumenta automaticamente