# Guia de Comandos

## Comandos de Configuração 

Indica o nome da pessoa que esta fazendo as alterações no projeto

```bash
git config --global user.email "carlos.neto.dev@gmail" 
```

---

Indica o editor de texto que o git irá abrir quando for necessário escrever alguma mensagem  


```bash
git config --global core.editor $(which code)
```

Indica que o diretório presente, será versionado com Git. Ao executar, será criado um diretório oculto `.git`, do qual será responsável por manter o estado do versionamento

```bash
git init                                                
```

---

Indica o nome da pessoa que esta fazendo as alterações no projeto. O parâmetro `--global` diz que a configuração será para todos os arquivos da máquina, caso não tenha, a configuração valeria apenas para o projeto em questão 

```bash
git config --global user.name "Carlos Neto"             
```

## Comandos de Verificação de estado 


Mostra o estado atual do repositório, exibindo informações como por exemplo: arquivos que estão sendo versionados (com estado `index`/`track`); arquivos não indexados (com estado `working-dir`/`untrack`); arquivos modificados `modified`; e arquivos deletados `delete`.

```bash
git status	                                            
```

---

Indexa o arquivo indicado ao versionamento git, mudando o seu estágio do mesmo de `working-dir`/`untrack` para `index`

```bash
git add <ARQUIVO>       	                            
```

---

Remove o arquivo do versionamento, mudando o seu estágio de `index` para `working-dir`/`untrack`

```bash
git rm <ARQUIVO>                                        
```

---

Lista somente os arquivos que estão em estado `index`/`track`

```bash
git ls-files	                                        
```

---

Muda o estado do arquivo indicado, de `index` para `head`. O parâmetro `-m` é necessário indicar uma mensagem que descreve a mudança que foi feita neste arquivo, se não indicado o parâmeto, será aberto o editor indicado no comando `git config --global core.editor $(which code)`

```bash
git commit <ARQUIVO-OU-DIRETORIO> -m <MENSAGEM>         
```

---

"O que mudou?", mosta as mudanças que ocorreram no arquivo indicado, tendo como base, os commits feitos no mesmo

```bash
git whatchanged <ARQUIVO>	                            
```

---

Adiciona um rótulo ao presente commit, ou seja, um atalho de alto nível a um determinado o commit. Funcional para indicar um ponto de interesse, como versões estáveis, versões de testes entre outras  

```bash
git tag -a <NOME-DA-TAG>                                
```

---

Lista todas as tag's do projeto

```bash
git tag		                                            
```

---

Mostra as linhas de modificados entra as tag's indicadas

```bash
git diff <TAG-1> <TAG-2>                                
```

---

Verifica o histórico de commits, com seu respectivo hash, autor e data   

```bash
git log                                                 
```

---

Verifica o histórico de commits, em visualização de gráficos de linha temporal, levando em considerações o histórico de ramificações do projeto 

```bash
git log --graph --decorate                              
```

---

Baixa o projeto existente em um servidor remoto

```bash
git clone <URL-DO-PROJETO>                              
```

---

Lista as branches locais presentes no projeto

```bash
git branch                                              
```

---

Lista todas as branches presentes no projeto, levando em consideração, branches presente no respositório remoto

```bash
git branch -a                                           
```

---

Lista todas as branches presentes no projeto, levando em consideração, branches remotas

```bash
git branch -a                                           
```

---

Associa o versionamento com um repositório remoto centralizado. O parâmetro `origin`, é um apelido de associação para o repositório externo

```bash
git remote add origin <URL-REPOSITORIO-REMOTO>          
```

---

Envia as modificações (*patch*) locais, ou seja, as que estão em estado `head`, para repositório externo

```bash
git push origin main                                    
```

---

Cria uma nova ramificação a partir da branch atual

```bash
git checkout -b <NOME-DA-BRANCH>                        
```

---

Muda o ambiente para a branch especificada. Para mudar o ambiente, é necessário que todos os arquivos estejam no estado 

```bash
git checkout <NOME-DA-BRANCH>                           
```

---

Mescla as mudanças, **na branch atual**, as modificações feitas na branch indicada em `<NOME-DA-BRANCH>`

```bash
git merge <NOME-DA-BRANCH>                              
```

---

Sincronizar as ramificações externas com o projeto local

```bash
git fetch                                               
```
