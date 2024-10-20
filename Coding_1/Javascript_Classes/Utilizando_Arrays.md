
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

