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