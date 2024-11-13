
# Fundamentos do Javascript: Funções
[13/11/2024]
Fundamentos no Javascript, iniciação às funções.

- Como criar uma função
- 
- 
- 

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