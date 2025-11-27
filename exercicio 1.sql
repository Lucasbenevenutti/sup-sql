CREATE DATABASE assistencia_tecnica;

USE assistencia_tecnica;

CREATE TABLE pecas_reposicao (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL
);

INSERT INTO pecas_reposicao (nome) VALUE ("ASUS Prime B450M Gaming");
INSERT INTO pecas_reposicao (nome) VALUE ("NVIDIA GeForce RTX 3060");
INSERT INTO pecas_reposicao (nome) VALUE ("Redragon Kumara K552");
INSERT INTO pecas_reposicao (nome) VALUE ("Samsung Odyssey G5 27");
INSERT INTO pecas_reposicao (nome) VALUE ("SMS Progressive III");
INSERT INTO pecas_reposicao (nome) VALUE ("Intel Core i5-12400F");
INSERT INTO pecas_reposicao (nome) VALUE ("Western Digital Blue 1TB");
INSERT INTO pecas_reposicao (nome) VALUE ("Kingston A400 240GB");
INSERT INTO pecas_reposicao (nome) VALUE ("Redragon M720");
INSERT INTO pecas_reposicao (nome) VALUE ("Kingston Fury Beast 8GB DDR4");

UPDATE pecas_reposicao SET nome = "ASUS Prime B450M Gaming" WHERE id = 1;
UPDATE pecas_reposicao SET nome = "NVIDIA GeForce RTX 3060" WHERE id =2;
UPDATE pecas_reposicao SET nome = "Redragon Kumara K552" WHERE id = 3;
UPDATE pecas_reposicao SET nome = "Samsung Odyssey G5 27" WHERE id = 4;
UPDATE pecas_reposicao SET nome = "SMS Progressive III" WHERE id = 5;
UPDATE pecas_reposicao SET nome = "Intel Core i5-12400F" WHERE id = 6;
UPDATE pecas_reposicao SET nome = "Western Digital Blue 1TB" WHERE id = 7;
UPDATE pecas_reposicao SET nome = "Kingston A400 240GB" WHERE id = 8;
UPDATE pecas_reposicao SET nome = "Redragon M720" WHERE id = 9;
UPDATE pecas_reposicao SET nome = "Kingston Fury Beast 8GB DDR4" WHERE id = 10;

DELETE FROM pecas_reposicao WHERE id = 13;

SELECT * FROM pecas_reposicao;

SELECT id, nome FROM pecas_reposicao ORDER BY nome ASC;

SELECT id, nome FROM pecas_reposicao ORDER BY nome DESC;

SELECT id, nome FROM pecas_reposicao LIMIT 5;

SELECT id, nome FROM pecas_reposicao WHERE id > 3;

SELECT id, nome FROM pecas_reposicao WHERE nome LIKE "Memoria%";

SELECT id, nome FROM pecas_reposicao WHERE nome LIKE "%HD";

SELECT id, nome FROM pecas_reposicao WHERE nome LIKE "%Placa%";

SELECT id, nome FROM pecas_reposicao WHERE id >= 2 AND id <= 7;

-- COUNT é utilizado para saber o total de registros
SELECT COUNT(*) FROM pecas_reposicao; 

SELECT id, nome FROM pecas_reposicao WHERE nome LIKE "%HD%" OR nome LIKE "%SSD%";

SELECT nome FROM pecas_reposicao;

-- Consulta pesquisando por quantidade de caracteres maior que 10
SELECT nome FROM pecas_reposicao WHERE LENGTH(nome) > 10;

-- Consultando tudo em letra maiuscula
SELECT UPPER(nome) FROM pecas_reposicao;

-- substituindo espaços por hífens
SELECT REPLACE(nome, " ", "-") FROM pecas_reposicao;

-- Consultando todas as 3 primeiras letras de cada registro
SELECT SUBSTRING(nome, 1, 3) FROM pecas_reposicao;

-- Consultando tudo que não contenha a palavra Placa
SELECT nome FROM pecas_reposicao WHERE nome NOT LIKE "%Placa%";

SELECT LOWER(nome) FROM pecas_reposicao;

SELECT id, nome FROM pecas_reposicao WHERE id != 5;

-- Consultando registros com ordem crescente da menor palavra até a maior
SELECT id, nome FROM pecas_reposicao ORDER BY LENGTH(nome);

ALTER TABLE pecas_reposicao ADD COLUMN tipo VARCHAR(30);

