![tea](https://tea.xyz/banner.png)

The tea white paper is a [semantically versioned][semver], [Markdown] document
with mathematical representations embedded as [LaTeX].
New releases are compiled to `.pdf` with [Pandoc] before being
[published here at GitHub][releases].

# Contributing

Edit [`white-paper.md`](white-paper.md) and submit a pull request;
the compilation result will be attached as an actions artefact.

## Compiling Locally

We recommend compiling locally—you’re both increasing ecosystem
decentralization and getting (much) faster debug‐cycles to boot—tea/cli is
coming soon… thus with [brew]:

```sh
# macOS
brew install pandoc librsvg pandoc-crossref basictex

# linuxbrew/WSL
brew install pandoc librsvg pandoc-crossref livetex
```

Then:

```sh
make
```

You now have: `./tea.white-paper.pdf`.

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
