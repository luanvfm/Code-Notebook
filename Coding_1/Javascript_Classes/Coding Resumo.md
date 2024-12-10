# Iniciação ao Javascript

Esse projeto representa minhas anotações enquanto inicío meus estudos com JavaScript no curso de Análise e Desenvolvimento de Sistemas.



**Formas de _Declarar_ no JavaScript:**

* var: 
* let:
* const:


**Funções Básicas no JavaScript:**

_Print:_
```
var nome = 'natalya'
console.log(nome)
```
Se eu quiser utilizar a constante dentro de outra frase:
```
templateString = 'Olá ${nome}
```

### Operadores Matemáticos:
```
+  mais
-  menos
*  multiplicação
/  divisão
%  modulo (ou resto)
** potencia

```

### Operadores Lógicos
```
&&  significa E
||  significa OU
```
### Operadores de Comparação
```
==   igual
===  igual (Use mais esse pois confere o tipo também e evita erros)
>    maior que
<    menor que
>=   maior igual a
<=   menor igual a
!==  diferente / desigualdade (Use mais esse pois confere o tipo também e evita erros)
!=   diferente / desigualdade
```
Triple equals vs Double equals
```
2 == 2 // true
2 === 2 // true
2 === "2" // false
2 == "2" // true
```
"O double equals vai tentar nos ajudar na comparação, e ao notar que estamos tentando comparar tipos diferentes (string e number) ele vai tentar converter a string para number. No caso acima ele consegue e por isso temos o resultado true.

Entao por baixo dos panos o que aconteceu foi: **2 == Number("2") //true**

Com o triple equals o javascript nunca tenta converter os valores. Por isso, o resultado false.

Sendo assim, recomenda-se usar o **triple equals** para evitar surpresas."

### Operadores de Atribuição Mais Específicos:

* '+=': Atribui o valor e depois **adiciona**
* '-=': Atribui o valor e depois **subtrai**
* '*=': Atribui o valor e depois **multiplica**
* '/=': Atribui o valor e depois **divide**

São todos atalhos, segue alguns exemplos:
- *x = 3; x += 4;*
atalho para:
- *x = 3; x = x + 4;*
e
- _x = 2; x *= 3;_
atalho para:
- *x = 2; x = x * 3;*

---



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



# Introdução a Programação Javascript 3

*11/09/2024*

### Sumário
- Tipos de Variáveis
- Iniciando e Exectando um projeto
- Comentários
-

*Javascript não precisa de ';'*

Inciando o projeto do javascript no terminal:
```
node init -y
```

Para executar um arquivo você escreve 
```
node [nome_do_arquivo]
```

### Variáveis

- var: *Forma mais comum e mais livre de declarar uma variável*
```
var = "Natalya";
```
- let: Proíbe que a variavél seja reatribuída mas não redeclarada.
Exemplo:
```
let rotulo = 'Natalya';
rotulo = '12345';
console.log(rotulo)

Nesse caso o console executaria a let rotulo como 12345 pois seu valor foi reatribuido, mas se eu quiser definir outra variavel com o nome de rotulo eu não vou poder.
```
- const: Proíbe que a variavel seja redeclarada e nem tenha seu valor reatribuido. 

---


**IMPORTANTE:** Para comentar no Javascript utilize // ou /* */ 

Código Final com exemplo de concatenação:

```
var x1 = 10;
var x2 = 90;
var some = x1 + x2;
console.log("O resultado da soma de 90 + 10 é: "+some);
```


# Primeiros Comandos de GIT 18/09/2024

Topicos:
- Introducao a comandos para versionamento de codigo no Git 
- Introducao a comandos no terminal

**INFORMACAO IMPORTANTE:** Crie um arquivo chamado **.gitignore** e nele coloque **/node_modules**, isso vai evitar que o arquivo fique muito pesado quando for dar **git push**
### Comandos do Terminal
- *Comando "ls"* no terminal? mostra todos os arquivos que estao localizado na pasta. 
- *Comando "cd"* serve para ir mudando de pasta em pasta. Exemplo: quero ir da pasta assim: Projetos>Javascript, seria **cd Javascript**.
- *Comando "clear"* serve para limpar o terminal.

