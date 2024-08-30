# Aula Introdutória Banco de Dados

Principais Ferramentas para Bancos de Dados:

* MySQL
* PostgreSQL
* Oracle
* SQL Server

**TODA PORTA INICIAL DE BANCO DE DADOS é** _localhost::**3306**_

### Iniciando com o MySQL

**SCHEMA** significa banco de dados, o primeiro exemplo é o **código inicial** para se **criar um bd:**

_**OBS: Precisa selecionar cada seção e clicar no raio para executar cada um:**_
```
CREATE SCHEMA bd_luan;

USE bd_luan;

caso queira criar vários coloque "`x`,`y`..." 
```
_Lembrando da Necessidade de dar Refresh para aparecer o bd._

**Criando Tabelas:**
```
CREATE TABLE alunos(
    id INT AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(100),
    data_nascimento DATE
);

```
Elementos Explicados:

id:
* .
* .
* .

name:
* .

data_nascimento:
* .
