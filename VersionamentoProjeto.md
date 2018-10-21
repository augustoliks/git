# Tipos de Branches

Em um versionamento temos três tipos de branches:

**Master**: Terá apenas as versões estáveis do projeto. As tags representarão versões do projeto;

**Develop**: Centraliza todo o processo de desenvolvimento atual do projeto;

**Features**: Branches isoladas, destinada a uma respectiva tarefa em específico do projeto. São criadas sempre a partir da Develop, e serão mergeadas sempre na Develop.

**Hotfix**: São branches locais, geradas e posteriormente incorporadas na **Master**, criadas a fim de solucionar um bug que está presente uma versão em produção.

**Release**: São branches locais, geradas na **Develop** e posteriormente incorporadas na **Master** e na **Develop**, servem para a criação de uma nova versão de produção, e a criação/atualização do arquivo CHANGES, responsável por expor o nome dos commits feito na versão de momento. 

# Branch de Features

> Criação de uma branch de feature.

```
$ git checkout develop
$ git pull origin develop
$ git checkout -b ArrumandoLayout
```

> Incorporando tais modificações na develop

```
$ git checkout develop
$ git pull origin develop
$ git merge --no-ff ArrumandoLayout
$ git branch -d ArrumandoLayout
$ git push origin develop
```

# Criação de Branche de versão (Release Branch)

> Criando branch local denominada *release-0.1.0*, apenas para fazer a versionamento. O bump-version é um shell script que irá pegar o nome de cada commit dado na respectiva versão, e criar um arquivo texto com o nome da versão e os commits, isto serve para deixam de uma maneira clara o que foi feita em cada versão.

```
$ git checkout develop
$ git pull origin develop
$ git checkout -b release-0.1.0
$ git fetch origin --tags
$ ./bump-version.sh 0.1.0

// Alterar arquivos de versão (pom.xml, etc...)

$ git commit -a -m "Versão alterada para 0.1.0"
```

> Inserindo na master

```
$ git checkout master
$ git pull origin master
$ git merge --no-ff release-0.1.0
$ git push origin master
$ git tag -a v0.1.0 -m "Versão 0.1.0"
$ git push origin --tags
```

> Feito o versionamento na master, é hora de incorporar tais commits que representarão a criação de nova versão

```
$ git checkout develop
$ git merge --no-ff release-0.1.0
$ git branch -d release-0.1.0
```

# Hotfix

> Gerando branch de hotfix a partir da master

```
$ git checkout master
$ git pull origin master
$ git checkout -b hotfix-0.1.1
$ git fetch origin --tags

// Faz as alterações necessárias

$ ./bump-version.sh 0.1.1

$ git commit -a -m "Versão alterada 0.1.1"
```

> Incorporando hotfix na master

```
$ git checkout master
$ git pull origin master
$ git merge --no-ff hotfix-0.1.1
$ git push origin master
$ git tag -a v0.1.1 -m "hotfix-0.1.1 - Correção do bug X"
$ git push origin --tags
```

> Integrando na develop.

```
$ git checkout develop
$ git pull origin develop
$ git merge --no-ff hotfix-0.1.1
```

> Caso há branch do tipo **release**. Elas também deverão incorporar as alterações da hotfix.

```
$ git branch -d hotfix-0.1.1
```