UPDATE pecas_reposicao SET tipo = "Placa mãe" WHERE id = 1;
UPDATE pecas_reposicao SET tipo = "Placa de video" WHERE id = 2;
UPDATE pecas_reposicao SET tipo = "Teclado" WHERE id = 3;
UPDATE pecas_reposicao SET tipo = "Monitor" WHERE id = 4;
UPDATE pecas_reposicao SET tipo = "Estabilizador" WHERE id = 5;
UPDATE pecas_reposicao SET tipo = "Processador" WHERE id = 6;
UPDATE pecas_reposicao SET tipo = "HD" WHERE id = 7;
UPDATE pecas_reposicao SET tipo = "SSD" WHERE id = 8;
UPDATE pecas_reposicao SET tipo = "Mouse" WHERE id = 9;
UPDATE pecas_reposicao SET tipo = "Memoria" WHERE id = 10;

ALTER TABLE pecas_reposicao ADD COLUMN quantidade INT;

UPDATE pecas_reposicao SET quantidade = 10 WHERE id = 1;
UPDATE pecas_reposicao SET quantidade = 10 WHERE id = 2;
UPDATE pecas_reposicao SET quantidade = 10 WHERE id = 3;
UPDATE pecas_reposicao SET quantidade = 10 WHERE id = 4;
UPDATE pecas_reposicao SET quantidade = 10 WHERE id = 5;
UPDATE pecas_reposicao SET quantidade = 10 WHERE id = 6;
UPDATE pecas_reposicao SET quantidade = 10 WHERE id = 7;
UPDATE pecas_reposicao SET quantidade = 10 WHERE id = 8;
UPDATE pecas_reposicao SET quantidade = 10 WHERE id = 9;
UPDATE pecas_reposicao SET quantidade = 10 WHERE id = 10;

SELECT id, nome, quantidade FROM pecas_reposicao WHERE quantidade > 10;

UPDATE pecas_reposicao SET quantidade = 5 WHERE id = 1;
UPDATE pecas_reposicao SET quantidade = 20 WHERE id = 2;
UPDATE pecas_reposicao SET quantidade = 39 WHERE id = 3;
UPDATE pecas_reposicao SET quantidade = 1 WHERE id = 4;
UPDATE pecas_reposicao SET quantidade = 24 WHERE id = 5;
UPDATE pecas_reposicao SET quantidade = 39 WHERE id = 6;
UPDATE pecas_reposicao SET quantidade = 12 WHERE id = 7;
UPDATE pecas_reposicao SET quantidade = 34 WHERE id = 8;
UPDATE pecas_reposicao SET quantidade = 12 WHERE id = 9;
UPDATE pecas_reposicao SET quantidade = 0 WHERE id = 10;
UPDATE pecas_reposicao SET quantidade = 1 WHERE id = 11;

SELECT nome FROM pecas_reposicao WHERE nome LIKE "%e%";

SELECT nome FROM pecas_reposicao WHERE nome Like "%a%";

ALTER TABLE pecas_reposicao ADD COLUMN preco DOUBLE;

UPDATE pecas_reposicao SET preco = 13.39 WHERE id = 1;
UPDATE pecas_reposicao SET preco = 24.99 WHERE id = 2;
UPDATE pecas_reposicao SET preco = 12.99 WHERE id = 3;
UPDATE pecas_reposicao SET preco = 19.99 WHERE id = 4;
UPDATE pecas_reposicao SET preco = 29.99 WHERE id = 5;
UPDATE pecas_reposicao SET preco = 39.99 WHERE id = 6;
UPDATE pecas_reposicao SET preco = 49.99 WHERE id = 7;
UPDATE pecas_reposicao SET preco = 59.99 WHERE id = 8;
UPDATE pecas_reposicao SET preco = 69.99 WHERE id = 9;
UPDATE pecas_reposicao SET preco = 79.99 WHERE id = 10;
UPDATE pecas_reposicao SET preco = 89.99 WHERE id = 11;

SELECT SUM(preco) FROM pecas_reposicao;

SELECT SUM(preco * quantidade) FROM pecas_reposicao WHERE tipo = "Memoria";
SELECT SUM(preco * quantidade) FROM pecas_reposicao WHERE tipo = "Processador";
SELECT SUM(preco * quantidade) FROM pecas_reposicao WHERE tipo = "Placa de video";
SELECT SUM(preco * quantidade) FROM pecas_reposicao WHERE tipo = "SSD";
SELECT SUM(preco * quantidade) FROM pecas_reposicao WHERE tipo = "Fonte";
SELECT SUM(preco * quantidade) FROM pecas_reposicao WHERE tipo = "Placa mãe";

