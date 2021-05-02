O Git é um Sistema de Controle Versões, criado para prover um ambiente de gerenciamento projetos eficaz e produtivo, auxiliando principalmente projetos com mais do que um colaborador. 

> Dependendo do contexto, devido aos seus recursos, o Git pode ser referenciado como uma tecnologia pertencente as várias siglas de definição de tecnologia, como por exemplo: VSC - *Version Control System*, DVSC - *Distrubuited Source Control Management*; SCM - *Source Control Management*; RCS *Revision Control System*.

A criação do Git teve origem no desenvolvimento do Kernel Linux. Durante os anos entre 1991 à 2002, as mudanças introduzidas no código fonte do Kernel, eram emitidas, em sua maior parte via email, por meio de anexos em arquivos *.tar.gz*. O processo, por mais arcaíco e inprodutível que se possa aparecer, para Linus, era melhor do que se utilizar as soluções presentes de VCS do mercado, que em sua opinião, não eram eficazes. Os *patches* eram recebidos pelo Linus Torvalds, e o mesmo controlava o fluxo de colaborações manualmente. Ao passar do tempo, com base no grande volume de colaborações, complexidade e linhas de códigos, tal fluxo de controle se tornou inviável, necessitando então, a presença de um Sistema Distribuído de Versionamento de Arquivos, comumente referenciado por [DVSC - *Distributed Version Control*](https://en.wikipedia.org/wiki/Distributed_version_control).

Em 2002, foi adotado a tecnologia de DVSC proprietária [BitKeeper](http://www.bitkeeper.org/) para o controle do código fonte do Linux. Em 2005, a empresa que desenvolveu o BitKeeper, removeu  o acesso gratuito dos direitos autorais da ferramenta, fato que combinado as limitações da ferramenta, fez o BitKeeper foi ser desligado do projeto Linux. Nenhuma solução alternativa no mercado eram satisfatórias, em especial no quesito de performance no ato de mesclar as contribuições introduzidas no código. Tal fato, levou a comunidade de desenvolvedores do Linux, em especial Linus Torvalds, a criar uma solução que tinha como requisitos base, com os seguintes pontos:

- **Fazer o Oposto do CVS**: Não cometer os mesmos erros que a solução existente [CVS](https://en.wikipedia.org/wiki/Concurrent_Versions_System);
- **Desempenho**: Velocidade para integrar colaborações;
- **Distribuído**: Coloborações não necessariamente centralizadas, assim como a clareza de como se fazer os processos, pontos positivos herdados da experiência com BitKeeper;
- **Integridade**: Mecânismos internos para evitar o corrompimentos de arquivos;

Assim, em 2005, sob os termos da licensa [GNU General Public License V](https://www.gnu.org/licenses/old-licenses/gpl-2.0.html), o Git foi lançado. Com decorrer do tempo, houve inúmeras melhorias, porém as metas inicias foram preservadas.

Atualmente o Git é a principal ferramenta de de controle de versão, principalmente os que se enquandram como Software Livre.

