# Engenharia

Nesta seção, serão apresentadas as práticas de engenharia que nós utilizamos. Nosso objetivo não é passar o dia escrevendo código. Nós preferimos resolver problemas reais para pessoas reais. O *software* que construímos faz diferença para nossos clientes, para os clientes dos nossos clientes e para você.

## Diretrizes Gerais

Diretrizes de alto-nível:

* Seja consistente
* Não reescreva código existente para seguir este guia
* Não viole uma orientação deste guia sem uma boa razão
* Uma razão é boa quando você consegue convencer alguém do time

Notas de linguagem:

* *"Evite"* significa não faça a menos que você tenha um bom motivo
* *"Não"* significa que nunca há um bom motivo para fazer
* *"Prefira"* indica uma melhor opção e qual sua alternativa a ser observada
* *"Use"* é uma instrução positiva

## Controle de Versão

Nós usamos o sistema de controle de versões [Git](https://git-scm.com/) para gerenciar nossos códigos e o GitHub para hospedar nossos repositórios.

As mensagens de *commit* devem descrever as mudanças realizadas no sistema de maneira objetiva, preferivelmente utilizando uma lista de marcadores. As mensagens devem ser claras e concisas para que outros programadores entendam facilmente. Outras práticas sobre mensagens de *commit* podem ser encontradas no blog do [tpope](http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html).

## Fluxo de Trabalho

Nós usamos o protocolo de desenvolvimento [GitFlow](http://nvie.com/posts/a-successful-git-branching-model/).

* Pegue uma tarefa da lista `Current` no Trello
* Crie uma nova *branch* no Git
* Comece a escrever códigos!
* Faça o *commit* das mudanças quando você terminar
* Crie um [Pull Request (PR)](https://help.github.com/articles/creating-a-pull-request)
    * Prefira criar PRs pequenos (~500 linhas de código, no máximo)
* Exclua as *branches* criadas

Cada tarefa deve ter sua *branch* criada com um nome consistente seguindo a convenção do GitFlow:

* `feature/` para funcionalidades
* `fix/` para correção de *bugs*
* `refactor/` para melhorias/refatorações
* `chore/` para tarefas aleatórias

Neste ponto, relacione o PR no cartão do Trello e mova para `Code Review`. Pelo menos um membro do time deve revisar e aprovar o seu PR. Depois da revisão, se aprovado:

* Faça o *merge* das mudanças para *master* e exclua a *branch*
    * Prefira um *squash merge* ao invés de um *merge* normal. Somente faça um *merge* normal se você quiser manter o histórico das mudanças na sua *branch*.
* Mova o cartão do Trello para a lista `QA`
* Faça o *deploy* da *master* para *staging*
  * Em alguns projetos, o *deploy* para *staging* é automático

Neste estágio, o cliente deve revisar a funcionalidade, aprovando ou recusando. Se a tarefa for aprovada, nós temos uma nova implementação do código. Em seguida, fazemos o *merge* da *master* com a *branch* de produção e então, o *deploy* para o ambiente de produção.

Caso contrário, a tarefa volta para a lista `Current` com uma descrição do motivo da rejeição.

### *Pull Requests*

Este espaço permite uma maior discussão entre desenvolvedores e deve incluir um vínculo com o número do *commit* respectivo.

Antes de abrir um PR, leia a descrição da funcionalidade para ver se você implementou tudo. Rode o código e use-o como se você fosse o usuário final. Revise mais uma vez os requisitos na descrição da funcionalidade.

#### Criando um PR

Quando for criar um *Pull Request*, inclua:

* A descrição da funcionalidade que estamos entregando
* *Prints* da tela com o novo comportamento se aplicável
* Detalhes de como testar as modificações
* Detalhes sobre como rodar as migrações ou qualquer tarefa que precise ser feita para rodar em ambiente de produção

## *UI/UX Design*

!!! atenção
    Esta seção pode ser melhorada.

Como desenvolvedores, nós não sabemos profundamente sobre UI e UX design, mas nós seguimos as regras básicas para construir interfaces agradáveis e utilizáveis. Siga as regras básicas. Em geral, nós seguimos as regras do [Good UI](http://goodui.org).

## Código

Todo código deve ser entendível. Este é um princípio de código limpo no qual nós acreditamos. Nós evitamos comentários em todos os casos, exceto quando é essencial.

Melhores práticas:

* Todo código deve ser escrito em inglês
* Escreva testes primeiro
* Escreva testes de aceitação
* Quando encontrar código ruim, melhore-o

### Qualidade

!!! atenção
    Esta seção pode ser melhorada.

* [Padrões de Design & Refatoração](https://sourcemaking.com/)

### Refatoração

!!! atenção
    Esta seção pode ser melhorada.

Quando começar a trabalhar em uma nova funcionalidade, olhe em volta para melhorar a qualidade do código. Nós não paramos tudo que estamos fazendo para melhorar a qualidade do código; isto é inerente no nosso processo de desenvolvimento.

* [Refatoração](https://sourcemaking.com/refactoring)

### Guias de Seguraça

!!! atenção
    Esta seção pode ser melhorada.

* [Zen Rails Security Checklist](https://github.com/brunofacca/zen-rails-security-checklist)

### Accessibilidade

!!! atenção
    Esta seção pode ser melhorada.

* [The A11Y Project](http://a11yproject.com)
* [The Accessibility Cheatsheet](https://bitsofco.de/the-accessibility-cheatsheet)

## Produção

!!! atenção
    esta seção pode ser melhorada.

### Twelve-factor software

!!! atenção
    esta seção pode ser melhorada.

* [The Twelve-Factor App](https://12factor.net/)

### Rastreamento de Erros

Nós acompanhamos os erros em produção usando ferramentas de rastreamento em tempo real que nos fornecem indícios e informação para reproduzi-los e consertá-los. Com rastreamento de erros, nós não necessitamos dos usuários para relatarem os erros para nós. Às vezes nós encontramos o erro antes que o usuário perceba. Atualmente, nós utilizamos o [Sentry.io](https://sentry.io/welcome/) em nossos projetos.

### Medida

!!! atenção
    esta seção pode ser melhorada.

### Apdex

!!! atenção
    esta seção pode ser melhorada.

* [Apdex.org](http://apdex.org/overview.html)

## Escalabilidade

!!! atenção
    esta seção pode ser melhorada.

* [Practical Scalability Analysis](https://www.vividcortex.com/resources/universal-scalability-law)

## Programação Extrema

Nós recomendamos que todo engenheiro de *software* leia o livro do Kent Beck sobre Programação Extrema (*eXtreme Programming*). A seguir, nós descrevemos algumas das práticas do XP que nós adotamos.

### Testes

Testes unitários ajudam desenvolvedores a realmente considerar o que precisa ser feito. Requisitos são bem definidos pelo uso de testes. Não há má interpretação de uma especificação escrita na forma de código.

Atualmente, nós utilizamos o [CircleCI](http://circleci.com/) para rodar a suite de testes do projeto.

### Desenvolvimento Guiado por Testes (*TDD*)

Quando você cria seus [testes primeiro](http://www.extremeprogramming.org/rules/testfirst.html), antes da implementação, você vai perceber que é muito mais fácil e rápido criar o seu código. O tempo que leva para criar um teste unitário e criar algum código para passá-lo é mais ou menos o mesmo tempo que implementar diretamente. Então, se você já tem os testes unitários você não precisará criá-los após a codificação, economizando um pouco de tempo agora e muito tempo mais tarde.

Além do mais, você terá um *feedback* imediato enquanto você trabalha. Normalmente não é claro quando um desenvovedor terminou todo trabalho necessário no desenvolvimento de uma funcionalidade. Assim, podendo ocorrer o chamado *scope creep*, que é quando o escopo do projeto se estende além dos requisitos estipulados pelo cliente. Se criarmos nossos testes unitários primeiro, saberemos quando terminamos a codificação, ou seja, quando todos os testes passarem.

Há também um benefício ao projetar o sistema. Eventualmente é bem difícil fazer testes unitários em alguns sistemas. Estes sistemas normalmente são construídos começando pela codificação para depois serem feitos os testes, muitas vezes por um time totalmente diferente. Criando testes primeiro você será influenciado pelo desejo de testar tudo que seja de valor para o cliente. Isso será refletido em seu desenvolvimento pela maior facilidade de testar.

As 3 regras de TDD do *Uncle Bob*:

1. Você não tem permissão para escrever qualquer código de produção a menos que seja para fazer um teste unitário que esteja falhando passar
2. Você não tem permissão para escrever mais de um teste unitário do que é suficiente para falhar; E falhas de compilação são falhas também
3. Você não tem permissão para escrever mais código de produção assim que os testes que estão falhando passarem

### Testes de Aceitação

[Testes de Aceitação](http://www.extremeprogramming.org/rules/functionaltests.html) são criados a partir de histórias de usuários. Durante uma iteração, as histórias de usuários selecionadas durante a reunião de planejamento vão ser transcritas para testes de aceitação. O cliente especifica cenários para serem testados, garantindo que uma história de usuário foi implementada corretamente. Uma história pode ter mais de um teste de aceitação; o que precisar para garantir a funcionalidade do que está sendo implementado.

Testes de aceitação são testes de caixa preta. Cada teste de aceitação representa algum resultado esperado do sistema. Uma história de usuário não é considerada completa até que tenha passado seus testes de aceitação.

Testes de aceitação devem ser automatizados para que possam ser executados regularmente. O resultado dos testes de aceitação são publicados para todo time. É responsabilidade do time em arranjar tempo a cada iteração para consertar qualquer teste que falhe.

### Integração Contínua

Integre o trabalho realizado constantemente, pelo menos diariamente. [Integração Contínua](http://www.extremeprogramming.org/rules/integrateoften.html) é uma prática de desenvolvimento de *software* que nós usamos para verificar erros de integração de uma maneira automatizada o mais rápido possível.

Desenvolvedores devem integrar e fazer *commit* do código no repositório em intervalos de algumas horas, ou quando possível. Para todos os casos, nunca deixe passar mais de um dia. A integração contínua geralmente evita esforços de desenvolvimento divergentes ou fragmentados, onde desenvolvedores não se comunicam direito sobre o que pode ser reutilizado, ou compartilhado. Todos precisam trabalhar com a versão do código atualizada. Mudanças não devem ser feitas em código obsoleto causando problemas de integração.

A integração contínua evita ou detecta problemas de compatibilidade antecipadamente. Se você integrar o projeto em pequenas quantidades, não ficará tentando integrar o sistema por semanas no final do projeto, enquanto o prazo se esgota.

Veja o [guia sobre Integração Contínua](https://martinfowler.com/articles/continuousIntegration.html) para mais detalhes.

### Programação em pares

Todo código enviado a produção que é criado por duas pessoas trabalhando em conjunto em um único computador é chamado [programação em pares](http://www.extremeprogramming.org/rules/pair.html).

Programação em pares aumenta a qualidade do *software* sem impactar no tempo de entrega. É contra intuitivo, mas duas pessoas trabalhando em conjunto em um único computador irá adicionar muito mais funcionalidade do que duas pessoas trabalhando separadas, e o código terá muito mais qualidade. O aumento na qualidade resulta em economia mais tarde.

Programação em pares não é mentoria. Uma relação entre professor e estudante é muito diferente de duas pessoas trabalhando em conjunto igualmente, mesmo se um tem mais experiência que outro.

### Revisão de Código

Revisão de código é uma [revisão feita por pares](https://blog.codinghorror.com/code-reviews-just-do-it/), onde outras pessoas além do autor examinam o código com objetivo de encontrar erros e oportunidades de melhorias.

O objetivo de revisões de código são para garantir conformidade com os padrões estabelecidos, e mais importante, garantir que o código é limpo, eficiente e funciona. E também ajudam a disseminar o conhecimento sobre o código para o resto do time. Isto garante que mais de uma pessoa tem conhecimento íntimo do código todo tempo.
