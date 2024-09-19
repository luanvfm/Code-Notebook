var readlineSync = require('readline-sync');

var Celsius = readlineSync.question('Digite a temperatura em Celsius: ');
var ConverterF = ((Celsius * 1.8) + 32);
var ConverterFformatado = ConverterF.toFixed(2);

console.log(`O valor da temperatura em Celsius convertido para Fahrenheit: ${ConverterF}`);