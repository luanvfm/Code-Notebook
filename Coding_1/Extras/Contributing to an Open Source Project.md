
# GitHub - Contribuindo a um projeto open source
[09/10/2024]

*Minicurso da Dio para contribuir em projetos open-source do GitHub:*

## Convenção de Commits

| Tipo de Commit | Descrição                                    |
| -------------- | -------------------------------------------- |
| 'feat' | Adiciona uma nova funcionalidade no projeto.         |
| 'fix' | Corrige um erro ou problema no projeto.              |
| 'docs' | Altera a documentação do projeto. Ex.: README, comentários no código.              |
| 'style' | Realiza mudanças na aparência, sem alterar a funcionalidade.              |
| 'refactor' | Realiza mudanças no código que não alteram a funcionalidade.              |
| 'test' | Adiciona ou modifica testes no projeto.              |

Criando o primeiro pull request:

- Crie um fork de um repositorio;
- Clone localmente `git clone [link]`;
Para conectar o repositorio local com o original que foi forkado para manter o repositorio atualizado.;
- `git remote add upstream [link do projeto original]`;
Para checar se deu certo use `git remote -v`, vai aparecer como origin o seu **forkado** e upstream o **original**;    
Para atualizar as alterações do repositorio original no forkado use `git pull upstream main` obs: 'main' pode ser trocado por outra branch caso queira;
- Crie uma nova branch com `git checkout -b feat/community/luanvfm` obs: luanvfm pode ser qualquer nome;    
**`git checkout` pode ser utilizado tanto para criar novas branchs como para navegar entre diferentes branchs, caso eu esteja trabalhando numa branch chamada feature_x e queira voltar para a main eu utilizaria `git checkout main`;**
- `touch community/luanvfm.md` cria um arquivo luanvfm.md dentro da pasta community
- `git add community/luanvfm.md` 
- `git commit -m "feat: add luanvfm profile`
- `git push origin feat/community/luanvfm`


