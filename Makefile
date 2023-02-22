all: main.pdf


main.pdf: main.tex main.bib *.tex
	pdflatex main
	bibtex main
	pdflatex main
	pdflatex main

clean:
	rm -f *.aux *.bbl *.blg *.log *.toc *.dvi *.out *.tdo *.gx.table *.gx.gnuplot *.fdb_latexmk *.fls main.pdf  *~
