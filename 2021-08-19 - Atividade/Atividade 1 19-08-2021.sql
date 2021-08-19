CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe (
id int(4) AUTO_INCREMENT,
Jogo varchar(30) not null,
Tipo varchar(50),
Ativo boolean,
PRIMARY KEY (id)
);

CREATE TABLE tb_personagem (
id int(4) AUTO_INCREMENT,
Nome varchar(30) not null,
Poder_de_ataque int(50),
Poder_de_defesa int(50),
Nivel bigint (5),
Pontos decimal(10.2),
Ativo boolean,
PRIMARY KEY (id),
classe_id int not null,
FOREIGN KEY (classe_id) references tb_classe (id)
);

INSERT INTO tb_classe(Nome, Tipo, Ativo) 
	VALUES ("Guerra na Floresta", "Aventura", true),
		("Guerra no Oceano", "Sobrevivência", true),
		("Guerra nas Estrelas", "Estratégico", true),
		("Guerra no Deserto", "Resistência", true),
		("Guerra na Cidade", "Ação", true);
        
INSERT INTO tb_personagem(Nome, Poder_de_ataque, Poder_de_defesa, Nivel, Pontos, Ativo, classe_id) 
	VALUES ("Tarzan", 1000, 1000, 2, 30, true, 1),
		("Aquamen", 5000, 3000, 1, 30, true, 2),
		("Lanterna Verde", 2500, 1900, 5, 30, true, 3),
		("Cleopatra", 1000, 3000, 4, 30, true, 4),
		("Super Homem", 4000, 3000, 2, 30, true, 5),
        ("Mulher Maravilha", 1000, 1500, 2, 30, true, 5),
        ("Dori", 1000, 1000, 2, 30, true, 2),
        ("Kong", 4000, 4000, 2, 30, true, 1);
        
	select * from tb_classe;
    select * from tb_personagem;
    
    select * from tb_personagem where Poder_de_ataque > 2000;
    
    select * from tb_personagem where Poder_de_defesa > 1000 and Poder_de_defesa < 2000;
    
    select * from tb_personagem where nome like "%C%";
    
    select * from tb_personagem 
	inner join tb_classe on tb_classe.id = tb_personagem.classe_id;
    
    select tb_personagem.Nome, tb_classe.Jogo, tb_classe.Tipo from tb_personagem
    left join tb_classe on tb_classe.id = tb_personagem.classe_id
    where Jogo like "Guerra na Floresta";
    
	select * from tb_personagem
    inner join tb_classe on tb_classe.id = tb_personagem.classe_id
    where Jogo like "Guerra na Floresta";
    
    
