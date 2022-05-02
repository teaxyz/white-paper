tea.white-paper.pdf: white-paper.md metadata.yml tea.csl img/*
	pandoc \
	--number-sections \
	--output tea.white-paper.pdf \
	--metadata-file metadata.yml \
	--filter pandoc-crossref \
	--csl=tea.csl \
	--citeproc \
	white-paper.md

clean:
	rm -f tea.white-paper.pdf
