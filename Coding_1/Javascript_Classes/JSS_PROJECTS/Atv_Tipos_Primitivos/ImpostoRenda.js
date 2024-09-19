var readlineSync = require('readline-sync');

var salario = readlineSync.question('Insira seu salário: ');
salario = parseFloat(salario);

if (salario <= 2259) {
    console.log(`Seu salário é ${salariocomImposto} e está isento de imposto de renda`);
}
else if (salario <= 2826) {
    imposto = salario * 0.075;
    salariocomImposto = salario - imposto;
    console.log(`Seu salário é ${salariocomImposto} e foi taxado 7,5% do imposto de renda`);
}
else if (salario <= 3751) {
    imposto = salario * 0.15;
    salariocomImposto = salario - imposto;
    console.log(`Seu salário é ${salariocomImposto} e foi taxado 15% do imposto de renda`);
}
else if (salario <= 4664) {
    imposto = salario * 0.225
    salariocomImposto = salario - imposto;
    console.log(`Seu salário é ${salariocomImposto} e foi taxado 22,5% do imposto de renda`);
}
else {
    imposto = salario * 0.275
    salariocomImposto = salario - imposto;
    console.log(`Seu salário é ${salariocomImposto} e foi taxado 27,5% do imposto de renda`);
}