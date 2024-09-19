var readlineSync = require('readline-sync');

var preco = readlineSync.question('Insira o valor do produto que deseja: ');
var desconto = readlineSync.question('Insira o percentual do desconto: ');

var desconto = desconto / 100;
var precofinal = preco * desconto;

var pfinalformatado = precofinal.toFixed(2);
console.log(`O preco final do seu produto com desconto é: ${pfinalformatado} `);
