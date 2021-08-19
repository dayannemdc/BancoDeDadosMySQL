CREATE DATABASE db_cidade_das_frutas;

USE db_cidade_das_frutas;

CREATE TABLE tb_categoria (
id int(4) AUTO_INCREMENT,
Sabor varchar(30) not null,
Cor varchar(30),
PRIMARY KEY (id)
);

CREATE TABLE tb_produto (
id int(4) AUTO_INCREMENT,
Nome_Produto varchar(30) not null,
Origem varchar (50),
Preco decimal(10.2),
Disponivel_Em_Estoque boolean,
PRIMARY KEY (id),
classe_id int not null,
FOREIGN KEY (classe_id) references tb_categoria (id)
);

INSERT INTO tb_categoria(Sabor, Cor) 
	VALUES ("azedo", "vermelha"),
		("doce", "amarela"),
		("amargo", "verde"),
		("acido", "verde"),
		("indeterminado", "indeteminado");
        
INSERT INTO tb_produto(Nome_Produto, Origem, Preco, Disponivel_Em_Estoque, classe_id) 
	VALUES ("Morango", "Fazenda1", 2.50, true, 1),
		("Banana", "Fazenda2", 10.50, true, 2),
		("Limão", "Fazenda1", 5.50, true, 3),
		("Abacaxi", "Fazenda2", 45.50, true, 4),
		("Cajá", "Fazenda3", 25.50, true, 5),
        ("Pitanga", "Fazenda2", 15.50, true, 5),
        ("Acerola", "Fazenda1", 65.50, true, 1),
        ("Jaca", "Fazenda2", 75.50, true, 2);
        
	select * from tb_categoria;
    select * from tb_produto;
    
    select * from tb_produto where Preco > 50;
    
    select * from tb_produto where Preco > 3 and Preco < 60;
    
    select * from tb_produto where Nome_Produto like "%C%";
    
    select * from tb_produto 
	inner join tb_categoria on tb_categoria.id = tb_produto.classe_id;
    
    select * from tb_produto
    left join tb_categoria on tb_categoria.id = tb_produto.classe_id
    where Sabor like "doce";