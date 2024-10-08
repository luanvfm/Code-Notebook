# **Utilizando Django**

- pip install django djangorestframework django-cors-headers
Instala o django
- pip freeze > requirements.txt
A setinha faz com que o arquivo do comando va para um arquivo txt

**PARA INICIAR O PROJETO DJANGO:**

    django-admin startproject api_root .
**CRIA A ESTRUTURA BASICA DO PROJETO DJANGO:**


- django-admin: ferramenta de linha de comando do Django.
- startproject: cria um novo projeto Django.
- api_root: nome do projeto.
- .: indica que o projeto será criado no diretório atual.

Depois desse comando, sera criado uma pasta com os seguintes arquivos: 

- `__init__`.py: marca o diretório como um pacote Python.
- settings.py: contém as configurações do projeto (conexão com banco de dados, apps instaladas, etc).
- urls.py: define as rotas que o projeto vai usar (como caminhos para suas views).
- wsgi.py: é o arquivo que o Django usa para comunicação com servidores da web.
- asgi.py: semelhante ao WSGI, mas voltado para a interface assíncrona.

## **manage.py**:
É um dos arquivos mais importantes do projeto django criado quando da o `startproject` e permite que você **execute comandos**

Principais comandos:
- Inicia um **servidor local** para você **testar sua aplicação** Django enquanto desenvolve.

    `python manage.py runserver`
- Cria uma **nova aplicação Django** dentro do projeto. Uma aplicação é uma parte modular da sua aplicação, como uma seção de "blog", "contatos", etc.  
    `python manage.py startapp blog`
- **Aplica as mudanças no banco de dados baseadas nas definições de modelos (models)** que você criou.

    `python manage.py migrate`

- **Detecta as alterações nos seus modelos (models) e cria novas "migrações"**, que são **arquivos responsáveis por atualizar o banco de dados.**

    `python manage.py makemigrations`
- **Cria um usuário administrador** que pode acessar o painel administrativo do Django.

    `python manage.py createsuperuser`
- **Testar seu código**

    `python manage.py test``

## **Mas o que são "Models?"**

*Models no Django são a classe que mapeia a tabela de Banco de Dados, cada atributo da classe representa uma coluna na tabela*;
-
*Descreve a forma que os dados serão armazenados e manipulados no Banco de Dados, como **campos (colunas do bd)**, **relações entre tabelas (chaves estrangeiras)** e **regras de validação para os dados***;

**Exemplo:**

    `from django.db import models

    class Cliente(models.Model):
    
    nome = models.CharField(max_length=100)  
    # Nome do cliente (coluna VARCHAR no banco)
    email = models.EmailField()  # Email do cliente (valida formato de email)
    data_nascimento = models.DateField()  # Data de nascimento  (coluna DATE)
    criado_em = models.DateTimeField(auto_now_add=True)  # Armazena quando o cliente foi criado

    def __str__(self):
        return self.nome  # Representação em string de um cliente`

### Campos Comuns Utilizados no Models
- `CharField(max_length=N):` Um campo para armazenar texto curto (coluna VARCHAR). O argumento max_length define o tamanho máximo do campo.
- `TextField():` Um campo para armazenar texto longo (coluna TEXT).
- `IntegerField():` Um campo para armazenar números inteiros (coluna INTEGER).
- `FloatField():` Um campo para armazenar números decimais (coluna FLOAT).
- `BooleanField():` Um campo para armazenar valores booleanos (coluna BOOLEAN).
- `DateField():` Um campo para armazenar datas (coluna DATE).
- `DateTimeField():` Um campo para armazenar data e hora (coluna DATETIME).
- `EmailField():` Um campo para armazenar emails com validação automática.
- `ForeignKey():` Um campo que define uma relação de chave estrangeira com outro modelo.

## Migrações
*Após definir models, é necessário sincronizar com o bando de dados, isso é feito com as migrações, “scripts” que o Django gera para aplicar mudanças no banco de dados (como criar tabelas, adicionar ou modificar colunas)*
-

- Crie ou modifique um model.
- Rode `py manage.py makemigrations` para criar uma migração baseada nas mudanças.
-Aplique `py manage.py migrate` para atualizar o banco de dados conforme definido nos models.

**Relações entre Models:**
É permitido o relacionamento entre tabelas, entre elas as mais comuns são:
**One-to-Many**: Com um campo de `ForeignKey`, um cliente pode fazer varios pedidos mas cada pedido pertence apenas a um cliente.
**Many-to-Many**: Quando varias instancias de um model se relacionam com varias instancias de outro. Exemplo: **um produto pode estar em várias categorias, e uma categoria pode conter vários produtos.**, para isso vamos usar o campo `ManytoManyField()`

    `class Categoria(models.Model):
    nome = models.CharField(max_length=100)

    class Produto(models.Model):
    nome = models.CharField(max_length=100)
    categorias = models.ManyToManyField(Categoria)`

**One-to-One**: Quando uma instância de um model tem relação exclusiva com uma instância de outro model, exemplo: um cliente só pode ter um perfil.

    `class Perfil(models.Model):
    cliente = models.OneToOneField(Cliente, on_delete=models.CASCADE)
    biografia = models.TextField()`

## Manipulacao de Dados com Models:
Para Criar um novo Objeto:

`novo_cliente = Cliente(nome="Maria", email="maria@example.com", data_nascimento="1990-01-01")
novo_cliente.save()`

Para Consultar um Objeto:

    clientes = Cliente.objects.all()  # Retorna todos os clientes
    cliente = Cliente.objects.get(id=1)  # Retorna o cliente com o ID 1

Para atualizar um objeto:
    cliente = Cliente.objects.get(id=1)
    cliente.nome = "João"
    cliente.save()
Para deletar um Objeto:
    cliente = Cliente.objects.get(id=1)
    cliente.delete()



