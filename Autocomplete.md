# Para instalar o utilitário, execute:

```
$ sudo apt-get install git-core bash-completion
```

# Verifique qual o caminho da instalação do autocomplete:

```
source /etc/bash_completion.d/git

// ou

source /usr/share/bash-completion/completions/git
```

# Para inicialização automática:

```
echo "source /etc/bash_completion.d/git" >> ~./bashrc
```
