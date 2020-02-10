# Definições 

## Fork

Uma curva que você faz e pega os arquivos para edita-lós e depois subir no repositório. No Github quando você clica em fork no repositório de alguém, ele pega o repositório completo dessa pessoa e copia para sua conta git, lá você poderá editar esses arquivos e depois devolver a essa pessoa com as suas edições, se a pessoa aceitar, suas alterações também entram no repositório dele.

## Branch

É ramificações que você faz para quando tiver desenvolvendo novas funcionalidades. Quando você inicia o git init você tem um branch padrão que é o master. Quando tiver trabalhando em equipe evite desenvolver no branch master pois poderá dar muitos conflitos. Sempre crie um branch para fazer suas modificações. Por exemplo, você vai desenvolver uma funcionalidade nova para listar os clientes do banco de dados e editar, você poderia criar um novo branch chamado clientes e trabalhar nesse branch para depois jogar ao master

## clone

Como a própria palavra diz é um clone. Esse comando serve para você clonar repositórios de uma outra pessoa. No github você pode clonar repositórios digitando no console do seu sistema operacional git clone URL_DO_REPOSITORIO

## track

Creio que aqui você fala da área de untrack files. Quando você inicia o git e logo após isso você começa a editar arquivos nessa pasta que você iniciou o git ou também coloca novas arquivos então ele fica como untrack files (arquivos não trackeados) que é arquivos não "vigiados" pelo git, ou seja, que não estão ainda na pasta .git ou que estão e foram modificados. Quando você da um git add . ou git add arquivo.extensao ele entra para o track files que significa que o git ta olhando mas ainda não está no repositório git. Só depois que você da git commit -m "descrição do commit" é que ele sai dessa área e entra totalmente para o repositório git.


# Guia de Comandos

COMANDO                                      |           DESCRIÇÃO
---------------------------------------------|--------------------------------------------- 
git init                                     | Transforma o diretorio em um repositorio GIT
git ls-files	                             | Lista os arquivos controlados pelo git
git status	                             | Mosta o estado atual do repositorio, arquivos estao sendo ou nao controlodos pelo git, que estao sendo==(track), nao sendo==(untracked)
git add <ARQUIVO>       	             | Indica o arquivo que recebera o versionamento git
git commit -m <MENSAGEM>	             | Grava as alteracoes no repositorio, -m é paramentro que indica que será escrita uma mensagem
git config --global user.name "CARLOS NETO"  | Indica o nome da pessoa que esta fazendo a alteracao no arquivo, "--global user.name" diz que a configuracao será para todos os arquivos da maquina, se não houvesse o parametro "--global" e o nome/email valeria apenas para o respectivo repositório 
git config --global user.email "eu@bol.com"  | Indica o email da pessoa que esta realizando as respectivas alteracoes
git whatchanged <ARQUIVO>	             | "O que mudou", Mosta o historico de commit do respectivo arquivo
git tag <NOMEDATAG/version1.0>               | Adiciona tag de controle de versao ao respectivo commit, entao para cada commit, é interessante adicionar uma tag, para melhor fluxo de controle do codigo
git tag		                             | Lista todas as tag's do projeto, mostrando as versoes
git diff <TAG-1> <TAG-2>                     | Mostra as linhas modificadas/adicionadas/removida das respectivas tag's
git blame                                    | Mostra o responsavel por cada linha no codigo



# Git Flow

## Tipos de Branches

Em um versionamento temos três tipos de branches:

* **Master**: Terá apenas as versões estáveis do projeto. As tags representarão versões do projeto;

* **Develop**: Centraliza todo o processo de desenvolvimento atual do projeto;
 
* **Features**: Branches isoladas, destinada a uma respectiva tarefa em específico do projeto. São criadas sempre a partir da Develop, e serão mergeadas sempre na Develop.

* **Hotfix**: São branches locais, geradas e posteriormente incorporadas na **Master**, criadas a fim de solucionar um bug que está presente uma versão em produção.

* **Release**: São branches locais, geradas na **Develop** e posteriormente incorporadas na **Master** e na **Develop**, servem para a criação de uma nova versão de produção, e a criação/atualização do arquivo CHANGES, responsável por expor o nome dos commits feito na versão de momento. 

## Branch de Features

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

## Criação de Branche de versão (Release Branch)

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

## Hotfix

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

# Chave SSH

Chave de segurança é responsável por identificar nossa máquina quando fizermos as interações entre nosso projeto e o serviço do Github. Caso não exista essa configuração entre nossa máquina e a conta do Github, o acesso ao serviço pelos comandos do Git será negado.

```shell_script
$ ssh-keygen -t rsa -C "seu_email@provedor.com"
```

Em algumas versões, pode ser necessário incluir também a opção -b 2048 ou -b 4096 para indicar o tamanho da chave a ser gerada. A seguir, será solicitada a entrada de uma senha para a chave de segurança. Caso o computador seja público ou compartilhado, é recomendado que sua chave esteja protegida por uma senha. Caso contrário, recomendamos que a senha seja ignorada, bastando pressionar Enter ao ser solicitada a senha e a confirmação de senha. Ao término do processo você deve ver uma mensagem similar à seguinte:

```shell_script
Your identification has been saved in /Users/seu_usuario/.ssh/id_rsa.
Your public key has been saved in /Users/seu_usuario/.ssh/id_rsa.pub.
The key fingerprint is:
01:0f:f4:3b:ca:85:d6:17:a1:7d:f0:68:9d:f0:a2:db seu_email@provedor.com
The key's randomart image is:
+--[ RSA 2048]----+
|     .+   +      |
|       = o O .   |
|        = * *    |
|       o = +     |
|      o S .      |
|     o o =       |
|      o . E      |
|                 |
|                 |
+-----------------+
```

Com isso, dois arquivos serão gerados: a sua chave privada e a sua chave pública, Agora será necessário realizar o login no http://github.com e seguir para as configurações do seu perfil. Siga "Settings", "SSH and GPG keys" e "New SSH key". Insira na caixa de texto o conteúdo do seu arquivo id_rsa.pub. O local exato do arquivo foi informado na saída do processo de criação da chave. Cole-o exatamente como ele está, sem adição de espaços ou quebras de linha.


## Habilitar Autocomplete

Para instalar o utilitário, execute:

```shell_script
$ sudo apt-get install git-core bash-completion
```

Verifique qual o caminho da instalação do autocomplete:

```shell_script
$ source /etc/bash_completion.d/git

$ source /usr/share/bash-completion/completions/git
```

Para inicialização automática:

```shell_script
$ echo "source /etc/bash_completion.d/git" >> ~./bashrc
```
