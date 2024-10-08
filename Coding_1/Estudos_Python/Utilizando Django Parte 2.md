# **Utilizando Django Parte 2**

## Settings.py

Após iniciar a aplicação com `python manage.py startapp api_rest`, é necessário adicionar ela na pasta settings do django para ele saber que a aplicação existe.

**Toda aplicação precisa ser adicionada a parte INSTALLED_APPS do settings do django.**

Além disso, funcionalidades extras do Django também precisam ser adicionadas, nesse caso adicionei o rest_framework e o corsheaders.

- *rest_framework:* Ativa o Django REST Framework, que permite a criação de APIs no Django.

- *corsheaders:* Ativa o suporte a CORS, permitindo ou restringindo requisições de diferentes domínios à sua API.

- *api_rest:* Adiciona a sua aplicação customizada ao projeto, permitindo que o Django reconheça sua lógica de negócio e suas definições de rotas e dados.

**Ativando o Corsheaders no MIDDLEWARE do settings.py:**

**MIDDLEWARE** é um compenente nas configurações que **controla a rede de requisições e respostas**, ao adicionar o Cors, que é um middleware, estamos permitindo que ele manipule quais foram as requisições da rede antes que cheguem no Cliente.

    MIDDLEWARE = [
        'corsheaders.middleware.CorsMiddleware', 
        'django.middleware.security.SecurityMiddleware',
    # ... outros middlewares
    ]

Após isso vamos configurar os sites e hosts na whitelist do Cors da seguinte maneira: 
CORS_ALLOWED_ORIGINS = [
    "https://example.com",
    "https://sub.example.com",
    "http://localhost:8080",
]

`CORS_ORIGIN_ALLOW_ALL = True (Caso queira liberar para todos acessarem.)`

## **Criando Módulos (models.py)**

- Dentro da pasta da aplicação, nesse caso foi api_rest vá em `models.py`.
