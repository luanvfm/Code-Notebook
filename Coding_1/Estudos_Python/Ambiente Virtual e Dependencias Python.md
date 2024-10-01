
# Como Criar um Ambiente Virtual Python (venv):    
[01/10/2024]

- Entenda o que é uma venv no Python e como criá-la
- Crie o ambiente venv
- Instalando dependências
- Lista com as dependências mais comuns 

*O **venv** é um **ambiente virtual separado para cada projeto** criado no Python em que você pode **instalar diferentes dependências de cada projeto sem que eles interfiram** em um ao outro.* 

***Exemplos:*** 
-
Tem **dois projetos** diferentes em Python. O **Projeto A** precisa de uma **versão específica de um pacote**, enquanto o **Projeto B** precisa de uma **versão diferente desse mesmo pacote**.

**Se você instalar pacotes** de forma "global" (ou seja, **diretamente no seu sistema**), pode acabar criando um **conflito entre essas versões.**

***

**Exemplo 1**: Você tem o **Projeto A**, que usa a **versão 1.0** de um pacote chamado `requests`. O **Projeto B** precisa da **versão 2.0** do `requests`. **Se instalar a versão 2.0 de forma global**, o **Projeto A pode parar de funcionar** porque ele **depende da versão 1.0**.

**Exemplo 2**: Você quer **testar um novo pacote** ou uma **nova versão de um pacote** no **Projeto C**. Se fizer isso de **forma global**, pode acabar **estragando outros projetos** que dependem da versão antiga.

**Como Criar o Ambiente venv**
-
- **Entre na pasta do Projeto** que você quer criar.
- No terminal dentro da pasta, **digite:**  

    `python -m venv meu_ambiente_virtual`  

    Isso cria uma pasta meu_ambiente_virtual, que **contém uma cópia isolada do Python e ferramentas necessárias.**

Para começar a trabalhar no projeto você precisa **ativar esse ambiente virtual** da seguinte forma:

    meu_ambiente_virtual\Scripts\activate

A partir disso você já pode **instalar qualquer pacote sem afetar outro projetos:**

    pip install requests==1.0 
    #exemplo: instala o requests versao 1.0

**Quando terminar utilize:**

    deactivate

## **Instalando dependências no Python:**
- **`pip`** é o **gerenciador de pacotes do python.**
- Para **instalar uma dependência**, use **`pip install`**.
- Se eu quiser **instalar várias dependências simultâneamente**, posso criar um arquivo chamado **`requirements.txt`** que tenha esse modelo:  
   **`requests==2.26.0     
    Flask==2.0.1 
    numpy==1.21.0`**


    Depois para instalar todas de uma vez usa o comando: 

    **`pip install -r requirements.txt`**
- Para **verificar quais pacotes estão instalados**:

    **`pip freeze`**

### **Segue lista com as dependências mais comuns no Python e suas funções:**

**requests:** Usada para fazer requisições HTTP. Muito útil para interagir com APIs.

    pip install requests

**Flask:** Um micro framework para desenvolvimento de aplicações web.

    pip install Flask

**Django:** Um framework completo para desenvolvimento web, com muitas funcionalidades embutidas.

    pip install Django

**numpy:** Uma biblioteca para computação numérica, especialmente usada para trabalhar com arrays e álgebra linear.

    pip install numpy

**pandas:** Muito usada para análise de dados, oferece estruturas de dados e ferramentas de manipulação de dados.

    pip install pandas

**matplotlib:** Utilizada para gerar gráficos e visualizações.

    pip install matplotlib

**scikit-learn:** Biblioteca para machine learning, que inclui ferramentas para aprendizado supervisionado e não supervisionado.

    pip install scikit-learn

**SQLAlchemy:** Um ORM (Object-Relational Mapper) popular para trabalhar com bancos de dados relacionais em Python.

    pip install SQLAlchemy

**pytest:** Um framework para testes automatizados em Python.

    pip install pytest

**virtualenvwrapper** (opcional): Um conjunto de extensões que facilita o uso de ambientes virtuais.

    pip install virtualenvwrapper
