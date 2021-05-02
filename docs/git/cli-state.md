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

Muda o estado do arquivo 

Verifica o histórico de commits, com seu respectivo hash, autor e data   

```consoleindicado, de `index` para `head`. O parâmetro `-m` é necessário indicar uma mensagem que descreve a mudança que foi feita neste arquivo, se não indicado o parâmeto, será aberto o editor indicado no comando `git config --global core.editor $(which code)`

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

---

Mostra as linhas de modificados entra as tag's indicadas

```console
git diff <TAG-1> <TAG-2>                                
```
