# PLAYBOOK

Here we describe how we run our company, how we plan our work, program our softwares and ensure their quality. This document is based in our experience, but also in the experience and study of others and is always evolving when we find a better way to do things.

> No matter the circumstance you can always improve. You can always start improving with yourself. You can always start improving today.
>
> -- Kent Beck, Extreme Programming Explained


Everyone in Magrathea can edit this playbook by simply opening a PR (pull request) with the desired modifications. In this way, we can discuss all modifications through the PR and keep the discussion archived for future references.

**Summary**

* [Our Company](#markdown-header-our-company)
* [Project and Planning](#markdown-header-projects-planning)
* [Development](#markdown-header-development)
* [Design](#markdown-header-design)
* [General Guidelines](#markdown-header-general-guidelines)
* [Operations](#operations)
* [References](#markdown-header-references)

## OUR COMPANY

> [...] the future is already here — it’s just not very evenly distributed.
> -- William Gibson

We are here to help organizations improve their productivity and to prepare people for the future that is already here.

We are passionate about the unknown and by solving problems with technology.

We want to be recognized as the bests at solving problems using Artificial Intelligence and good Software Engineering practices. We know how to create minimal viable products and also complete solutions through a systemic vision and good business understanding. We know how to communicate and how to sell what our customers need.

### PURPOSE

Why Magrathea Labs exists?

Our purpose is to *transform the future into the present*.

We want to do this solving our customers challenging problems using technology in an effective and innovative way by designing and engineering software systems and data analysis using Artificial Intelligence.

### PRINCIPLES

*We care*. We don't say "I told you." We don't say "this is not my responsibility."

*We are actively transparent*. We actively communicate. We share the problems with each other.

*We are a team*. We share responsibilities. We don't let our egos take control of us. We win and lose together. We don't have positions; we have roles. We could disagree with each other, but we commit to the team.

## PROJECTS PLANNING

> Plans are nothing; planning is everything.
>
> -- Dwight D. Eisenhower

> [...] as we know, there are known knowns; there are things we know we know. We also know there are known unknowns; that is to say we know there are some things we do not know. But there are also unknown unknowns – the ones we don't know we don't know [...]
>
> -- [Donald Rumsfeld](https://www.wikiwand.com/en/There_are_known_knowns)

It is important to write plans and projects. In any form and size a plan provides a framework to organize the neural pathways in your mind and to make the raw information available in an accessible way to the rest of the team in a way to have a future reference. But do not stick to a plan. A plan does not capture everything. Changes happen all the time and unfortunately a plan usually fails to capture the randomness of life.

All projects are specified in PRDs (**P**roduct **R**equirements **D**ocuments) in our [Google Drive Projets folder](https://drive.google.com/drive/folders/0B6m7dowklNjvUTVIcURiazBoM2s).

All projects have some accompaniment docs:

* [Commercial Proposal](https://docs.google.com/document/d/1sESbIJ_I53wYpENJo8iZU5TcdfZK8tZlzEwkfzPj4_w/edit);
* [Project](https://docs.google.com/a/magrathealabs.com/document/d/1IU_-NaHIaXniNpa-qpl_55tIdeLmi5TYVDpbrSTc-jk/edit);
* [Contract](https://docs.google.com/a/magrathealabs.com/document/d/1Xhk0-s2k5ONhC2Z8gpXpPzlFagnDH7Y7D208jq-D69U/edit);
* [Project Completion Term](https://docs.google.com/document/d/1KF3qVysLKTRBIS8-f6dxW64N-HyatC_UplUtzBDyrwM/edit);
* [NDA](https://docs.google.com/document/d/1lY-N5sT8BX-YWKflEqt-m1HPdY5rzS02g1cIB6WtSfE/edit).

We start the project with the commercial proposal, with a broad vision of the project's estimatives and costs. We write this document to start negotiating with our customers. Them, we write the project, with requirements and functional specs. The project document is attached with the contract. When finishing a project, we give to our customer the project completion term, where we list what we have done and ask for feedback about our work. In some projects we also use a special NDA documents.

We like to work in phases, iterating with customers to prioritise, test and learn about what we're doing. We implement MVPs to explore the potential of our ideas, scaling the good ones that worked:

![Project Flow](images/project-flow.png "Project Flow")
[Reference: Thoughtworks](https://www.thoughtworks.com/insights/blog/10-tips-transformation-guide-pioneers)

### TASKS

Tasks are created and managed on [Trello](https://trello.com/):

* Each project has its own board with "Done", "Working", "Current" and milestone lists. Clone the [template project](https://trello.com/b/loaGuS7F/projeto-modelo) when creating new projects;
* Each project's milestone has its own list of tasks:
   * Every list should have a special task with the milestone's due date and "milestone" label, so we can see it in the calendar.
* Tasks are estimated using the Finobacci sequence:
   * **0 points**: trivial (~10 minutes);
   * **1 point**: 1/4 day of work;
   * **2 points**: 1/2 day of work;
   * **3 points**: 1 day of work;
   * **5 points**: 2~3 days of work (should be splitted into smaller tasks);
   * **8 points**: 1 week of work (should be splitted into smaller tasks).

## DEVELOPMENT

Most of our practices were detailed by Kent Beck in the *Extreme Programming Explained: Embrace Change* and in Uncle Bob's *Clean Code*. We have tried their practices and found that using most of them improves the quality of our work.

Best practices:

* All code should be written in English.

Git:

* Each task should have its own feature branch following a consistent name convention:
   * `feature/` for features.
   * `fix/` for bugfixes.
   * `refactor/` for improvements/refactor.
   * `chore/` for random tasks.
* Prefer creating small PRs (changing ~500 LOC at most).

Style:

* [Ruby style guide](https://github.com/bbatsov/ruby-style-guide)
* [Elixir style guide](https://github.com/christopheradams/elixir_style_guide)
* [JavaScript style guide](https://github.com/airbnb/javascript)

### ENVIRONMENT SETUP

[TODO]

### DEPLOY

[TODO]

### MEASURING

[TODO]

## DESIGN

As developers,  we don't know deeply about UI and UX design, but, but that doesn't mean we should build crap stuff. Follow the basic rules. In general, we follow the [Good UI](http://goodui.org) rules.

## GENERAL GUIDELINES

High level guidelines:

* Be consistent.
* Don't rewrite existing code to follow this guide.
* Don't violate a guideline without a good reason.
* A reason is good when you can convince a teammate.

A note on the language:

* "Avoid" means don't do it unless you have good reason.
* "Don't" means there's never a good reason.
* "Prefer" indicates a better option and its alternative to watch out for.
* "Use" is a positive instruction.

## OPERATIONS

[TODO]

### HIRING

[TODO]


### SALES

[TODO]

### SHARING

[TODO]

## REFERENCES

Some of our references:

* Extreme Programming Explained: Embrace Change - Kent Beck
* Clean Code - Robert Martin
* https://www.thoughtworks.com/insights/blog/10-tips-transformation-guide-pioneers
* https://github.com/thoughtbot/apprenticeship
* https://thoughtbot.com/playbook
* http://guidelines.plataformatec.com.br
* http://www.gv.com/sprint
* https://www.gsb.stanford.edu/stanford-gsb-experience/academic/entrepreneurship/startup-garage
* https://opensource.google.com/docs/

## CREDITS

Inspired from [thoughtbot's playbook](https://thoughtbot.com/playbook) and [thoughtbot's guides](https://github.com/thoughtbot/guides).

Playbook is © 2016 Magrathea Labs. It is distributed under the [Creative Commons Attribution License](https://creativecommons.org/licenses/by/3.0/).
