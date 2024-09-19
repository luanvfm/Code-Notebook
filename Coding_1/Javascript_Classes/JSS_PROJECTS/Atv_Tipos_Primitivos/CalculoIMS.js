let readlineSync = require('readline-sync');

let peso = readlineSync.question('Digite seu peso: '); 
let altura = readlineSync.question('Digite seu altura em metros: ');

let imc = peso / (altura * altura);
let imcFormatado = imc.toFixed(2);
console.log(`O seu IMC é: ${imcFormatado}`);



