CREATE DATABASE db_e_commerce;

USE db_e_commerce;

CREATE TABLE tb_produtos (
codigo int(4) AUTO_INCREMENT,
produto varchar(30) not null,
preco decimal(10,2),
marca varchar(50),
categoria varchar(50),
estoque boolean,
PRIMARY KEY (codigo)
);
INSERT INTO tb_produtos(produto, preco, marca, categoria, estoque) 
	VALUES ("Colar", 25.50, "Vivara", "Acessórios", true),
		("Anei", 15.00, "Vivara", "Acessórios", true),
		("Blusa", 28.50, "Adidas", "Vestuário", true),
		("Bermuda", 30.50, "Adidas", "Vestuário", true),
		("Perfume", 215.50, "Boticario", "Perfumaria", true),
		("Sabonete", 5.50, "Dove", "Higiêne", true),
		("Boné", 12.50, "Nike", "Acessórios", true),
		("Brinco", 550.50, "Vivara", "Acessórios", true);

SELECT * FROM tb_produtos Where preco > 500;

SELECT * FROM tb_produtos Where preco < 500;

UPDATE tb_produtos set nome = "Anel" where codigo = 1;

select * from tb_produtos;
