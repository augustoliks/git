        COMANDO             |        DESCRIÇÃO
----------------------------|---------------------------- 
git init                    | Transforma o diretorio em um repositorio GIT
git ls-files	            | Lista os arquivos controlados pelo git
git status	            | Mosta o estado atual do repositorio, arquivos estao sendo ou nao controlodos pelo git, que estao sendo==(track), nao sendo==(untracked)
git add <ARQUIVO>       	| Indica o arquivo que recebera o versionamento git
git commit -m <MENSAGEM>	| Grava as alteracoes no repositorio, -m é paramentro que indica que será escrita uma mensagem
git config --global user.name "CARLOS NETO"	| Indica o nome da pessoa que esta fazendo a alteracao no arquivo, "--global user.name" diz que a configuracao será para todos os arquivos da maquina, se não houvesse o parametro "--global" e o nome/email valeria apenas para o respectivo repositório 
git config --global user.email "augusto.liks@gmail.com" | Indica o email da pessoa que esta realizando as respectivas alteracoes
git whatchanged <ARQUIVO>	    | "O que mudou", Mosta o historico de commit do respectivo arquivo
git tag <NOMEDATAG/version1.0>  | Adiciona tag de controle de versao ao respectivo commit, entao para cada commit, é interessante adicionar uma tag, para melhor fluxo de controle do codigo
git tag		                    | Lista todas as tag's do projeto, mostrando as versoes
git diff <TAG-1> <TAG-2>        | Mostra as linhas modificadas/adicionadas/removida das respectivas tag's
git blame                       | Mostra o responsavel por cada linha no codigo
