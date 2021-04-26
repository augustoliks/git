# Git Flow

O Git Flow, é uma maneira padronizada para se trabalhar com recursos do Git, focado principalmente, para se obter uma produtividade elevada sobre o um projeto com muitos desenvolvedores. 

Quando tiver trabalhando em equipe evite desenvolver no branch main pois poderá dar muitos conflitos. Sempre crie um branch para fazer suas modificações. Por exemplo, você vai desenvolver uma funcionalidade nova para listar os clientes do banco de dados, você poderia criar um novo branch chamado clientes e trabalhar nesse branch para depois jogar ao main

## Terminologias

- **branch-main**: Branch principal do projeto, contendo somente as versões estáveis do projeto. As tags representarão versões do projeto;
- **branch-develop**: Centraliza todo o processo de desenvolvimento atual do projeto;
- **branch-feature**: Ramificações para se criar um ambiente isolado, que serám o escopo para se adicionar uma nova funcionalidade ao projeto. São criadas e mergeadas sempre na `develop`;
- **branch-hotfix**: Branches locais, geradas e posteriormente incorporadas na **main**, criadas a fim de solucionar um *bug* que está presente uma versão em produção;
- **branch-release**: Branches locais, geradas na **develop** e posteriormente incorporadas na **main** e na **develop** subsequentemente. Servem para a criação de uma nova versão de produção, em conjunto com a documentação do que foi feita na mesma;
- **fork**: Pode-se entender como uma adoção/clone de um projeto já existente, para sua conta. É possivel solicitar que as mudanças feitas sejam aderidas no projeto oriundos do fork em questão, em que as mudanças ficam pendentes, mediantes a aprovação do mantenedor do projeto.

## Flow

### Branch de Features

- Criação de uma **branch-feature**.

```console
$ git checkout develop
$ git pull origin develop
$ git checkout -b ArrumandoLayout
```

- Incorporando tais modificações na **branch-develop**

```console
$ git checkout develop
$ git pull origin develop
$ git merge --no-ff ArrumandoLayout
$ git branch -d ArrumandoLayout
$ git push origin develop
```

### Criação de Branche de versão (Release Branch)

- Criando branch local denominada *release-0.1.0*, apenas para fazer a versionamento. O bump-version é um shell script que irá pegar o nome de cada commit dado na respectiva versão, e criar um arquivo texto com o nome da versão e os commits, isto serve para deixam de uma maneira clara o que foi feita em cada versão.

```console
$ git checkout develop
$ git pull origin develop
$ git checkout -b release-0.1.0
$ git fetch origin --tags

# Documenta o que foi feito
# Altera os arquivos de gerenciamento de build, como por exemplo: pom.xml (maven); rpm.spec (Pacotes RPM); e poetry.lock (Python) etc...

$ git commit -a -m "Versão alterada para 0.1.0"
```

- Inserindo na main

```console
$ git checkout main
$ git pull origin main
$ git merge --no-ff release-0.1.0
$ git push origin main
$ git tag -a v0.1.0 -m "Versão 0.1.0"
$ git push origin --tags
```

- Feito o versionamento na main, é hora de incorporar tais commits que representarão a criação de nova versão

```console
$ git checkout develop
$ git merge --no-ff release-0.1.0
$ git branch -d release-0.1.0
```

### Hotfix

- Gerando branch de hotfix a partir da main

```console
$ git checkout main
$ git pull origin main
$ git checkout -b hotfix-0.1.1
$ git fetch origin --tags

# Faz as alterações necessárias
# Documenta o que foi feito
# Altera os arquivos de gerenciamento de build, como por exemplo: pom.xml (maven); rpm.spec (Pacotes RPM); e poetry.lock (Python) etc...

$ git commit -a -m "Versão alterada 0.1.1"
```

- Incorporando hotfix na main

```console
$ git checkout main
$ git pull origin main
$ git merge --no-ff hotfix-0.1.1
$ git push origin main
$ git tag -a v0.1.1 -m "hotfix-0.1.1 - Correção do bug X"
$ git push origin --tags
```

- Integrando na develop.

```console
$ git checkout develop
$ git pull origin develop
$ git merge --no-ff hotfix-0.1.1
```

- Caso há branch do tipo **release**. Elas também deverão incorporar as alterações da hotfix.

```console
$ git branch -d hotfix-0.1.1
```