### Comandos do Git:

- **git status**: Mostra todas as alteracoes que ainda **nao foram commitadas**.
- **git add**: O mais comum e **'git add .'** que adiciona todos os arquivos ainda nao commitados.
- **git restore**: Restaura arquivos de um commit passado.
- **git commit -m "mensagem"**: Salva o momento atual do codigo com uma mensagem para descrever o que foi feito.
- **git log**: Ve o historico de commits ja feitos.
- **git push origin main**: Primeiro push, caso de problema pode se usar o "-f" antes do origin main que e para forcar o push.
- **git pull --no-rebase origin main**:



# Configurando e Clonando Repositorio GitHub - 25/09/2024
Aprendemos a configurar token github e como clonar um repositorio para o VS Code.
**Topicos:**
- Como configurar um Repositorio Github 
- Como clonar do github
- Como enviar da Maquina para o Repositorio


## Configurando um Repostitório GitHub
No terminal, mande esses códigos para a pasta do terminal que voce criou 

- `$ git config --global user.name "luanvfm"`
- `$ git config --global user.email "luanventurafm2@gmail.com"`
*Para Configurar um repo já existente:*
- `git remote add origin git@github.com:User/UserRepo.git`

Depois 
- Siga para configurações do Github,   
- Desça a página e vá para opções do desenvolvedor,  
- Crie um novo token com todas as opções selecionadas
- Copie o código para um bloco de notas.

Para **clonar um repositorio github**, pegue o link https do repositorio e digite, trocando o nome do link do repositorio:

`$ git clone https://github.com/luanvfm/Code-Notebook.git`

Para entrar na pasta do repositorio que você acabou de clonar utilize:

`cd Code-Notebook`

Se quiser ter certeza de que esta trabalhando na pasta certa utilize o comando:

`ls`

## Primeiros Códigos:

Códigos essenciais para utilizar o GitHub.
- **Para ver o status do GitHub:**  
    `git status`

- **Para adicionar arquivos ao GitHub: (Com "." no final voce vai adicionar todos os arquivos, mas se quiser adicionar um arquivo especifico usa só "nomedoarquivo.extensaodoarquivo")**  
    `git add .`

- **Para conectar os arquivos locais ao GitHub:**  
    `git init`

- **Para conectar os arquivos locais ao GitHub:**  
    `git commit -m "update"`
- **Para mandar os arquivos locais ao GitHub: (Irá exigir token):**  
    `git push origin main`  

Quando fizer esse git push vai aparecer uma telinha no github, neste telinha voce vai colar o **token** copiado anteriormente.




# Utilizando Arrays no Javascript; 
[16/10/2024]
- Utilizando e Manipulando Arrays:

**Utilizando Arrays:**
---
- Para criar Arrays, faremos da seguinte forma:, lembrando que neste exemplo, o index de cada livro seria **0, 1, 2**
`let livros = ["javascript", "ECMAScript", "MongoDB"]`
- Se eu quiser consultar cada elemento pelo index faremos da seguinte maneira:
`console.log(livros[1]);`
- Se eu quiser consultar pelo **nome** e descobrir qual seu **index** eu teria que criar uma variavel e utilizar `indexOf`
`let consulta = livros.indexOf("MongoDB");`
**resposta do console: 3**
- Para retirar o último elemento de uma array:
`console.log(livros.pop());`
- Para adicionar um elemento na array 
`console.log(livros.push("novoLivro");` 
- Caso queira inserir um elemento no código de uma forma responsiva para o usuário faremos da seguinte forma:
```
let inserir = prompt("Digite o livro a ser inserido: ");
// Permite que o usuario escreva
console.log(livros.push(inserir));
// Insere o que foi escrito
```
- Para medir a quantidade de elementos na string:
`console.log("O total de frutas é " + frutas.length);`

- `shift()`Remove o primeiro elemento de uma array e mostra qual elemento foi removido;

