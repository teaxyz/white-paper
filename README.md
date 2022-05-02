# tea.white-paper

```sh
sh <(curl tea.xyz) https://github.com/teaxyz/white-paper
pandoc …  # see below for command line
```

…is what you *will* do—when `tea` is released.
Until then use Homebrew:

```sh
brew install pandoc basictex rsvg pandoc-crossref
pandoc \
 --number-sections \
 --output tea.white-paper.pdf \
 --metadata-file metadata.yml \
 --filter pandoc-crossref \
 white-paper.md
```

# Dependencies

| Project           | Version |
|-------------------|---------|
| pandoc.org        | ^2.18   |
| gnome.org/librsvg | ^2.54   |
