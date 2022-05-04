# tea/paper

tea/cli is coming soon! Until then we use Homebrew:

```sh
brew install pandoc basictex librsvg pandoc-crossref
make
```

With linuxbrew/WSL, use:

```sh
brew install pandoc livetex librsvg pandoc-crossref
make
```

# Contributing

Pull requests generate a PDF and attach at as an artefact. You can find it
in the “checks” section.

# Dependencies

| Project           | Version |
|-------------------|---------|
| pandoc.org        | ^2.18   |
| gnome.org/librsvg | ^2.54   |
