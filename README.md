# Playbook

This playbook describes how we work, how we build software and how we run our company.

Everyone in Magrathea can edit this playbook by simply opening a MR with the desired modifications. In this way, we can discuss all modifications through the MR and keep the discussion archived for future references.

* [Planning](#planning)
* [Developing](#developing)
* [General Guidelines](#general-guidelines)

## Planning

All projects are specified in PRDs (**P**roduct **R**equirements **D**ocuments) in our [Google Drive Projets folder](https://drive.google.com/drive/folders/0B6m7dowklNjvUTVIcURiazBoM2s).

All projects have some accompaniment docs:

* [Commercial Proposal](https://docs.google.com/document/d/1sESbIJ_I53wYpENJo8iZU5TcdfZK8tZlzEwkfzPj4_w/edit);
* [Project](https://docs.google.com/a/magrathealabs.com/document/d/1IU_-NaHIaXniNpa-qpl_55tIdeLmi5TYVDpbrSTc-jk/edit);
* [Contract](https://docs.google.com/a/magrathealabs.com/document/d/1Xhk0-s2k5ONhC2Z8gpXpPzlFagnDH7Y7D208jq-D69U/edit);
* [Project Completion Term](https://docs.google.com/document/d/1KF3qVysLKTRBIS8-f6dxW64N-HyatC_UplUtzBDyrwM/edit);
* [NDA](https://docs.google.com/document/d/1lY-N5sT8BX-YWKflEqt-m1HPdY5rzS02g1cIB6WtSfE/edit).

We start the project with the commercial proposal, with a broad vision of the project's estimatives and costs. We write this document to start negotiating with our customers. Them, we write the project, with requirements and functional specs. The project document is attached with the contract. When finishing a project, we give to our customer the project completion term, where we list what we have done and ask for feedback about our work. In some projects we also use a special NDA documents.

### Tasks

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

## Developing

Best practices:

* All code should be written in English.

Git:

* Each task should have its own feature branch following a consistent name convention:
   * `feature/` for features.
   * `fix/` for bugfixes.
   * `refactor/` for improvements/refactor.
   * `chore/` for random tasks.
* Prefer creating small MRs (changing ~500 LOC at most).

Style:

* [Ruby style guide](https://github.com/bbatsov/ruby-style-guide)
* [Elixir style guide](https://github.com/christopheradams/elixir_style_guide)
* [JavaScript style guide](https://github.com/airbnb/javascript)

## General Guidelines

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

## Credits

Inspired from [thoughtbot's playbook](https://thoughtbot.com/playbook) and [thoughtbot's guides](https://github.com/thoughtbot/guides).

Playbook is © 2016 Magrathea Labs. It is distributed under the [Creative Commons Attribution License](https://creativecommons.org/licenses/by/3.0/).
