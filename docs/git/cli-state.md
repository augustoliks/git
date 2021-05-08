> OK: `git init`, `git add`, `git rm`, `git mv`, `git commit`, `git sparse-checkout`, `git restore`, `git revert`
> 
> TODO: `git mv`, `git sparse-checkout`, `git restore`, `git revert`

# Comandos de Mudanças de Status

Um arquivo pode estar três **areas**:

- `Working Directory`: Não indexados na base local;
- `INDEX` — *aka*: `Staging`: Prontos para serem indexados a base local;
- `HEAD` — *aka*: `.git`: Indexados na base local.

![](img/file-areas.png)

Nestas áreas, um arquivo pode conter os seguintes **status**:

- `Untracked`: Quando o arquivo está em `Working Directory`;
- `Staged` — *aka* `Tracked`: Quando o arquivo está no `INDEX`.
    - `Unmodified`: Arquivos no `INDEX` que não tiveram alterações entre *commits*;
    - `Modified`: Arquivos no `INDEX`  que tiveram alterações entre *commits*;
- `Commited` — *aka* `HEAD`: Arquivos indexados na base de dados do Git.

![](img/file-status.png)

---

Criar um `Working Directory`, ou seja um repositório Git:

```
git init 
```

> :memo: O comando irá criar o diretório `.git`, que é a base local do versionamento do projeto.

---

Mudar o *status* do arquivo ou diretório de: `Untracked` para `Staged`

```console
git add <ARQUIVO-OU-DIRETÓRIO>
```

> :memo: Caso informa o arquivo, será mudado status somente do mesmo, caso informado um diretório, será mudificado o status dos arquivos presentes neste de forma recursiva:

---

Mudar o *status* do **arquivo** de: `Staged` para `Untracked` 

```console
git rm --cached <ARQUIVO>                                        
```

Mudar o *status* do **diretório** de: `Staged` para `Untracked` 

```console
git rm -r --cached <DIRETÓRIO>                                        
```

> :memo: O parâmetro `--cached`, caso não informado, removerá o arquivo do sistema operacional, assim como o comando `rm` convencional do Linux

---

Mudar o *status* de `Staged` para `Commited`: 

```console
git commit <ARQUIVO-OU-DIRETORIO> -m <MENSAGEM>         
```

> :memo: O parâmetro `-m` indica uma mensagem que descreve a mudança que foi feita neste arquivo. Caso não seja indicado, será aberto o editor de texto, configurado no comando `git config core.editor`
