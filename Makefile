ps: test.md
	cmark-roff test.md | cat cmark.tr - | troff | dpost > test.ps

pdf: test.md
	sed "s/#DATE#/$$(date '+%e. %B %Y')/g" test.md | cmark-roff | cat cmark.tr - | troff | dpost | ps2pdf - test.pdf
clean:
	rm -f *.pdf *.ps
