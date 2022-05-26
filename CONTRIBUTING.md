# Contributing

## Translations

tea is a global effort, and translating the whitepaper into all the languages of the world will help get the word out. To create a translation, we ask that you do the following:

1. fork the most recent release.
2. create your translation directory: e.g. `i18n/RU/` for Russian.
3. in the directory, include your translated version of `white-paper.md`, and `metadata.yml`.
4. add the versioning footer to the `header-includes:` array of `metadata.yml`, including the version translated, and the language: e.g. `- \fancyfoot[L]{v1.0.0+RU}`.
5. add the `lang:` and `dir:` variables as described in the [pandoc manual](https://pandoc.org/MANUAL.html#variables).
6. add yourself (or add yourself to) the `translator:` array.
7. open a pull request, and we'll review as best we're able!
