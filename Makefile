.PHONY: clean

tea.white-paper.pdf: white-paper.md metadata.yml tea.csl img/*
	pandoc \
	--number-sections \
	--output $@ \
	--metadata-file metadata.yml \
	--filter pandoc-crossref \
	--csl=tea.csl \
	--citeproc \
	$<

clean:
	rm -f tea.white-paper.pdf