- `unshift()` Adiciona um ou mais elementos no inicio da array e mostra a nova quantidade de elementos; 


- **`splice(0, 0, "Node.js");`** **O Splice serve para deletar e adicionar elementos**, ele funciona da seguinte maneira: **O primeiro número é o indice da localização**, o **segundo é o número de elementos para deletar a partir do indice**, e o **terceiro é o número de elementos para adicionar**
- Da um "print" no comando:
`console.log(livros)`




**Código Final da Aula:**
```
let livros = ["javascript", "ECMAScript", "MongoDB"];
//consulta por index e mostra o nome do elemento
console.log(livros[1]);
//consulta por nome do elemento e mostra o index
let consulta = livros.indexOf("MongoDB");
console.log(livros.pop());
//remove o ultimo elemento e mostra o elemento removido
console.log(livros.push("novoLivro", "Tartarugas de John Green", "Os Sete Maridos de Evelynn Hugo"));
//Adiciona elementos no final da array e mostra a quantidade do array

console.log(livros);
```


# Fundamentos do Javascript: Funções
[13/11/2024]
Fundamentos no Javascript, iniciação às funções.

- Como criar uma função


Para criar um function vai utilizar a seguinte estrutura de código, nela terá 3 tipos diferentes, o **título, parâmetro e retorno**:

Sintaxe:
```
função {
    bloco de codigo
}
```
Código exemplo:
```
function mediaMat (prova, redacao) {
    return (prova+redacao)/2

console.log(mediaMateria(10, 5));
}
```
**PARA DECLARAR UMA FUNÇÃO COM PARÂMETRO:**
```
const dobro = function(num) {
  return num * 2
}
```
veja que o num foi declarado junto da função, quando você chamar ela, o num vai ter que ser declarado junto com o que você quer:

Por exemplo:
`console.log(dobro(2))` ou para declarar no prompt `const num = ParseInt(Prompt())`

**Arrow Function:** é uma outra forma de declarar uma função, reconhecida por **=>** 

```
const falar = () => {
  return 'Vamos conversar?'
};
## A constante falar que não tem parametrôs definidos retorna o texto.
```

### Função Callback: 
- É um termo que pode ser utilizado para funções que são re-chamadas no código:

Exemplo: 

*Eu tenho varias funções para fazer essas operações matemáticas e quero fazer um novo cálculo, em vez de refazer a função todas, vou apenas declarar as constantes e criar uma nova variavel para poder resolver elas*

As funções acima: 
```
function somar(a, b) {
  return a + b
}

function subtrair(a, b) {
  return a - b
}

function multiplicar(a, b) {
  return a * b
}

function dividir(a, b) {
  return a / b
}
function ordenar(a, b) {
  if (a <= b) {
    return [a, b]
  } else {
    return [b, a]
  }
}

<b> #Preste atenção na ordenar, ela é interessante de se aprender <b>

```
Modelo do Callback:
```
function calcular(a, b, callback) {
  return callback(a, b)
}
```
Exemplo do Callback com as funções que mencionei:
```
const somaDoisNumeros = calcular(num1, num2, somar)
console.log(somaDoisNumeros) // 9

const subtracaoDoisNumeros = calcular(num1, num2, subtrair)
console.log(subtracaoDoisNumeros) // 5

const ordenarDoisNumeros = calcular(num1, num2, ordenar)
console.log(ordenarDoisNumeros) // [2, 7]
```


# Objetos

`Objetos são como se fossem objetos da vida real, cada objeto tem o seu nome e suas propiedades`

Primeiro você vai declarar um objeto e depois especificar o nome dele, de forma que

```
const objeto = new Object()
objeto.nome = 'cadeira'
objeto.tipo = 'madeira'
objeto.peso = '7'

const pokemon = {
    nome: 'Pikachu',
    tipo: 'eletrico',
    altura: '40.6',
}
```

Pra acessar cada propriedade você coloca o **nome do objeto** . **propriedade do objeto**

`console.log(pokemon.nome)` // Pikachu.

