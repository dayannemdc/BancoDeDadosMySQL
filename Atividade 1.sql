CREATE DATABASE db_rh_empresa;

USE db_rh_empresa;

CREATE TABLE tb_funcionarios (
id int(4) AUTO_INCREMENT,
Nome varchar(30) not null,
telefone int(50),
Setor varchar(50),
Salario decimal(10.2),
Ativo boolean,
PRIMARY KEY (id)
);
INSERT INTO tb_funcionarios(Nome, telefone, Setor, Salario, Ativo) 
	VALUES ("Ana Golçaves", 11111111, "Administração", 1800.5, true),
		("Anderson Silva", 22222222, "Operação", 1508.3, true),
		("Bruno Lima", 33333333, "Almoxarifado", 2700.5, true),
		("Camila Dias", 44444444, "Vendas", 2800.0, true),
		("Fernando Oliveira", 55555555, "Operação", 1900.0, true);

SELECT * FROM tb_funcionarios Where Salario > 2000;

SELECT * FROM tb_funcionarios Where Salario < 2000;

UPDATE tb_funcionarios set Nome = "Ana Golçaves Silva" where id = 1;

select * from tb_funcionarios;