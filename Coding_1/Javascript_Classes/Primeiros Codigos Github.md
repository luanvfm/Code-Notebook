
# Configurando e Clonando Repositorio GitHub - 25/09/2024
Aprendemos a configurar token github e como clonar um repositorio para o VS Code.
**Topicos:**
- Como configurar um Repositorio Github 
- Como clonar do github
- Como enviar da Maquina para o Repositorio


## Configurando um Repostitório GitHub
No terminal, mande esses códigos para a pasta do terminal que voce criou 

- `$ git config --global user.name "luanvfm"`
- `$ git config --global user.email "luanventurafm2@gmail.com"`

Depois 
- Siga para configurações do Github,   
- Desça a página e vá para opções do desenvolvedor,  
- Crie um novo token com todas as opções selecionadas
- Copie o código para um bloco de notas.

Para **clonar um repositorio github**, pegue o link https do repositorio e digite, trocando o nome do link do repositorio:

`$ git clone https://github.com/luanvfm/Code-Notebook.git`

Para entrar na pasta do repositorio que você acabou de clonar utilize:

`cd Code-Notebook`

Se quiser ter certeza de que esta trabalhando na pasta certa utilize o comando:

`ls`

## Primeiros Códigos:

Códigos essenciais para utilizar o GitHub.
- **Para ver o status do GitHub:**  
    `git status`

- **Para adicionar arquivos ao GitHub: (Com "." no final voce vai adicionar todos os arquivos, mas se quiser adicionar um arquivo especifico usa só "nomedoarquivo.extensaodoarquivo")**  
    `git add .`

- **Para conectar os arquivos locais ao GitHub:**  
    `git init`

- **Para conectar os arquivos locais ao GitHub:**  
    `git commit -m "update"`
- **Para mandar os arquivos locais ao GitHub: (Irá exigir token):**  
    `git push origin main`  

Quando fizer esse git push vai aparecer uma telinha no github, neste telinha voce vai colar o **token** copiado anteriormente.



