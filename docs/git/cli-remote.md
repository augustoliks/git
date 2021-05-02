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
