CREATE SCHEMA loja_eletronicos;

USE loja_eletronicos;

CREATE TABLE produtos(
id_produto INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100),
categoria VARCHAR(100),
preco DECIMAL(10,2),
estoque INT
);

CREATE TABLE clientes(
id_cliente INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100),
email VARCHAR(100),
telefone VARCHAR(100)
);

CREATE TABLE vendas(
id_venda INT AUTO_INCREMENT PRIMARY KEY,
id_produto INT,
id_cliente INT,
FOREIGN KEY (id_produto) REFERENCES produto (id_produto),
FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente),
quantidade INT,
data_venda DATE
);

INSERT INTO produtos (nome, categoria, preco, estoque) VALUES 
('Agua Sanitaria', 'Limpeza', 10.90, 8), 
('Samsung A23', 'Smartphone', 8.90, 10),
('Panelas', 'Cozinha', 35.70, 10),
('Vassoura', 'Limpeza', 12.90, 5),
('Biscoito Treloso', 'Comida', 2.90, 15);

INSERT INTO clientes (nome, email, telefone) VALUES
('Ayrton Senna', 'ayrton@gmail.com', '(021) 99296-3764'),
('Chico Moedas', 'chiquinho@gmail.com', '(021) 99495-3764'),
('Chico Science', 'science@hotmail.com', '(081) 99298-3872'),
('Tatu Bola', 'tatubolabonitinho@gmail.com', '(081) 99342-3684'),
('Luisa Sonza', 'luizas@gmail.com', '(021) 99872-4154');

INSERT INTO vendas (id_produto, id_cliente, quantidade, data_venda) VALUES
('1', '1', '4', '2024/08/10'),
('3', '3', '3', '2024/08/10'),
('4', '4', '2', '2024/08/12'),
('5', '1', '1', '2024/08/13'),
('2', '2', '9', '2024/08/14'),
('3', '2', '12', '2024/08/15'),
('1', '5', '5', '2024/08/16'),
('1', '2', '4', '2024/08/17'),
('2', '3', '3', '2024/08/18'),
('1', '1', '1', '2024/08/19');

UPDATE produtos
SET preco = 9.00
WHERE id_produto = 1;

UPDATE clientes
SET telefone = '(88) 99291-4654'
WHERE id_cliente = 2;

DELETE FROM produtos
WHERE id_produto = 1;

DELETE FROM clientes
WHERE id_cliente = 1;

SELECT *
FROM produtos
WHERE categoria = 'Smartphone';

SELECT *
FROM vendas
WHERE data_venda = '2024/08/10';


SELECT *
FROM produtos
ORDER BY nome ASC;

SELECT *
FROM clientes
ORDER BY nome DESC;

SELECT
	clientes.id_cliente,
    clientes.nome,
    SUM(vendas.quantidade * produtos.preco) as receita_total
    FROM vendas
    JOIN produtos ON vendas.id_produto = produtos.id_produto
    JOIN clientes ON vendas.id_cliente = clientes.id_cliente
    GROUP BY clientes.id_cliente;