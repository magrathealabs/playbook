# Projects

We work with startups and big companies to develop software products, services and platforms covering all the software development process phases, from initial ideation to systems scalability and long-term support.

We adopt the Lean principles, meaning we eliminate unnecessary tasks, encourage informed decisions to be made as late as possible, and deliver as fast as possible. We empower teams to make their own decisions and develop ownership.

We also believe in [agile](http://agilemanifesto.org) software development, Kanban and XP practices to every project and sometimes Scrum. Most of our development practices are detailed in the Kent Beck's [Extreme Programming Explained: Embrace Change](https://www.goodreads.com/book/show/67833.Extreme_Programming_Explained) and Uncle Bob's [Clean Code](https://www.goodreads.com/book/show/3735293-clean-code) books. We have tried their practices and found that using most of them improves the quality of our work.

One of our primary process goal is to make frequent, small releases of our working software. We do it through frequent communication and at least with weekly iterations on a product.

## Setup

Change is something ubiquitous in software development, and that’s why we believe that no software development process is perfect. We embrace change by being always aware of our current processes and seeking continuous improvement at every stage.

We use [Kanban](https://en.wikipedia.org/wiki/Kanban_(development)) to help us develop and evolve our processes and STATIK (acronym for *Systems Thinking Approach to Introducing Kanban*) to guide our Kanban implementations and reviews. STATIK is an iterative 8-step process that can be summarized as:

1. Understand what makes the service fit for purpose for the customer
2. Understand sources of dissatisfaction
3. Analyze demand
4. Analyze capability
5. Model workflow
6. Discover classes of service
7. Design kanban systems
8. Socialize the design and negotiate implementation

We always seek to exercise this with all our collaborators and customers, capturing multiple perspectives in order to achieve a solid  understanding of current issues, processes and roles.

## Planning

> Plans are nothing; planning is everything
> <br>— *Dwight D. Eisenhower*

Writing plans for projects is important. In any form and size, a plan provides a framework to organize the neural pathways in your mind and to make the raw information available in an accessible way to the rest of the team in a way to have a future reference.

However, do not stick to a plan. A project plan does not capture everything. Changes happen all the time and, unfortunately, a plan usually fails to capture the randomness of life.

> Everything in software changes. The requirements change. The design changes. The business changes. The technology changes. The team changes. The team members change. The problem isn't changing because change is going to happen; the problem, rather, is our inability to cope with change.
> <br>— Kent Beck, Extreme Programming Explained

## Documentation

Clear communication is a core of our development process. We believe it is a matter of proper documentation to register all steps of the way when making software. A proper documentation allows software to be easily maintainable by others and even by ourselves when we deal with code that was made some time ago.

However, to have a good documentation does not mean we will write long comments at the side of each line of code. Moreover, it does not mean we will have long messages in the commits explaining each little change in the software. Therefore the documenting must be done at a right amount and in an organised manner.

For us, a well written code is a good documentation by itself. The automated test suite also should give to engineers insights and answer their questions about how the software works. If there is something that can't be understood from the code, good commit messages and well documented Pull Requests should give the answers. Also, the tasks from the task manager are linked in the Pull Requests, and by looking on them we can understand what the client requested.

All projects also have some accompaniment docs:

* [Commercial Proposal](https://docs.google.com/document/d/1sESbIJ_I53wYpENJo8iZU5TcdfZK8tZlzEwkfzPj4_w/edit)
* [Project](https://docs.google.com/a/magrathealabs.com/document/d/1IU_-NaHIaXniNpa-qpl_55tIdeLmi5TYVDpbrSTc-jk/edit)
* [Contract](https://docs.google.com/a/magrathealabs.com/document/d/1Xhk0-s2k5ONhC2Z8gpXpPzlFagnDH7Y7D208jq-D69U/edit)
* [Project Completion Term](https://docs.google.com/document/d/1KF3qVysLKTRBIS8-f6dxW64N-HyatC_UplUtzBDyrwM/edit)
* [NDA](https://docs.google.com/document/d/1lY-N5sT8BX-YWKflEqt-m1HPdY5rzS02g1cIB6WtSfE/edit)

We start the project with the commercial proposal, with a broad vision of the project's estimates and costs. We write this document to start negotiating with our clients. Then, we write the project, with the initial requirements and functional specs. The project document is attached to the contract. When finishing a project, we give to our customer the project completion term, where we list what we have done and ask for feedback about our work. In some projects, we also use a particular NDA document.

## Methods

Our process ensures [short, user-tested development cycles](http://www.extremeprogramming.org/rules/releaseoften.html), making it easier to integrate client and customer feedback. It also allows us to quickly get back on course and build on new information.

Our software development process mix ceremonies and practices from XP, Scrum and Kanban. Regularly, we reflect on how to become more effective, tuning and adjusting our behaviour accordingly. We look for a motivating environment and culture, where everybody trusts each other to receive constructive feedback and get the job done.

We believe that it ensures that we avoid creating a task-oriented environment and favours a mission-oriented environment. A task-oriented environment is that in which the members of team have only a visibility of the work they are performing at that moment, without seeing the implications of their work as a whole. This enforces that developers maintain an individual job queues and a manager should be responsible for centralising the decision of what should be done.

By creating a mission-oriented environment, we have a single queue of work in your development process, which will improve the utilisation of available resources, decreasing the delivery time of the demands that have gone through the flow, and collecting faster feedback about what is being built.

By favouring a mission-oriented environment, we change the question from "What should we do now?" to "What do we need to achieve?". Thus, the effort of the team members is directed toward solving the problems that really matter at a given moment rather than just delivering demands received from someone.

While a a task-oriented environment makes developers care only with their own work, a mission-oriented environment makes developers focus on the big picture. This helps the developers to identify bottlenecks in the process and proactively work on them, like reviewing colleagues code or do pair programming to work in a hard task.

This is an example of a regular project's Trello board:

<center>
![images/trello.png](images/trello.png)
[Template project](https://trello.com/b/OzLyn6bx/projeto-template).
</center>

The board is organised in a way that all the flow, from ideas (upstream), to development (downstream) is visible by all team members. Focusing only on upstream effectiveness (ideas options) raises a risk of starvation in the downstream (too much execution requests). Without downstream effectiveness, it is necessary to blindly trust the upstream to prevent non-value-generating demands from flowing.

As you can see, the Doing list (in red) and the Code Review list (in yellow) have constraints. This means that there are too many tasks in Work in Process in the Doing list and we're in the limit of tasks in the Code Review. This helps us to keep the amount of Work in Process small and focus on helping others in the team to finish the task or review the open Pull Requests.

## Project management

We like to work in phases, iterating with customers to prioritize, test and learn about what we're doing. We implement POCs to explore the potential of our ideas, so we can focus on a particular one to build the MVP, scaling the ones that worked:

![Project Flow](images/project-flow.png "Project Flow")
<center>[Reference: Thoughtworks](https://www.thoughtworks.com/insights/blog/10-tips-transformation-guide-pioneers)</center>

Our software projects are managed on [Trello](https://trello.com). In our experience, Trello is a flexible tool where developers, product managers, designers and customers can work together.

This space is used to specify users stories, write about opportunities to improve the software, problems we should solve, design of solutions, features and bugs (including all steps to reproduce them), and other discussions that must happen before coding.

For each feature, we write a story with a subset of tasks. We always try to break the stories in the smallest possible pieces to deliver value to the user of the system.

Stories should be understandable by everyone on the team, including designers, PMs (Project Managers) and POs (Project Owners). We may create some stories that are too technical, but this is an exception; the rule should be "every story should have all the necessary information to be understood by anyone".

### Estimates

Stories are estimated using the Fibonacci sequence:

* **0 points**: trivial (~10 minutes)
* **1 point**: 1/4 day of work
* **2 points**: 1/2 day of work
* **3 points**: 1 day of work
* **5 points**: 2~3 days of work (should be split into smaller tasks)
* **8 points**: 1 week of work (should be split into smaller tasks)

We estimate the stories before starting, and after finishing them. In this way we can track how good is our estimates and improve them in the next sprints.

we're using the [Scrum for Trello](https://chrome.google.com/webstore/detail/scrum-for-trello/jdbcdblgjdpmfninkoogcfpnkjmndgje) plugin to help us estimate the stories on Trello.

### Project management software

Here we describe the process of using Trello, but the overall process remains relatively similar across different systems. No two products are the same, so flexibility in the product development process is important. Trello responds well to changing the structure of the process “on the fly.” A Trello board is a software equivalent of a physical Kanban board.

Generally, our boards include the following lists:

* Opportunities and problems
* Solution design
* Breaking down stories
* Backlog
* Current Sprint
* Doing
* Code Review
* QA Review
* Ready for Production
* Done

In some projects, we also have the "Support" list on the side of "Current Sprint" where we add urgent support work that should be addressed as soon as possible by the teammate that is wearing the support hat. Every week the support hat should be with a different teammate.

"Opportunities and problems" and "Solution design" are the upstream, where product, design and client's team work to prioritize work and design the solution.

The Backlog list is the single prioritized list to which the product team refers in order to know what to work on next. A card represents a User Story, bug fix or engineering task.

Once the cards in the Backlog list have been prioritized, they are ready for development. A developer assigns it to him and pull it into the Doing list. The cards in the Doing list are actively being developed. Etiquette is that you should never have your face on more than one card at a time. Work is done in a feature branch.

When the developer creates a pull request for their feature branch, they move the card to the Code Review list. Any reviewers put their face in the card while reviewing it. There is no bottleneck for merging into master: everyone can do it.

The cards in the QA Review list are deployed to staging. The card creator and in some cases the client review it. There is no bottleneck for deploying to staging: everyone can do it.

Ready to Production list include cards that have been accepted on staging and are ready to be deployed. There is no bottleneck for releasing to production: everyone can do it. The cards in the Done lists have been released. Each week has its own Done list so we can follow what got released when.

These are some essential Chrome/Firefox plugins we currently use.

#### [Trelabels](https://github.com/fredericseiler/trelabels)

For better labels.

![](https://cloud.githubusercontent.com/assets/954168/11151664/9d5c657e-8a2e-11e5-9a58-fc82838ebc02.png)

#### [TrelloWIPLimits](https://github.com/NateHark/TrelloWIPLimits)

Adds work-in-progress limits to Trello lists supporting a Kanban workflow. WIP limit on a list, include the limit in braces in the list title (e.g. "Code Review [4]). When the number of cards in the list exceeds the limit, the list background will turn red.

#### [Scrum for Trello](https://chrome.google.com/webstore/detail/scrum-for-trello/jdbcdblgjdpmfninkoogcfpnkjmndgje)

Adds functionality for use in Scrum projects. You can add estimates adding `(NUMBER)` in the beginning of the card title and the consumed points in the end using `[NUMBER]`.
