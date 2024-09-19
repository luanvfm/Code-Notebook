
# Módulo "datetime" Python

Para obter a data e hora atual se utiliza a função 
```
x = datetime.now()
vai ficar assim:
x = 2024-09-10 12:34:56.789123
```
Utiliza **.strftime**
variaveis:

- d: data
- m: mês
- Y: ano

--

- H: hora
- M: minutos
- S: segundos

Se quiser formatar a data pra ficar bonitinho
```
data_formatada = x.strftime("%d/%m/%Y %H:%M:%S")
vai ficar assim:
x = 10/09/2024 12:34:56
```
Apenas a data: data() 
Apenas a hora: time()