> TODO:  `git rebase`, `git reset`
>
> DOING: `git branch`, `git checkout`, `git merge`
>
> OK: `git tag`, 

# Ramificações 

## Branches

--- 

Listar as branches locais

```console
git branch                                              
```

---

Lista todas as branches presentes no projeto, levando em consideração as branches remotas

```console
git branch -a                                           
```

---

Criar uma nova ramificação a partir da branch atual

```console
git checkout -b <NOME-DA-BRANCH>                        
```

---

Mudar o ambiente para a branch especificada. Para mudar o ambiente, é necessário que todos os arquivos estejam no estado 

```console
git checkout <NOME-DA-BRANCH>                           
```

---

Mesclar as mudanças, **na branch atual**, as modificações feitas na branch indicada em `<NOME-DA-BRANCH>`

```console
git merge <NOME-DA-BRANCH>                              
```

---

Mostrar as linhas de modificados entra as tag's indicadas

```console
git diff <TAG-1> <TAG-2>                                
```

## Tags

O comando `git tag`, adicionar um rótulo a um `commit`, ou seja, um atalho em alto nível a um determinado *hash* de um `commit` específico. Pode se compreender que uma **tag**, é uma branch que não muda, normalmente utilizadas para indicar pontos de interesses no projeto, como por exemplo, versões estáveis, de homologação e versões testes. 

Antes de verificar os comandos, é importante saber que existem dois tipo de tags, **Leve** (*unannotated*) e **Anotada** (*annotated*). As Tags Leves, ponteiro simples para um commit existente. Já as Tags Anotadas são objetos completos armazenados no banco de dados Git, contendo o nome, o email do autor de sua criação, em conjunto com a data de criação, somados a uma uma mensagem de marcação.

--- 

Listar todas as tag's do projeto com a mensagem de marcação

```console
git tag -n
```

> :memo: Caso alguma Tag Leve seja listada, a mensagem de marcação será a mesma do commit da qual a mesma faz referência. 

---

Criar Tag do Tipo Anotada:

```console
git tag -a <NOME-DA-TAG> -m "<MENSAGEM-DESCRITIVA-DA-TAG>"
```

---

Criar uma Tag do Tipo leve,

```console
git tag <NOME-DA-TAG>
```

---

Adicionar uma Tag a um Commit específico:

```console
git tag -a <NOME-DA-TAG> -m "<MENSAGEM-DESCRITIVA-DA-TAG>" <HASH-DO-COMMIT>
```

> :memo: Se não passado o argumento `-a`, a Tag criada será do tipo Leve:
