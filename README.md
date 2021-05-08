[![Github Pages](https://github.com/augustoliks/git-mini-book/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/augustoliks/git-mini-book/actions/workflows/ci.yml)

# git-mini-book

Repositório para fins de estudo, criado para centralizar o conteúdo necessário para se adquirir proficiência com a ferramenta Git. 

O presente conteúdo deste projeto, foca em ser objetivo pra quem lê. As explicações visam atender o básico necessário para compreender como se utliza a ferramenta, assim como os seus benefícios.

Este repositório é uma iniciativa para a criação de contéudo de forma colaborativa, Pull Requests são bem vindos!

**O projeto está em desenvolvimento**, porém o atual conteúdo está acessível em: https://augustoliks.github.io/git-mini-book/ 

## Guia de Colaboração

O conteúdo do `git-mini-book` é criado sob a formatação [Markdown](https://pt.wikipedia.org/wiki/Markdown), e os arquivos estáticos são gerados com o framework [MkDocs](https://www.mkdocs.org/).

A estruta dos arquivos do projeto está padronizada no seguinte *layout*:

```shell
.
├── docs                # Diretório base dos conteúdos do git-mini-book 
│   ├── index.md        # Página inicial do projeto
│   ├── git             # Diretório com o conteúdo da seção: Git
│   │   ├── *.md        # Arquivos seperados conforme as subseções
│   │   └── img         # Diretório de imagens
│   │       └── ...     # Imagens utilizadas nos exemplos
│   ├── plataformas     # Diretório com o conteúdo da seção: Plataformas
│   │   ├── *.md        # Arquivos seperados conforme as subseções
│   │   └── img         # Diretório de imagens
│   │       └── ...     # Imagens utilizadas nos exemplos
│   └── workflows       # Diretório com o conteúdo da seção: Workflows
│       ├── *.md        # Arquivos seperados conforme as subseções
│       └── img         # Diretório de imagens
│           └── ...     # Imagens utilizadas nos exemplos
├── Makefile            # Configuração do ambiente de desenvolvimento, com compilação dinámica de arquivos estáticos   
├── mkdocs.yml          # Arquivo de definição de estrutura de página do framework MkDocs 
└── requirements.txt    # Dependencias Python, para utilização do MkDocs
```

Para criar o ambiente de desenvolvimento, primeiro, certifique que os utilitários `make` e `python3-virtualenv` estejam instalados em seu sistema. Em seguida, com o projeto devidamente clonado em seu sistema, e em seu diretório, executar:

```bash  
make venv       # cria ambiente virtual python e instala o MkDocs e seus plugins
make serve      # cria um servidor web para acompanhamento dinamico das mudanças feitas localmente 
```

Após este processo, o conteúdo estará disponível localmente, em http://127.0.0.1:8000/

O ambiente de desenvolvimento contém compilição de estáticos de forma dinâmica.
