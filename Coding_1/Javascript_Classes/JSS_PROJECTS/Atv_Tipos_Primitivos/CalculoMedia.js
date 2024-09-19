var readlineSync = require('readline-sync');

var Nota1 = readlineSync.question('Qual a primeira nota? ');
var Nota2 = readlineSync.question('Qual a segunda nota? ');
var Nota3 = readlineSync.question('Qual a terceira nota? ');

Nota1 = Number(Nota1);
Nota2 = Number(Nota2);
Nota3 = Number(Nota3);

var media = (Nota1 + Nota2 + Nota3) / 3;
var mediaformatada = media.toFixed(1);
// formata a média

console.log(`O resultado da média é ${mediaformatada}`);
