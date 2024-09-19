var readlineSync = require('readline-sync');

var real = readlineSync.question('Insira o valor atual do real em relação ao dólar: ');
var dolar = readlineSync.question('Insira o valor atual do dolar em relação ao real: ');
var realproposto = readlineSync.question('Insira o valor em real que você quer converter para dólar: ');
var dolarproposto = readlineSync.question('Insira o valor em dolar que você quer converter para real: ');


real = parseFloat(real);
dolar = parseFloat(dolar);
realproposto = parseFloat(realproposto);
dolarproposto = parseFloat(dolarproposto);

var realfinal = realproposto / dolar;
var dolarfinal = dolarproposto / real;

var realfinalformatado = realfinal.toFixed(2);
var dolarfinalformatado = dolarfinal.toFixed(2);

console.log(`O seu valor convertido de dólar para real é: ${dolarfinalformatado}`);
console.log(`O seu valor convertido de real para dólar é: ${realfinalformatado}`);

