CREATE DATABASE db_reg_escola;

USE db_reg_escola;

CREATE TABLE tb_estudantes (
id int(4) AUTO_INCREMENT,
Nome varchar(30) not null,
Turma int(50),
Curso varchar(50),
Media decimal(10.2),
Ativo boolean,
PRIMARY KEY (id)
);
INSERT INTO tb_estudantes(Nome, Turma, Curso, Media, Ativo) 
	VALUES ("Ana Golçaves", 1, "Java", 8.5, true),
		("Anderson Silva", 1, "Java", 8.3, true),
		("Bruno Lima", 1, "Java", 7.5, true),
		("Camila Dias", 1, "Java", 8.0, true),
		("Fernando Oliveira", 2, "MySQL", 9.0, true),
		("Hiago Santana", 2, "MySQL", 5.9, true),
		("Lucas Santos", 2, "MySQL", 7.2, true),
		("Maria Aparecida", 2, "MySQL", 6.5, true);

SELECT * FROM tb_estudantes Where Media > 7;

SELECT * FROM tb_estudantes Where Media < 7;

UPDATE tb_estudantes set Nome = "Maria Sousa" where id = 8;

select * from tb_estudantes;