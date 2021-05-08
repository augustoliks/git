# Configuração Local

O comando `git config` faz a personalização local do utilitário. Com ele é possível definir o nome e email do autor que introduz as colaborações, o editor de texto que o git vai chamar quando algum comando precisar de uma entrada de texto, entre outras funcionalidades.

Se o comando `git config` for executado com o argumento `--system`, os valores serão formatados e salvos no arquivo `/etc/gitconfig`. Assim, todos os usuários do sistema terão as informações contidos neste como padrão. Caso o argumento passado for `--global`, os valores serão salvos em `~/.gitconfig`, e valerão como padrão para o usuário de sistema do qual o executou. Caso não for passado nenhum dos argumentos citados, e o usuário estiver em um **Working Directory**, ou seja, em repositório local, o arquivo alterado será o `.git/config`.

Assim, a ordem de sobrescrita dos metadados do `git config`, se dá pela seguinte ordem:

- `/etc/gitconfig`: Base de valores à nivel *System Wide*, ou seja, para todos os usuários;
- `~/.gitconfig`: Valores a nível de Usuário de Sistema - Sobrescreve o `/etc/gitconfig`;
- `.git/config`: Valores a nível de projeto - Sobrescreve o `/etc/gitconfig` e `~/.gitconfig`.

----

Indicar o nome da pessoa que esta fazendo as alterações no projeto:

```console
git config user.email "carlos.neto.dev@gmail" 
```

> :memo: O valor `"carlos.neto.dev@gmail"` é o nome exemplo do usuário

---

Indicar o nome da pessoa que esta fazendo as alterações no projeto:

```console
git config --global user.name "Carlos Neto"
```

> :memo: O valor `"Carlos Neto"` é o nome exemplo do usuário

---

Indicar o editor de texto que o git irá chamar quando for necessário escrever alguma mensagem :

```console
git config core.editor /usr/bin/code --wait
```

> :memo: O valor `/usr/bin/code` é o caminho ilustrativo de um VSCode. Este é o valor que deve ser alterado para o caminho absoluto do binário do editor de texto de sua preferência.

