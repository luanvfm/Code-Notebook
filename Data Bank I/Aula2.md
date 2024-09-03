# Aula 2 Banco de Dados

## **Conceitos do modelo de dados relacional e tabelas relacionais**

- Modelo de dados relacional: Organiza informações em tabelas.

- Cada **linha** representa um **registro único** 

- Cada **coluna** um **agrupamento de dados** desse registro


## **Estrutura de uma tabela relacional:**

- Primary Key: A tabela principal (exemplo: 

TABELA DE CLIENTES: que teria o ID de cada Cliente e o nome deles)

- Foreign Key: A tabela que liga o que o "cliente" faria, (exemplo: IDCLIENTE | PRODUTO | QUANTIDADE DO PRODUTO)
- Índices:

Tabela Primária com Estrangeira exemplo:

```
CREATE TABLE departamentos (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE empregados (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100),
departamento_id INT,
FOREIGN KEY (departamento_id) REFERENCES departamentos (id)
);
```

## **Operações Básicas SQL**

- **SELECT:**
Você SELECIONA elementos de colunas e utiliza o **FROM** para dizer de que tabela esses elementos vieram.

Serve para você visualizar os dados de uma tabela:

É possível utilizar o WHERE para servir de filtro para esses elementos:

```
SELECT data_nascimento, nome FROM tabela_de_clientes

#Seleciona a data de nascimento e nome dessa tabela de clientes.
#E se eu quiser apenas pessoas que nasceram após 2011?

WHERE data_nascimento > 2011 
```
- **INSERT:**
Como o nome sugere, é o principal elemento para dar valores às colunas das tabelas. Você usa **INSERT INTO [nome da tabela] ([nome da coluna]) VALUES ('nome do item'), ('nome do item'), ('nome do item');**
Exemplo:
```
INSERT INTO departamentos (nome) VALUES ('Recursos Humanos'), ('Financeiro'), ('TI');

#Na tabela de departamentos ele insere os valores (nesse caso os nomes de cada departamento)
```
Exemplo para inserir múltiplos valores de uma vez:
```
INSERT INTO empregados (nome, departamento_id) VALUES ('Joao Silva', 1), ('Maria Souza', 2), ('Carlos Pereira', 3);

#Na tabela de empregados e em suas colunas de nome e id do departamento, ele diz o nome de cada empregado e o número de seu departamento
```
- **UPDATE:**
- **DELETE:**

## Código Final da Aula:
```
USE banco_do_luan;

CREATE TABLE departamentos (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE empregados (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100),
departamento_id INT,
FOREIGN KEY (departamento_id) REFERENCES departamentos (id)
);

INSERT INTO departamentos (nome) VALUES ('Recursos Humanos'), ('Financeiro'), ('TI');

INSERT INTO empregados (nome, departamento_id) VALUES ('Joao Silva', 1), ('Maria Souza', 2), ('Carlos Pereira', 3);

SELECT nome, departamento_id FROM empregados;
```