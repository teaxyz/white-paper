.PHONY: all
.PHONY: i18n
.PHONY: clean

translations := $(patsubst i18n/%/white-paper.md,tea.white-paper_%.pdf,$(wildcard i18n/*/white-paper.md))

all: tea.white-paper.pdf $(translations)

tea.white-paper.pdf: white-paper.md metadata.yml tea.csl img/*
	pandoc \
	--number-sections \
	--output $@ \
	--metadata-file metadata.yml \
	--filter pandoc-crossref \
	--csl=tea.csl \
	--citeproc \
	$<

i18n: $(translations)

tea.white-paper_%.pdf: i18n/%/white-paper.md i18n/%/metadata.yml tea.csl img/*
	pandoc \
	--number-sections \
	--output $@ \
	--metadata-file i18n/$*/metadata.yml \
	--filter pandoc-crossref \
	--csl=tea.csl \
	--citeproc \
	--pdf-engine=xelatex \
	--variable mainfont="Noto Serif" \
	$<

clean:
	rm -f tea.white-paper*.pdf
