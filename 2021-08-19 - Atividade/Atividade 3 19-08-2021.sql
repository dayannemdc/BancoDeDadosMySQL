CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria (
id int(4) AUTO_INCREMENT,
Setor varchar(50) not null,
Loja varchar(50),
PRIMARY KEY (id)
);

CREATE TABLE tb_produto (
id int(4) AUTO_INCREMENT,
Nome_Produto varchar(30) not null,
Marca varchar (50),
Preco decimal(10.2),
Disponivel_Em_Estoque boolean,
PRIMARY KEY (id),
classe_id int not null,
FOREIGN KEY (classe_id) references tb_categoria (id)
);

INSERT INTO tb_categoria(Setor, Loja) 
	VALUES ("Higiene", "Principal"),
		("Higiene", "Filial"),
		("Cosméticos", "Principal"),
		("Cosméticos", "Filial"),
		("Medicamentos", "Principal");
        
INSERT INTO tb_produto(Nome_Produto, Marca, Preco, Disponivel_Em_Estoque, classe_id) 
	VALUES ("Sabonete", "Dove", 2.50, true, 1),
		("Shampoo", "Skala", 10.50, true, 2),
		("Esmalte", "Risque", 5.50, true, 3),
		("Protetor Solar", "Sandown", 45.50, true, 4),
		("Dipirona", "Propria", 25.50, true, 5),
        ("Paracetamol", "Propria", 15.50, true, 5),
        ("Fraudas", "Pom Pom", 85.50, true, 1),
        ("Perfume", "Boticário", 105.50, true, 3);
        
	select * from tb_categoria;
    select * from tb_produto;
    
    select * from tb_produto where Preco > 50;
    
    select * from tb_produto where Preco > 3 and Preco < 60;
    
    select * from tb_produto where Nome_Produto like "%B%";
    
    select * from tb_produto 
	inner join tb_categoria on tb_categoria.id = tb_produto.classe_id;
    
    select * from tb_produto
    left join tb_categoria on tb_categoria.id = tb_produto.classe_id
    where Setor like "Higiene";