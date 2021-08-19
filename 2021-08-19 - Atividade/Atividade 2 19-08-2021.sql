CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria (
id int(4) AUTO_INCREMENT,
Tipo varchar(50) not null,
Disponivel boolean,
PRIMARY KEY (id)
);

CREATE TABLE tb_pizza (
id int(4) AUTO_INCREMENT,
Sabor_Pizza varchar(30) not null,
Tamanhos_Disponiveis varchar (50),
Preco decimal(10.2),
Adicionar_Queijo boolean,
PRIMARY KEY (id),
classe_id int not null,
FOREIGN KEY (classe_id) references tb_categoria (id)
);

INSERT INTO tb_categoria(Tipo, Disponivel) 
	VALUES ("Salgada", true),
		("Doce", true),
		("Exótica", true),
		("Salgada e Doce", true),
		("Especial", true);
        
INSERT INTO tb_pizza(Sabor_Pizza, Tamanhos_Disponiveis, Preco, Adicionar_Queijo, classe_id) 
	VALUES ("Queijo Mussarela", "Grande", 85.50, true, 1),
		("Queijo", "Média", 25.50, false, 2),
		("Brigadeiro", "Pequena", 15.50, true, 3),
		("Calabreza", "Grande", 85.50, false, 1),
		("Catupiry", "Média", 35.50, true, 2),
        ("Carne", "Pequena", 15.50, false, 1),
        ("Meia Chocolate e meia queijo", "Grande", 85.50, true, 4),
        ("Mix de Sabores", "Média", 35.50, false, 5);
        
	select * from tb_categoria;
    select * from tb_pizza;
    
    select * from tb_pizza where Preco > 45;
    
    select * from tb_pizza where Preco > 29 and Preco < 60;
    
    select * from tb_pizza where Sabor_Pizza like "%C%";
    
    select * from tb_pizza 
	inner join tb_categoria on tb_categoria.id = tb_pizza.classe_id;
    
    select * from tb_pizza
    left join tb_categoria on tb_categoria.id = tb_pizza.classe_id
    where Tipo like "Doce";
    