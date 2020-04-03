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
