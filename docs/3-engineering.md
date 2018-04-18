# Engineering

Here we describe our engineering practices. Our goal isn't to write code all day. We'd rather solve real problems for real people. The software we build makes a difference for our clients, our clients' clients, and you.

## General Guidelines

High-level guidelines:

* Be consistent
* Don't rewrite existing code to follow this guide
* Don't violate a guideline without a good reason
* A reason is good when you can convince a teammate

A note on the language:

* *"Avoid"* means don't do it unless you have good reason
* *"Don't"* means there's never a good reason
* *"Prefer"* indicates a better option and its alternative to watch out for
* *"Use"* is a positive instruction

## Version control

We use [Git](https://git-scm.com/) open source code control to manage our code and GitHub for hosting our Git repositories.

The commits messages should point out objectively what changes were made to the system using preferably bullet points. The messages should be clear and concise so that other programmers can look it up quickly. More good practices about commit messages can be found at [tpope's blog](http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html).

## WorkFlow

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

### Pull Requests

This space allows a bit more discussion between the developers and should include a link to the commits bullet points (the commit number).

Before opening a PR, read thoroughly the feature description to see if you implemented everything. Run the code and use it as the end user would. Double check what was requested in the feature description.

#### Creating a PR

When creating a Pull Request, include:

* A description of the feature we're delivering
* Screenshots of the new behaviour if applicable
* Details about how to test them
* Details about how to run migrations or any task that should be run in the production environment

## UI/UX Design

!!! attention
    This section can be improved.

As developers, we don't know deeply about UI and UX design, but we follow basic rules to build pleasant and usable interfaces. Follow the basic rules. In general, we follow the [Good UI](http://goodui.org) rules.

## Code
All code must be understandable. That is a clean code principle in which we believe. We avoid commentaries in all cases, except when they are essential.

Best practices:

* All code should be written in English
* Write tests first
* Write acceptance tests
* When you find bad code, improve it

### Quality

!!! attention
    This section is missing content

* [Design Patterns & Refactoring](https://sourcemaking.com/)

### Refactoring

!!! attention
    This section is missing content

When starting to work on a new feature, look around to improve the quality of the code you are going to work on. We do not stop everything else to improve our code quality; it is inherent in our development process.

* [Refactoring](https://sourcemaking.com/refactoring)

### Security Guidelines

!!! attention
    This section is missing content

* [Zen Rails Security Checklist](https://github.com/brunofacca/zen-rails-security-checklist)

### Accessibility

!!! attention
    This section is missing content

* [The A11Y Project](http://a11yproject.com)
* [The Accessibility Cheatsheet](https://bitsofco.de/the-accessibility-cheatsheet)

## Production

!!! attention
    This section is missing content

### Twelve-factor software

!!! attention
    This section is missing content

* [The Twelve-Factor App](https://12factor.net/)

### Error tracking

We keep track of errors in production using real-time error tracking tools that give us insights and information to reproduce and fix crashes. By keeping track of errors, we do not need users to report them to us. Sometimes we know about the error before the user notices it. We currently use [Sentry.io](https://sentry.io/welcome/) in our projects.

### Measure

!!! attention
    This section is missing content

### Apdex

!!! attention
    This section is missing content

* [Apdex.org](http://apdex.org/overview.html)

## Scalability

!!! attention
    This section is missing content

* [Practical Scalability Analysis](https://www.vividcortex.com/resources/universal-scalability-law)

## eXtreme Programming

We recommend for every software engineer to read Kent Beck's books about eXtreme Programming. Here we describe some of the practices from XP we embrace.

### Tests

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

Developers should be integrating and committing code into the code repository every few hours, when ever possible. In any case never hold onto changes for more than a day. Continuous integration often avoids diverging or fragmented development efforts, where developers are not communicating with each other about what can be re-used, or what could be shared. Everyone needs to work with the latest version. Changes should not be made to obsolete code causing integration head aches.

Continuous integration avoids or detects compatibility problems early. If you integrate throughout the project in small amounts you will not find your self trying to integrate the system for weeks at the project's end while the deadline slips by.

See Martin Fowler [guide to Continuous Integration](https://martinfowler.com/articles/continuousIntegration.html) for mode details.

### Pair Programming

All code to be sent into production that is created by two people working together at a single computer is [pair programming](http://www.extremeprogramming.org/rules/pair.html).

Pair programming increases software quality without impacting time to deliver. It is counter intuitive, but two people working at a single computer will add as much functionality as two working separately except that it will be much higher in quality. With increased quality comes big savings later in the project.

One thing pair programming is not is mentoring. A teacher-student relationship feels very different from two people working together as equals even if one has significantly more experience.

### Code review

Code review is a  [Peer review](https://blog.codinghorror.com/code-reviews-just-do-it/) activity in which people other than the author of a software deliverable examine it for defects and improvement opportunities.

Code reviews are intended to ensure conformance to standards, and more importantly, intended to ensure that the code is clear, efficient and works. They also intended to help disseminate knowledge about the code to the rest of the team. This ensures that more than one person has intimate knowledge of the code at all times.
