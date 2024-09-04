
# Github, Node e Javascript - Aula 04/09/2024 

Assuntos:
- Comandos básicos do Github
- Criando uma conta no Github
- Ajustando o Readme no Github com [Gerador de Readme.](https://rahuldkjain.github.io/gh-profile-readme-generator/)
- Conceitos Básicos do Node  e Instalação
- Primeiro Código com JavaScript

Para abrir o editor de código do Github vá em coding spaces ou aperte '.' no repositório desejado

### Conceitos Básicos

- Bibliotecas:
São **conjuntos de código** (funções, classes, etc.) que você pode usar para realizar tarefas específicas sem precisar escrever esse código do zero. Bibliotecas são como **caixas de ferramentas para programadores.**
- Dependências: 
São as **Bibliotecas que o projeto precisa para funcionar** corretamente. Quando você adiciona uma biblioteca ao seu projeto, ela se torna uma dependência.
- Frameworks:
São ***conjuntos mais abrangentes** de bibliotecas e ferramentas* que oferecem uma estrutura e diretrizes para o desenvolvimento de aplicações. Exemplo: Express.js 
- Gerenciador: 
npm (Node Package Manager) é o **gerenciador de pacotes** para a plataforma Node.js. Ele é usado para **instalar e gerenciar bibliotecas e dependências em projetos Node.js**.
- Servidor: 
Node.js é um ambiente de execução JavaScript no **lado do servidor.**

### Node:

Para instalar o gerenciador do node:
```
npm init -y
```
Quando fizer isso, um arquivo **package.json** será criado, segue uma descrição dos conteúdos do código desse json:
```
{
  "name": "coding1", //NOME DO PROJETO
  "version": "1.0.0", //VERSAO DO PROJETO
  "description": "Repositorio que a professora mandou eu criar", // DESCRIÇÃO
  "main": "Aula.js", //ARQUIVO PRINCIPAL DO PROJETO 
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "keywords": [],
  "author": "",
  "license": "ISC"
}
```
Em seguida vamos instalar o Node
```
npm install Node
```
E se eu quiser checar qual a versão do Node que foi instalada?
```
node --version
```

### Primeiro código com Javascript:

Vamos criar o nosso primeiro código "Hello World" no Javascript, lembrando que é fundamental terminar cada linha com ";"
```
console.log = "Hello World";
```
Para executar o código utilizamos o Node da seguinte forma:
```
node aula.js
[Hello World]
``` 
Primeiro exemplo de calculo: 
```
console.log("Hello World");
troco = 100 - 90;
console.log("Olá, seu troco é "+troco);
```




Editor de código online para JavaScript: [CodePen](https://codepen.io/)