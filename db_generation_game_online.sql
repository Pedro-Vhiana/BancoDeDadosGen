CREATE DATABASE db_generation_game_online;


CREATE TABLE tb_classes(
id BIGINT NOT NULL AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO tb_classes(tipo,descricao)
VALUES ("Guerreiro","Lutador"),
("Arqueiro","Atirador"),
("Bruxo","Conjurador"),
("Sicário","Assasino"),
("Bardo","Suporte");

SELECT * FROM tb_classes;

CREATE TABLE tb_personagens(
id BIGINT NOT NULL AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
ataque VARCHAR(255) NOT NULL,
defesa VARCHAR(255) NOT NULL,
item VARCHAR(255) NOT NULL,
classe_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classes (id)
);

INSERT INTO tb_personagens(nome,ataque,defesa,item,classe_id)
VALUES ("Matador de porco","4500","3500","Espada Grande",1);

SELECT * FROM tb_personagens;

INSERT INTO tb_personagens(nome,ataque,defesa,item,classe_id)
VALUES ("Marreta","3500","3000","Arco Grande", 2),
("Jasmine","1500","5000","Violão",5),
("Picasso","5000","2000","Cajado Torto", 3),
("Dr Jorge","7000","1000","Lâmina Dupla", 4),
("Careca", "4000","2000","Livro Da Maldição", 3),
("Dona Elias", "2000","3500","Cadeira afiada", 1),
("Sr Frango","1000","1000","Vassoura", 4);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT nome, ataque, defesa, item, tb_classes.descricao
FROM tb_personagens
INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id
WHERE tb_classes.descricao = "Lutador";

SELECT nome, ataque, defesa, item, tb_classes.descricao, tb_classes.tipo
FROM tb_personagens
INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id;

UPDATE tb_personagens SET classe_id = 2 WHERE Id = 8;

SELECT * FROM tb_personagens;





