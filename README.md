![tea](https://tea.xyz/banner.png)

The tea white paper is a [semantically versioned][semver], [Markdown] document
with mathematical representations embedded as [LaTeX].
New releases are compiled to `.pdf` with [Pandoc] before being
[published here at GitHub][releases].

# Contributing

We’d love to hear your feedback and ideas (positive or negative the same).
Hop over to our discussions board and [open a new thread][discuss].

To work on the white paper itself, edit [`white-paper.md`](white-paper.md)
and submit a pull request;
the compilation result will be attached as an actions artefact.

## Compiling Locally

We recommend compiling locally—you’re both increasing ecosystem
decentralization and getting (much) faster debug‐cycles to boot—tea/cli is
coming soon… thus with [brew]:

```sh
# macOS
brew install pandoc librsvg pandoc-crossref basictex

# linuxbrew/WSL
brew install pandoc librsvg pandoc-crossref texlive
```

Then:

```sh
make
```

You now have: `./tea.white-paper.pdf`.

## Translations

We build, publish and feature full PDFs of all translations at tea.xyz.

1. [Fork `teaxyz/white-paper`][Fork]
2. Then in your terminal:
    ```sh
    $ export LANG=…          # https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes
    $ export USER=…          # your github
    $ export VERSION=1.0.1
    $ git clone https://github.com/${USER}/white-paper tea-white-paper
    …
    $ cd tea-white-paper
    $ git checkout -b i18n/${LANG} v${VERSION}
    …
    $ mkdir -p i18n/${LANG}
    $ cp white-label.md metadata.yml i18n/${LANG}
    ```
3. Translate `./i18n/${LANG}/metadata.yml`
4. To `./i18n/${LANG}/metadata.yml` append:
    ```yml
    lang: …       # https://pandoc.org/MANUAL.html#language-variables
    dir: ltr      # ^^
    header-includes:
      - \fancyfoot[L]{v${VERSION}+${LANG}}   # expand these variables!
    translator:
      - Your Fullname
    ```
5. Translate `./i18n/${LANG}/white-paper.md`
6. ```sh
   git push origin i18n/${LANG}
   open https://github.com/teaxyz/white-paper/compare/i18n/${LANG}
   ```
7. Create a pull request


You can test your output with:

```sh
make tea.white-paper_${LANG}.pdf
```

# Dependencies

| Project           | Version |
|-------------------|---------|
| [Pandoc]          | ^2.18   |
| gnome.org/librsvg | ^2.54   |


[Pandoc]: https://pandoc.org
[Markdown]: https://daringfireball.net/projects/markdown/
[LaTeX]: https://latex-project.org/
[releases]: ../../releases
[brew]: https://brew.sh
[semver]: https://semver.org
[discuss]: ../../discussions
[fork]: ../../fork
