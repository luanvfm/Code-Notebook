
# Oficina de GitHub:

Tópicos:

- Diferença de Git x Github:
- Comandos Iniciais:
- Passo a Passo:

_**Diferença de Git x Github:**_  

**Github:** plataforma online que tem o git como base;  
**Git:** Ferramenta de versionamento de código. 

_**Comandos Iniciais:**_  
- **Add:** Adiciona mudanças feitas nos arquivos ao "staging area" (área de preparação), preparando-os para o próximo commit.  

- **Commit:** Registra as mudanças que estão na área de preparação, criando um ponto de controle no histórico do repositório.  

- **Push:**  Envia os commits locais para um repositório remoto, como o GitHub, atualizando-o com suas alterações.

_**Modo de funcionamento:**_ 

**Main:** Principal linha do projeto.  
**Branch:** Linha secundária que pode ser adicionada com `merge`.

### Primeiras instruções:

**Passo a Passo:**  

- Abra uma pasta e nesta pasta dê Git Bash Here. 
Caso a já não tenha um repositório criado no github, comece com `-git init`.

- Para colocar em um repositório do GitHub já existente vai usar:
`git clone [nome_do_repositorio]` (obs: Shift+Insert para copiar e colar).

- Dentro da pasta clonada, crie um arquivo chamado "README.md".
`git add .` Vai adicionar todas as alterações para dentro do repositório, caso queira adicionar apenas um arquivo específico pode utilizar `git add ""`

- Dê um `git commit -m ""` quase sempre, com um titulo simples e entendivel