SELECT MIN(preco) FROM pecas_reposicao;

SELECT MAX(preco) FROM pecas_reposicao;

SELECT AVG(preco) FROM pecas_reposicao;

ALTER TABLE pecas_reposicao ADD COLUMN data_pedido DATE;

INSERT INTO pecas_reposicao (nome, tipo, quantidade, preco, data_pedido) VALUE ("Processador Intel Core i7", "Processador", 10, 19.99, '2023-01-01');

UPDATE pecas_reposicao SET data_pedido = '2025-11-01' WHERE id = 1;
UPDATE pecas_reposicao SET data_pedido = '2025-10-28' WHERE id = 2;
UPDATE pecas_reposicao SET data_pedido = '2025-09-15' WHERE id = 3;
UPDATE pecas_reposicao SET data_pedido = '2025-08-22' WHERE id = 4;
UPDATE pecas_reposicao SET data_pedido = '2025-07-29' WHERE id = 5;
UPDATE pecas_reposicao SET data_pedido = '2025-06-6' WHERE id = 6;
UPDATE pecas_reposicao SET data_pedido = '2025-05-4' WHERE id = 7;
UPDATE pecas_reposicao SET data_pedido = '2025-04-5' WHERE id = 8;
UPDATE pecas_reposicao SET data_pedido = '2025-03-7' WHERE id = 9;
UPDATE pecas_reposicao SET data_pedido = '2025-02-4' WHERE id = 10;
UPDATE pecas_reposicao SET data_pedido = '2025-01-7' WHERE id = 11;

SELECT id, nome, preco, quantidade, data_pedido FROM pecas_reposicao ORDER BY preco ASC;

CREATE TABLE clientes(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL
);
    
INSERT INTO clientes (nome) VALUE ("Ana Paula Silva");
INSERT INTO clientes (nome) VALUE ("João Carlos Santos");
INSERT INTO clientes (nome) VALUE ("Maria Oliveira");
INSERT INTO clientes (nome) VALUE ("Pedro Henrique Costa");
INSERT INTO clientes (nome) VALUE ("Juliana Alves");
INSERT INTO clientes (nome) VALUE ("Roberto Ferreira");
INSERT INTO clientes (nome) VALUE (" Carla Souza");
INSERT INTO clientes (nome) VALUE ("Lucas Rodrigues");
INSERT INTO clientes (nome) VALUE ("Fernanda Lima");
INSERT INTO clientes (nome) VALUE ("Marcos Antônio Pereira");

SELECT id, nome FROM clientes;

SELECT nome FROM clientes ORDER BY nome ASC;

SELECT nome FROM clientes ORDER BY nome DESC;

SELECT nome FROM clientes LIMIT 3;

SELECT id, nome FROM clientes WHERE id > 5;

SELECT nome FROM clientes WHERE nome LIKE "A%";

SELECT nome FROM clientes WHERE nome LIKE "%a";

SELECT nome FROM clientes WHERE nome LIKE "%Silva%";

SELECT id, nome FROM clientes WHERE id >= 3 AND id <= 8;

SELECT COUNT(*) FROM clientes; 

SELECT nome FROM clientes WHERE nome LIKE "%Maria%" OR nome LIKE "%João%";

SELECT nome FROM clientes;

SELECT nome FROM clientes WHERE LENGTH(nome) > 15;

SELECT UPPER(nome) FROM clientes;

SELECT REPLACE(nome, " ", "_") FROM clientes;

SELECT SUBSTRING(nome, 1, 5) FROM clientes;

SELECT nome FROM clientes WHERE nome NOT LIKE "%Santos%";

SELECT LOWER(nome) FROM clientes;

SELECT id, nome FROM clientes WHERE id != 7;

SELECT nome FROM clientes ORDER BY LENGTH(nome);

ALTER TABLE clientes ADD COLUMN telefone VARCHAR (20);

