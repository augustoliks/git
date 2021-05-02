# Comandos de Configuração 

Indica o nome da pessoa que esta fazendo as alterações no projeto

```console
git config --global user.email "carlos.neto.dev@gmail" 
```

---

Indica o editor de texto que o git irá abrir quando for necessário escrever alguma mensagem  

```console
git config --global core.editor $(which code)
```

---

Indica que o diretório presente, será versionado com Git. Ao executar, será criado um diretório oculto `.git`, do qual será responsável por manter o estado do versionamento

```console
git init                                                
```

---

Indica o nome da pessoa que esta fazendo as alterações no projeto. O parâmetro `--global` diz que a configuração será para todos os arquivos da máquina, caso não tenha, a configuração valeria apenas para o projeto em questão 

```console
git config --global user.name "Carlos Neto"             
```

# Comandos de Consulta

Mostra as linhas de modificados entra as tag's indicadas

```console
git diff <TAG-1> <TAG-2>                                
```

---

Verifica o histórico de commits, com seu respectivo hash, autor e data   

```console
git log                                                 
```

---

Verifica o histórico de commits, em visualização de gráficos de linha temporal, levando em considerações o histórico de ramificações do projeto 

```console
git log --graph --decorate                              
```

---

"O que mudou?", mosta as mudanças que ocorreram no arquivo indicado, tendo como base, os commits feitos no mesmo

```console
git whatchanged <ARQUIVO>	                            
```

---

Lista somente os arquivos que estão em estado `index`/`track`

```console
git ls-files	                                        
```

# Comandos de Operações Remotas

Baixa o projeto existente em um servidor remoto

```console
git clone <URL-DO-PROJETO>                              
```

---

Associa o versionamento com um repositório remoto centralizado. O parâmetro `origin`, é um apelido de associação para o repositório externo

```console
git remote add origin <URL-REPOSITORIO-REMOTO>          
```

---

Envia as modificações (*patch*) locais, ou seja, as que estão em estado `head`, para repositório externo

```console
git push origin main                                    
```

---

Sincronizar as ramificações externas com o projeto local.

```console
git fetch                                               
```

# Comandos de Mudanças de Status

Indexa o arquivo indicado ao versionamento git, mudando o seu estágio do mesmo de `working-dir`/`untrack` para `index`

```console
git add <ARQUIVO>       	                            
```

---

Remove o arquivo do versionamento, mudando o seu estágio de `index` para `working-dir`/`untrack`

```console
git rm <ARQUIVO>                                        
```

---

Muda o estado do arquivo indicado, de `index` para `head`. O parâmetro `-m` é necessário indicar uma mensagem que descreve a mudança que foi feita neste arquivo, se não indicado o parâmeto, será aberto o editor indicado no comando `git config --global core.editor $(which code)`

```console
git commit <ARQUIVO-OU-DIRETORIO> -m <MENSAGEM>         
```

---

Adiciona um rótulo ao presente commit, ou seja, um atalho de alto nível a um determinado o commit. Funcional para indicar um ponto de interesse, como versões estáveis, versões de testes entre outras  

```console
git tag -a <NOME-DA-TAG>                                
```

---

Lista todas as tag's do projeto

```console
git tag		                                            
```

Lista as branches locais presentes no projeto

```console
git branch                                              
```

---

Lista todas as branches presentes no projeto, levando em consideração as branches remotas

```console
git branch -a                                           
```

---

Cria uma nova ramificação a partir da branch atual

```console
git checkout -b <NOME-DA-BRANCH>                        
```

---

Muda o ambiente para a branch especificada. Para mudar o ambiente, é necessário que todos os arquivos estejam no estado 

```console
git checkout <NOME-DA-BRANCH>                           
```

---

Mescla as mudanças, **na branch atual**, as modificações feitas na branch indicada em `<NOME-DA-BRANCH>`

```console
git merge <NOME-DA-BRANCH>                              
```
