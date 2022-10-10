![tea](https://tea.xyz/banner.png)

The tea white paper is a [semantically versioned][semver], [Markdown] document
with mathematical representations embedded as [LaTeX].
New releases are compiled to `.pdf` with [Pandoc] before being
[published here at GitHub][releases].

# tea/white-paper 1.0.5

## Contributing

If you have general feedback, please open a [discussion] thread.

If you have edits please refer to our project-wide [contribution guidelines].
Then you can either:

1. Edit [`white-paper.md`] right here on GitHub.
    When you submit your pull request our CI will attach the pdf to the PR.
2. Or you can build the white paper on your own computer:
    ```sh
    make   #=> ./tea.white-paper.pdf
    ```

## Dependencies

Source these yourself or use tea: `sh <(curl tea.xyz)`.

| Project             | Version |
|---------------------|---------|
| pandoc.org          | ^2.18   |
| pandoc.org/crossref | ^0.3    |
| gnome.org/librsvg   | ^2.54   |
| gnu.org/make        | ^4      |


## Translate

We build, publish and feature full PDFs of all translations at tea.xyz.

1. [Fork `teaxyz/white-paper`][fork]
2. Then in your terminal:
    ```sh
    $ export LANG=…          # https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes
    $ export USER=…          # your github
    $ export VERSION=$(git describe --abbrev=0) # latest version tag  
    $ git clone https://github.com/${USER}/white-paper tea-white-paper
    …
    $ cd tea-white-paper
    $ git checkout -b i18n/${LANG} ${VERSION}
    …
    $ mkdir -p i18n/${LANG}
    $ cp white-paper.md metadata.yml i18n/${LANG}
    ```
3. Translate `./i18n/${LANG}/metadata.yml`
4. To `./i18n/${LANG}/metadata.yml` append:
    ```yml
    lang: …       # https://pandoc.org/MANUAL.html#language-variables
    dir: ltr      # language direction; ltr:left-to-right or rtl:right-to-left
    header-includes:
      - \fancyfoot[L]{${VERSION}+${LANG}}   # expand these variables!
    translator:
      - Your Fullname
    ```

    ⚠️ Chinese, Japanese, and Korean languages only. Please also add the following to the `metadata.yml`:
    ```yml
    header-includes:
      - \usepackage{xeCJK}
      - \setCJKmainfont{Noto Serif CJK XX} # where XX can be SC, TC, HK, JP, KR https://github.com/googlefonts/noto-cjk
    ```
5. Translate `./i18n/${LANG}/white-paper.md`
6. Commit translation to git and push to GitHub:
   ```sh
   git add i18n/${LANG}/*
   git commit -m "add ${LANG} translation"
   git push origin i18n/${LANG}
   ```
7. Create a pull request:
   ```sh
   open https://github.com/teaxyz/white-paper/compare/main...${USER}:white-paper:i18n/${LANG}
   ```

8. (Optional) Preview your work:
   ```sh
   make tea.white-paper_${LANG}.pdf
   ```

## Maintenance

### Set Version

```sh
echo "- \fancyfoot[L]{$1}" >> metadata.yml
```

[`white-paper.md`]: ./white-paper.md
[Pandoc]: https://pandoc.org
[Markdown]: https://daringfireball.net/projects/markdown/
[LaTeX]: https://latex-project.org/
[releases]: ../../releases
[brew]: https://brew.sh
[semver]: https://semver.org
[discussion]: ../../discussions
[fork]: ../../fork
[contribution guidelines]: https://github.com/teaxyz/.github/blob/main/CONTRIBUTING.md
