# Git CLI 

As maneiras convencionais de se utilizar o Git, são por meio de sua CLI — utilitário de linha de comando — e por soluções de interface gráfica. Alguma das soluções de suite gráficas são:

- [GitKraken](https://www.gitkraken.com/): Suíte Gráfica focada nas funcionalidades do Git;
- [VSCode](https://code.visualstudio.com/): Editor de texto, que por padrão, oferece as funcionalidades básicas do Git de forma visual;
- [IDEs da JetBrains](https://www.jetbrains.com/pt-br/): Ambientes de Desenvolvimentos Integrados para Python, Java, Golang e etc, que assim como VSCode, oferece recursos visuais para interação com o Git.

> :gear: **Instalação**: Em distribuições Linux, a CLI do Git normalmente está disponível nos repositórios oficias. Já em sistemas Windows ou MacOS, o processo de instalação é feito por meio de instaladores com interface gráfica. Para mais detalhes, acessar [o guia de instalação oficial](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

Todas as funcionalidades estão disponíveis na CLI, fato que não necessariamente é verdade para as soluções de suíte gráfica.  

Esta seção, irá focar na exploração dos recursos do Git via CLI. O conteúdo será organizado da seguinte forma:

- [Configuração](cli-config.md): Configuração de metadados de identidade;
> `git config`

- [Controle de Estados](cli-state.md): Controle de **areas** e **status** do ciclo de vida de versionamento de arquivos;
> `git init`, `git add`, `git rm`, `git mv`, `git commit`, `git sparse-checkout`, `git restore`

- [Ramificações](cli-branch.md): Operações de *branching*, como criação de ramificação e mescla de conteúdo;
> `git branch`, `git checkout`, `git merge`, `git rebase`, `git reset`, `git tag`

- [Operações Remotas](cli-remote.md): Operações de sincronização com repositórios externos;
> `git push`, `git pull`, `git fetch`, `git remote`

- [Consulta de Histórico](cli-logs.md): Verificação do histórico de versionamento.
> `git log`, `git diff`, `git show`, `git status`, `git grep`, `git bisect`
