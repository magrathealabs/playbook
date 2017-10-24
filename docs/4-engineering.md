# Engineering

Here we describe our engineering practices.

!!! quote
    Our goal isn’t to write code all day.
    We’d rather solve real problems for real people.
    The software we build makes a difference
    for our clients, our clients’ clients, and you.

## Coding

!!! attention
    This section is missing content.

All code must be understandable. That is a clean code principle in which we
believe. We avoid commentaries in all cases, except when they are essential.

### Version Control

We use [Git](https://git-scm.com/) open source code control to manage our code
and GitHub for hosting our Git repositories.

The commits messages should point out objectively what changes were made to the
system using preferably bullet points. The messages should be clear and concise
so that other programmers can look it up quickly. More good practices about
commit messages can be found at
[tpope's blog](http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html).

### WorkFlow

We use the [GitFlow](http://nvie.com/posts/a-successful-git-branching-model/)
development protocol.

* Take a task from the `Current` list on Trello
* Start a new git branch
* Start coding!
* Commit changes when you finished
* Create a [Pull Request (PR)](https://help.github.com/articles/creating-a-pull-request)
    * Prefer creating small PRs (changing ~500 LOC at most)
* Clean up (erase created branches)

Each task should have it's branch following a consistent name convention from
GitFlow:

* `feature/` for features
* `fix/` for bug fixes
* `refactor/` for improvements/refactor
* `chore/` for random tasks

At this point, link the Pull Request in the Trello card and move it to `Code Review`.
At least one team member should review and approve your PR. After the review, if
approved:

* Merge the changes to master and delete the branch
    * Prefer to squash merge instead of a normal merge. Only do a normal merge if
      you want to keep the history of changes in our branch
* Move the Trello card to `QA` list
* Deploy the master branch to staging
    * In some projects the deploy to staging is automatic

In this stage, the customer should review the feature to approve or refuse it.
If the task is accepted, we have a new code implementation. We merge master to
production branch and deploy it to production environment.

Otherwise, the task goes back to `Current` with a description of why the task was
rejected in the first place.

### Pull Requests

This space allows a bit more discussion between the developers and should
include a link to the commits bullet points (the commit number).

Before opening a PR, read thoroughly the feature description to see if you
implemented everything. Run the code and use it as the end user would.
Double check what was requested in the feature description.

#### Creating a Pull Request

When creating a Pull Request, include:

* A description of the feature we are delivering
* Screenshots of the new behavior if applicable
* Details about how to test them
* Details about how to run migrations or any task that should be run in the
  production environment

### Tests

!!! attention
    This section is missing content.

### Code Refactoring

When starting to work on a new feature, look around to improve the quality of
the code you are going to work on. We do not stop everything else to improve our
code quality; it is inherent in our development process.

### Best practices

* All code should be written in English
* Write tests first
* Write acceptance tests
* When you find bad code, improve it

### Continuous Integration

We integrate our work frequently, at least daily. Continuous Integration is a
software development practice that we use to verify our code in an automated way
to detect integration errors as quickly as possible. We are currently
using [CircleCI](http://circleci.com/) to run the project's test suite.

See Martin Fowler
[guide to Continuous Integration](https://martinfowler.com/articles/continuousIntegration.html)
for mode details.

### Security Guidelines

* [Zen Rails Security Checklist](https://github.com/brunofacca/zen-rails-security-checklist)

### Style Guides

We follow style guides to help us write code consistently. This ensures that all
team members use the same dialect when writing code, helping us to communicate
with each other.

* [Elixir style guide](https://github.com/christopheradams/elixir_style_guide)
* [JavaScript style guide](https://github.com/airbnb/javascript)
* [Python PEP 8 style guide](https://www.python.org/dev/peps/pep-0008/)
* [Ruby style guide](https://github.com/bbatsov/ruby-style-guide)

## Deploy

!!! attention
    This section is missing content.

## Measuring

!!! attention
    This section is missing content.

We keep track of errors in production using real-time error tracking tools that
give us insights and information to reproduce and fix crashes. By keeping track
of errors, we do not need users to report them to us. Sometimes we know about
the error before the user notices it. We currently use
[Sentry.io](https://sentry.io/welcome/) in our projects.

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

# Design

!!! attention
    This section is missing content. [The Design Sprint](www.gv.com/sprint)

As developers, we don't know deeply about UI and UX design, but we follow basic
rules to build pleasant and usable interfaces. Follow the basic rules. In general,
we follow the [Good UI](http://goodui.org) rules.

# Quality

!!! attention
    This section is missing content.

## Code Design

### Kent Becks 4 Rules of Simple Design

1. Runs all the tests
2. Expresses every idea we need to express
3. Says everything once and only once (no duplication)
4. Has no superﬂuous parts

### Uncle Bob’s 3 rules of TDD

1. You are not allowed to write any production code unless it is to make a failing unit test pass
2. You are not allowed to write any more of a unit test than is sufﬁcient to fail
3. You are not allowed to write any more production code than is sufﬁcient to pass the one failing unit test

## TDD

Good TDD is about small steps that generally take less than a minute.

!!! attention
    This section is missing content. https://speakerdeck.com/evolve2k/tdd-transformed

## Code Quality

!!! attention
    This section is missing content. https://sourcemaking.com

## 12 Factor Software

!!! attention
    This section is missing content. https://12factor.net

## Apdex

!!! attention
    This section is missing content. http://apdex.org/overview.html

## Extreme Programming

!!! attention
    This section is missing content. Link books and guides.

It is recommended to read one of our books about Extreme Programming.

## Environment Setup

!!! attention
    This section is missing content.

Use [dotfiles](https://github.com/alfakini/dotfiles) to automate your
environment setup. Use an extensible code editor like Vim/NeoVim or
Sublime Text 3.

Here is the minimal configs for your code editor:

* Remove trailing whitespace
* Ruby, HTML, JavaScript, CSS, SCSS, etc, tabs with 2 spaces
* Python tabs with 4 spaces

### Ruby

!!! attention
    This section is missing content.

[Ruby quickstart tutorial](https://www.ruby-lang.org/en/documentation/quickstart)
[Ruby from other languages](https://www.ruby-lang.org/en/documentation/ruby-from-other-languages)

In all Ruby projects we use a set of tools to help us:

* [RubyGems](http://guides.rubygems.org)
* [Bundler](http://bundler.io)
* [RVM](https://rvm.io)

#### Quality tools

!!! attention
    This section is missing content. Rubocop, Danger, Pronto, etc.

#### Ruby on Rails

!!! attention
    This section is missing content.

[Ruby on Rails guides](http://guides.rubyonrails.org)

### Python

!!! attention
    This section is missing content.

