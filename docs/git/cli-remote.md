# Comandos de Operações Remotas

Clonar o projeto de um servidor externo:

```console
git clone <URL-DO-PROJETO>                              
```

> :memo: Normalmente, há diferença em associar o ato de obter um projeto remoto, com os termos **Clonar** (*clone*) e **Baixar** (*download*). Quando **clonamos**, obtemos o diretório `.git` do projeto, assim, a base de dados do versionamento projeto. Quando **baixamos**, apenas obtemos o conteúdo do projeto, sem a presença do diretório `.git`

---

Sincronizar as referências externas com a base de dados local:

```console
git fetch                                               
```

> :memo: Pode-se compreender em *Sincronizar Referências Externas* como atualizar a Base Local de versionamento com novas **branches** e **tags** criadas após o **clone** do projeto.

---

Associar a Base Local de a um repositório remoto. 

```console
git remote add <APELIDO-DO-REPOSITORIO-REMOTO> <URL-REPOSITORIO-REMOTO>          
```

> :memo: O parâmetro <APELIDO-DO-REPOSITORIO-REMOTO>, é um apelido de associação para o repositório externo. Por convenção, o valor de para associar o repositório externo princial do projet é: `origin`. É possível ter mais do que um repositório externo vinculados a Base Local. 

---

Enviar as alterações que estão no **status** `Commited` presentes na Base Local, para a base de um repositório remoto.

```console
git push <APELIDO-DO-REPOSITORIO-REMOTO> <NOME-DA-BRANCHE>                                    
```

> :memo: O parâmetro <APELIDO-DO-REPOSITORIO-REMOTO> indica para qual repositório externo as modificações serão enviadas as alterações em estado `Commited`. 

---

Obter as alterações de um repositório externo com a Base Local.

```console
git pull origin main
```

> :memo: O parâmetro `origin`, indica de qual repositório externo as modificações serão enviadas.

:warning: **Observações Importantes**: 

- O comando só terá efeito caso não tenha nenhum arquivo com o status `Untracked` na Base Local;
- Caso algum ;
