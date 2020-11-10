# Starting new projects

!> **TODO** Adicione conteúdo nesta seção! [Veja como](https://github.com/magrathealabs/playbook).

## Antes de iniciar

É de extrema importância definir os processos a as funções das pessoas involvidas antes de começar o projeto.

Iremos aderir aos processos do cliente? Qual é a entrada e a saída da fase de desenvolvimento? Quando uma tarefa é considerada pronta? Quais são as pessoas de ponto de contato em cada lado?

### Definição de Pronto (_Definition of Ready_)

O item no backlog está escrito como uma User Story, definido o suficiente para que o time de desenvolvimento começe a trabalhar nele? Seguir [INVEST](https://www.agilealliance.org/glossary/invest) ajuda a relembrar de boas características de User Stories.

**Independente**: o item tem a liberdade de ser movido sem muito esforço, levando em consideração a sua prioridade relativa. Se os seus itens são dependentes, uma boa ideia seria combiná-los em um único item.

**Negociável**: enquanto o item estiver no backlog, este pode se reescrito ou até descartado, dependendo do negócio, mercado, requiremento técnico ou qualquer outro motivo solicitado pelos membros do time.

**Valioso**: o item realmente traz valor relacionado ao projeto para o stakeholder (parte interessada).

**Estimável**: se não é possível estimar o tamanho de um item, este nunca vai ser planejado, encarragado, e consequentemente, nunca irá se tornar parte da iteração. Portanto, não há sentido em manter itens desse tipo no backlog.

**Pequeno**: tente manter o tamanho do item para ser desenvolvido em poucos dias por uma pessoa.

**Testável**: tenha em mente que um item deve somente ser considerado PRONTO (_DONE_), em meio de outros fatores, se foi testado com sucesso. Se não se consegue testar um item por de falta de informação, ele não deve ser considerado um bom candidato para fazer parte do Backlog. Isto é particularmente verdade para times que seguem o TDD.

### Definição de Feito (_Definition of Done_)

A _Definition of Done_ (DoD) é usada para avaliar quando uma _User Story_ foi concluída, além de conduzir a um trabalho de qualidade. _Done_ (Pronto) significa que foi codificado de acordo com o padrão estabalecido, revisado, implementado com Desenvolvimento Orientado a Testes unitários (TDD), testado com 100 por cento dos testes automatizados, integrado e documentado.

A _Definition of Done_ reenforça que qualquer membro do time saiba exatamente o que é esperado na entrega. Reenforça também a transparência e a qualidade adequada para o propósito do produto e organização. Ele limita o custo de retrabalho após que a funcionalidade seja aceita como _Done_. Ter um contrato explícito limita o riscos de desentendimento e conflito entre o time de desenvolvimento e o cliente.

Nós devemos incluir _Feature Scenarios_ descrevendo os requerimentos do produto. Devemos incluir testes de aceitação baseados nos _Feature Scenarios_.

O nosso _Definition of Done_ deve satisfazer os seguintes pontos:

* Funcionalidade foi testada com critérios rigorsos de aceitação
* Testes unitátios e funcionais escritos e passando
* Testes de intetração passando
* Build com sucesso no CI e linters passando
* Código revisado por colegas
* Projeto feito deploy e funcionando de forma idêntica no ambiente de homologação e produção.
* UX Designer e QA revisaram e aprovaram
* Clientes aprovaram

### Papéis

No início do projeto, é definido quem irá ter cada papel, e como comunicar entre o time e o cliente.

Quem será responsável pelo QA? Quem será responsável por realizar o deploy para produção? Quem será responsável por priorizar o trabalho? O cliente irá entregar mockups e protótipos ou nós iremos seguir o nosso processo de design interno?

### Prova de Conceito

Antes de começar qualquer projeto que utilize uma nova tecnologia, nós acreditamos que é extremamente útil realizar uma Prova de Conteito (PoC). Isso reduz a chance de falha e problemas por causa de fatos e situações fora de controle.

Por exemplo, nós tivemos que adicionar React em uma arquitetura de um cliente e tivemos inúmeros problemas nos testes. Se tivéssemos criado um simples componente "Hello World" com testes antes do projeto, iríamos ter identificado este problema e estimado melhor o prazo e esforço da entrega do projeto.

## _Stakeholders_

Um projeto de software tem sucesso quando encontra todas as expectativas de seus  _stakeholders_. Um _stakeholders_ pode ser:

- O gerente de projeto
- O dono da empresa/negócio/agência
- O cliente que recebe os entregáveis

Identifique:

- Quem é o ponto de contato?
- Quem são as partes interessadas?
  - Quem pode dizer "Não"?
  - Quem pode aprovar o orçamento?

E conheça-os.

## Entregáveis

Deixe os objetivos do projeto claro. Encontre com os _stakeholders_ e discussa os possíveis resultados. Transforme-os em uma lista compreensiva e priorize as necessidades. Uma boa técnica para realizar isso é o princípio [SMART](https://en.wikipedia.org/wiki/SMART_criteria). Todo objetivo deve ser mensurável ou ter uma _definition of done_.

## Comunicação

Estabeleça uma agenda de reuniões para reportar o status do projeto

- Como o projeto está andando?
- _Milestones_ estão completos?
- O que está planejado para o próximo período?

Comunique para os _stakeholders_:

- Quem deve ser informado sobre mudanças?
- O quão frequente e como devem ser informados?
- Qual o nível de detalhe da informações que eles devem receber?

## Documentação

Mantenha uma documentação para ajudar manter todos na mesma página e para deixar fácil de configurar e executar o projeto.

- Documente os aspectos técnicos do projeto num arquivo README.md
- Crie e mantenha atualizado um digrama caso o projeto cresça em números de servidores

## Infraestrutura & Operações

- Configure os servidores de Integração e Entrega Contínua
- Configure o _Bug Tracking System_

## Integrações com terceiros

- Tenha certeza que há acesso a documentação de API

## Gerenciamento do Projeto

- Configure a ferramenta de gerenciamento do projeto
- Crie um backlog do Produto
- Mantenha o escopo do backlog claramente estruturado
- Quais são os pontos de dor e bloqueios?
