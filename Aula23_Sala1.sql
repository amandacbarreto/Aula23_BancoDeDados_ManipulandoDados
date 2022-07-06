CREATE DATABASE Catalogo;

CREATE TABLE filme(
	id INT IDENTITY(1,1) PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
	data_lancamento INT NULL,
	duracao INT NOT NULL
);

CREATE TABLE ator(
	id INT IDENTITY(1,3) PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
	sobrenome VARCHAR(100) NOT NULL
);

CREATE TABLE filme_ator(
	id int primary key identity,
	id_filme int,
	id_ator int,

	constraint fk_filme_id 
	foreign key (id_filme) 
	references filme(id),

	constraint fk_ator_id 
	foreign key (id_ator) 
	references ator(id)
);

INSERT INTO filme (nome, data_lancamento, duracao) 
VALUES
('Thor: Amor e Trovão', 2022, 120),
('O Homem do Norte', 2022, 137),
('O Homem nas Trevas', 2016, 88);

INSERT INTO ator (nome, sobrenome) 
VALUES
('Stephen', 'Lang'),
('Jane', 'Levy'),
('Dylan', 'Minnette'),
('Daniel ', 'Zavatto'),
('Natalie ', 'Portman'),
('Christian', 'Bale'),
('Chris', 'Hemsworth'),
('Matt', 'Damon'),
('Russel', 'Crowe'),
('Anya', 'Taylor-Joy'),
('Alexander', 'Skarsgard'),
('Willian', 'Defoe'),
('Nicole', 'Kidman'),
('Ethan', 'Hawke');

SELECT * FROM filme ORDER BY nome ASC;
SELECT * FROM filme ORDER BY data_lancamento DESC;
SELECT nome, sobrenome FROM ator ORDER BY nome ASC;



