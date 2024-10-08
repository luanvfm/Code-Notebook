CREATE SCHEMA supermercado;

USE supermercado;

CREATE TABLE vendas(
    id_vendas INT AUTO_INCREMENT PRIMARY KEY,
    produto VARCHAR(100),
    categoria INT,
    quantidade INT,
    preco_unidade DECIMAL(10,2),
    data_venda DATE
);

INSERT INTO vendas (produto, categoria, quantidade, preco_unidade, data_venda) VALUES
('Arroz', 'Alimentos', 5, 8.00, '2024/09/01'),
('Feijao', 'Alimentos', 3, 7.50, '2024/09/02'),
('Sabao', 'Limpeza', 2, 12.00, '2024/09/02'),
('Cafe', 'Alimentos', 6, 8.00, '2024/09/03'),
('Detergente', 'Limpeza', 4, 5.00, '2024/09/03'),
('Leite', 'Alimentos', 10, 4.50, '2024/09/04'),
('Sabonete', 'Higiene', 6, 3.00, '2024/09/04'),
('Pao', 'Alimentos', 15, 1.50, '2024/09/05'),
('Shampoo', 'Higiene', 1, 15.00, '2024/09/05'),
('Creme dental', 'Higiene', 3, 8.00, '2024/09/06');

-- primeira questao a) --
SELECT COUNT(*) FROM vendas WHERE categoria = 'alimentos';
-- primeira questao b) --
SELECT COUNT(*) FROM vendas;
-- segunda questao a) --
SELECT AVG(preco_unidade) FROM vendas;
-- segunda questao b) --
SELECT AVG(quantidade) FROM vendas;
-- terceira questao a, b) --
SELECT MIN(preco_unidade), MAX(preco_unidade) FROM vendas;
-- terceira questao c) --
SELECT MIN(quantidade), MAX(quantidade) FROM vendas;
-- quarta questao a) --
SELECT id_venda, SUM(quantidade * preco_unidade) AS venda_total FROM vendas GROUP BY id_venda ORDER BY venda_total DESC;
-- quarta questao b) --
SELECT AVG(preco_unidade * quantidade) AS total_Vhig FROM vendas WHERE categoria = 'Higiene';
