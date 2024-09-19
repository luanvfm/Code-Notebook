
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