# Contributing

## Translations

tea is a global effort, and translating the whitepaper into all the languages of the world will help get the word out. To create a translation, we ask that you do the following:

1. fork the most recent release.
2. create your translation directory using the standard [ISO 639-1 Code](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes): e.g. `i18n/RU/`.
3. `cp white-label.md metadata.yml i18n/${LANG}`
4. perform your translating magic to both files!
5. add the versioning footer to the `header-includes:` array of `metadata.yml`, including the version translated, and the language: e.g. `- \fancyfoot[L]{v1.0.0+RU}`.
6. add the `lang:` and `dir:` variables as described in the [pandoc manual](https://pandoc.org/MANUAL.html#variables).
7. add (or add yourself to) the `translator:` array.
8. run `make i18n` to ensure it builds.
9. open a pull request, and we'll review as best we're able!

N.B., the final edited version of `metadata.yml` will include additional data like:

```yaml
lang: ru-RU
dir: ltr
translator:
- jhheider
...
header-includes:
...
- \fancyfoot[L]{v1.0.0+RU}
```