UPDATE clientes SET telefone = "(11) 98765-4321" WHERE id = 1;
UPDATE clientes SET telefone = "(21) 91234-5678" WHERE id = 2;
UPDATE clientes SET telefone = "(31) 99876-5432" WHERE id = 3;
UPDATE clientes SET telefone = "(41) 92345-6789" WHERE id = 4;
UPDATE clientes SET telefone = "(51) 93456-7890" WHERE id = 5;
UPDATE clientes SET telefone = "(61) 94567-8901" WHERE id = 6;
UPDATE clientes SET telefone = "(71) 95678-9012" WHERE id = 7;
UPDATE clientes SET telefone = "(81) 96789-0123" WHERE id = 8;
UPDATE clientes SET telefone = "(91) 97890-1234" WHERE id = 9;
UPDATE clientes SET telefone = "(11) 98901-2345" WHERE id = 10;

SELECT nome FROM clientes WHERE telefone LIKE "(11)%";

SELECT nome FROM clientes WHERE telefone LIKE "%9876%";

ALTER TABLE clientes ADD COLUMN email VARCHAR(50);

UPDATE clientes SET email = "ana.silva@gmail.com" WHERE id = 1;
UPDATE clientes SET email = "joao.santos@hotmail.com" WHERE id = 2;
UPDATE clientes SET email = "maria.oliveira@yahoo.com.br" WHERE id = 3;
UPDATE clientes SET email = "pedro.costa@gmail.com" WHERE id = 4;
UPDATE clientes SET email = "juliana.alves@outlook.com" WHERE id = 5;
UPDATE clientes SET email = "roberto.ferreira@gmail.com" WHERE id = 6;
UPDATE clientes SET email = "carla.souza@hotmail.com" WHERE id = 7;
UPDATE clientes SET email = "lucas.rodrigues@gmail.com" WHERE id = 8;
UPDATE clientes SET email = "fernanda.lima@yahoo.com.br" WHERE id = 9;
UPDATE clientes SET email = "marcos.pereira@outlook.com" WHERE id = 10;

SELECT nome FROM clientes WHERE email LIKE "%@gmail.com%";

SELECT nome FROM clientes WHERE email LIKE "%.com.br%";

ALTER TABLE clientes ADD COLUMN cidade VARCHAR(30);

UPDATE clientes SET cidade = "São Paulo" WHERE id = 1;
UPDATE clientes SET cidade = "Rio de Janeiro" WHERE id = 2;
UPDATE clientes SET cidade = "Belo Horizonte" WHERE id = 3;
UPDATE clientes SET cidade = "Curitiba" WHERE id = 4;
UPDATE clientes SET cidade = "Porto Alegre" WHERE id = 5;
UPDATE clientes SET cidade = "Brasília" WHERE id = 6;
UPDATE clientes SET cidade = "Salvador" WHERE id = 7;
UPDATE clientes SET cidade = "Recife" WHERE id = 8;
UPDATE clientes SET cidade = "Belém" WHERE id = 9;
UPDATE clientes SET cidade = "São Paulo" WHERE id = 10;

SELECT nome FROM clientes WHERE cidade LIKE "%São Paulo%";

ALTER TABLE clientes ADD COLUMN data_cadastro DATE;

UPDATE clientes SET data_cadastro = '2024-11-15' WHERE id = 1;
UPDATE clientes SET data_cadastro = '2024-10-20' WHERE id = 2;
UPDATE clientes SET data_cadastro = '2024-09-10' WHERE id = 3;
UPDATE clientes SET data_cadastro = '2024-08-25' WHERE id = 4;
UPDATE clientes SET data_cadastro = '2024-07-30' WHERE id = 5;
UPDATE clientes SET data_cadastro = '2024-06-12' WHERE id = 6;
UPDATE clientes SET data_cadastro = '2024-05-18' WHERE id = 7;
UPDATE clientes SET data_cadastro = '2024-04-22' WHERE id = 8;
UPDATE clientes SET data_cadastro = '2024-03-14' WHERE id = 9;
UPDATE clientes SET data_cadastro = '2024-02-28' WHERE id = 10;

SELECT nome, MONTH(data_cadastro) FROM clientes WHERE MONTH(data_cadastro) = 11;

SELECT id, nome FROM clientes WHERE MONTH(data_cadastro) >= 3 AND MONTH(data_cadastro) <= 6; 

SELECT id, nome FROM clientes ORDER BY MONTH(data_cadastro) DESC;

SELECT YEAR(data_cadastro) FROM clientes;

SELECT MONTH(data_cadastro) FROM clientes;

SELECT DAY(data_cadastro) FROM clientes;

SELECT nome, DATE_FORMAT(data_cadastro, '%d/%m/%Y') FROM clientes;

