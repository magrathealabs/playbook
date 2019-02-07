# Engenharia

Nesta seção, serão apresentadas as práticas de engenharia que nós utilizamos. Nosso objetivo não é passar o dia escrevendo código. Nós preferimos resolver problems reais para pessoas reais. O *software* que construímos faz diferença para nossos clientes, para os clientes dos nossos clientes, e para você.

## Diretrizes Gerais

Diretrizes em alto-nível:

* Seja consistente
* Não reescreva código existente para seguir este guia
* Não viole uma orientação deste guia sem uma boa razão
* Uma boa razão é quando você consegue convencer alguém do time

Uma nota no idioma:

* *"Evite"* significa não faça a não ser que vocẽ tenha um bom motivo para fazer
* *"Não"* significa que nunca há uma bom motivo para fazer
* *"Prefira"* indica uma melhor opção e que sua alternativa deve ser observada
* *"Use"* é uma instrução positiva

## Controle de Versão

Nós usamos o sistema de controle de versões [Git](https://git-scm.com/) para gerenciar nossos códigos e o GitHub para hospedar nossos repositórios.

As mensagens de *commit* devem descrever as mudanças realizadas no sistema de maneira objetiva, preferivelmente utilizando uma lista de marcadores. As mensagens devem ser claras e concisas para que outros programadores entendam facilmente. Outras práticas sobre mensagens de *commit* podem ser encontradas no blog do [tpope](http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html).

## Workflow

We use the [GitFlow](http://nvie.com/posts/a-successful-git-branching-model/) development protocol.

* Take a task from the `Current` list on Trello
* Start a new git branch
* Start coding!
* Commit changes when you finished
* Create a [Pull Request (PR)](https://help.github.com/articles/creating-a-pull-request)
    * Prefer creating small PRs (changing ~500 LOC at most)
* Clean up (erase created branches)

Each task should have its branch following a consistent name convention from GitFlow:

* `feature/` for features
* `fix/` for bug fixes
* `refactor/` for improvements/refactor
* `chore/` for random tasks

At this point, link the Pull Request in the Trello card and move it to `Code Review`. At least one team member should review and approve your PR. After the review, if approved:

* Merge the changes to master and delete the branch
    * Prefer to squash merge instead of a normal merge. Only do a normal merge if you want to keep the history of changes in our branch
* Move the Trello card to `QA` list
* Deploy the master branch to staging
    * In some projects the deploy to staging is automatic

In this stage, the customer should review the feature to approve or refuse it. If the task is accepted, we have a new code implementation. We merge master to production branch and deploy it to production environment.

Otherwise, the task goes back to `Current` with a description of why the task was rejected in the first place.

### *Pull Requests*

Este espaço permite uma maior discussão entre desenvolvedores e deve incluir um vínculo com o número do *commit* respectivo.

Antes de abrir um PR, leia a descrição da funcionalidade para ver se você implementou tudo. Rode o código e use-o como se você fosse o usuário final. Revise mais um vez os requisitos na descrição da funcionalidade.

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

Todo código deve ser entendível. Este é um princípio de código limpo no qual nós acreditamos. Nós evitamos comentários em todos os casos, exeto quando é essencial.

Melhores práticas:

* Todo código deve ser escrito em Inglês
* Escreve testes primeiro
* Escreve testes de aceitação
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

Nós acompanhamos os erros em produção usando ferramentas de rastreamento em tempo real,  que nos fornecem indícios e informação para reproduzir-los e concertá-los. Com rastreamento de erros, nós não necessitamos dos usuários para relatarem os erros para nós. As vezes, nós percebemos o erro antes que o usuário perceba. Atualmente, nós utilizamos o [Sentry.io](https://sentry.io/welcome/) em nossos projetos.

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

Nós recomendamos que todo engenheiro de *software* leia o livro de Kent Back sobre Programação Extrema. A seguir, nós descrevemos algumas das práticas do XP que nós adotamos.

### Testes

Creating unit tests helps a developer to really consider what needs to be done. Requirements are nailed down firmly by tests. There can be no such thing of misunderstanding a specification written in the form of executable code.

We're currently using [CircleCI](http://circleci.com/) to run the project's test suite.

### Test driven development

When you create your [tests first](http://www.extremeprogramming.org/rules/testfirst.html), before the code, you will find it much easier and faster to create your code. The combined time it takes to create a unit test and create some code to make it pass is about the same as just coding it up straight away. But, if you already have the unit tests you don't need to create them after the code saving you some time now and lots later.

You also have immediate feedback while you work. It is often not clear when a developer has finished all the necessary functionality. Scope creep can occur as extensions and error conditions are considered. If we create our unit tests first then we know when we're done; the unit tests all run.

There is also a benefit to system design. It is often very difficult to unit test some software systems. These systems are typically built code first and testing second, often by a different team entirely. By creating tests first your design will be influenced by a desire to test everything of value to your customer. Your design will reflect this by being easier to test.

Uncle Bob's 3 rules of TDD:

1. You are not allowed to write any production code unless it is to make a failing unit test pass
2. You are not allowed to write any more of a unit test than is sufﬁcient to fail
3. You are not allowed to write any more production code than is sufﬁcient to pass the one failing unit test

### Acceptance tests

[Acceptance Tests](http://www.extremeprogramming.org/rules/functionaltests.html) are created from user stories. During an iteration the user stories selected during the iteration planning meeting will be translated into acceptance tests. The customer specifies scenarios to test when a user story has been correctly implemented. A story can have one or many acceptance tests, what ever it takes to ensure the functionality works.

Acceptance tests are black box system tests. Each acceptance test represents some expected result from the system. A user story is not considered complete until it has passed its acceptance tests.

Acceptance tests should be automated so they can be run often. The acceptance test score is published to the team. It is the team's responsibility to schedule time each iteration to fix any failed tests.

### Continuous Integration

Integrate work frequently, at least daily. [Continuous Integration](http://www.extremeprogramming.org/rules/integrateoften.html) is a software development practice that we use to verify our code in an automated way to detect integration errors as quickly as possible.

Developers should be integrating and committing code into the code repository every few hours, whenever possible. In any case never hold onto changes for more than a day. Continuous integration often avoids diverging or fragmented development efforts, where developers are not communicating with each other about what can be re-used, or what could be shared. Everyone needs to work with the latest version. Changes should not be made to obsolete code causing integration headaches.

Continuous integration avoids or detects compatibility problems early. If you integrate throughout the project in small amounts you will not find yourself trying to integrate the system for weeks at the project's end while the deadline slips by.

See Martin Fowler [guide to Continuous Integration](https://martinfowler.com/articles/continuousIntegration.html) for mode details.

### Pair Programming

All code to be sent into production that is created by two people working together at a single computer is [pair programming](http://www.extremeprogramming.org/rules/pair.html).

Pair programming increases software quality without impacting time to deliver. It is counter intuitive, but two people working at a single computer will add as much functionality as two working separately except that it will be much higher in quality. With increased quality comes big savings later in the project.

One thing pair programming is not is mentoring. A teacher-student relationship feels very different from two people working together as equals even if one has significantly more experience.

### Code review

Code review is a  [Peer review](https://blog.codinghorror.com/code-reviews-just-do-it/) activity in which people other than the author of a software deliverable examine it for defects and improvement opportunities.

Code reviews are intended to ensure conformance to standards, and more importantly, intended to ensure that the code is clear, efficient and works. They also intended to help disseminate knowledge about the code to the rest of the team. This ensures that more than one person has intimate knowledge of the code at all times.
