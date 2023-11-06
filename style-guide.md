Coding style guide for Prisoner Money apps
==========================================

Consistency is more important than any one specific style.
This not only applies to language styles, but also to code organisation, file structure, variable names, etc.

See also:
- [MoJ technical guidance](https://ministryofjustice.github.io/technical-guidance/)
- [The GDS way](https://gds-way.cloudapps.digital/)

Languages
---------

For python code, use the generally accepted [PEP8](https://www.python.org/dev/peps/pep-0008/) format
with the exception of allowed line length (the limit is 120).

For javascript, scss and html, use a 2-space indent.

With django templates, template tags should create a new level of indentation just like html block elements.
All user-facing text should be wrapped for translation.

There are tests to ensure basic compliance through the use of flake8, eslint and sass-lint.
Each repository defines [.editorconfig](http://editorconfig.org) settings.

Commits
-------

Keep the commit tree tidy – squash fixups, rebase branches onto ``main`` to have few branches in parallel and do not
merge ``main`` back into a feature branch.

Use the imperative mood for a short first line of the message. For example,
“*Add* more filtering options to credit api” or “*Fix* time zone bug in digital take-up calculation”.
Where necessary, write additional explanations and assumptions as paragraphs.

Testing
-------

Be thorough but pragmatic with testing. Where there is a branch in application logic, a test is generally necessary.
However, a unit test should probably not exist solely to test a third party library.

Apps
----

Each Prisoner Money app:

- must be a dockerised python application
- must have a "/setup.cfg" file with an `mtp` section
- must have a "/ping.json" and "/healthcheck.json" endpoint
- must be added to "/config/config/apps.yml" in [money-to-prisoners-deploy](https://github.com/ministryofjustice/money-to-prisoners-deploy)
- should have a Prometheus metrics endpoint
