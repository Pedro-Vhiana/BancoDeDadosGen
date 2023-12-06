CREATE DATABASE servico_rh;

USE servico_rh;

CREATE TABLE tb_colaboradores (
id BIGINT NOT NULL AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
cargo VARCHAR(255) NOT NULL,
salario DECIMAL(6,2) NOT NULL,
dataAniversario DATE NOT NULL,
PRIMARY KEY(id)
);

ALTER TABLE tb_colaboradores MODIFY salario DECIMAL(8,2);

INSERT INTO tb_colaboradores(nome,cargo,salario,dataAniversario)
VALUES ("Pedro","CEO",100000,"2023-07-17");

INSERT INTO tb_colaboradores(nome,cargo,salario,dataAniversario)
VALUES ("Ordep","Desenvolvedor Senior",15000,"2023-07-17");

INSERT INTO tb_colaboradores(nome,cargo,salario,dataAniversario)
VALUES ("Edro","Desenvolvedor Junior",5000,"2023-07-17");

INSERT INTO tb_colaboradores(nome,cargo,salario,dataAniversario)
VALUES ("Dro","Q.A Tester",1800,"2023-07-17");

INSERT INTO tb_colaboradores(nome,cargo,salario,dataAniversario)
VALUES ("Drope","Estagiario",1200,"2023-07-17");

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;
SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

-- Impedir que o de UPDATE nas tabelas sem WHERE...
SET SQL_SAFE_UPDATES = 1;

UPDATE tb_colaboradores SET dataAniversario = "2001-01-24" WHERE id = 2;

SELECT * FROM tb_colaboradores;

UPDATE tb_colaboradores SET dataAniversario = "2002-05-10" WHERE id = 3;

UPDATE tb_colaboradores SET dataAniversario = "1998-08-15" WHERE id = 4;

UPDATE tb_colaboradores SET dataAniversario = "2003-01-01" WHERE id = 5;

SELECT * FROM tb_colaboradores;

-- ATUALIZANDO atributos das colunas da tabela...
UPDATE tb_colaboradores SET dataAniversario = "2004-07-17" WHERE id = 1;

SELECT * FROM tb_colaboradores;
