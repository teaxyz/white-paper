tea.white-paper.pdf: white-paper.md metadata.yml img/*
	pandoc \
	--number-sections \
	--output tea.white-paper.pdf \
	--metadata-file metadata.yml \
	--filter pandoc-crossref \
	white-paper.md

clean:
	rm -f tea.white-paper.pdf
