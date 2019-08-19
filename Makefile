all: thesis

thesis: main.tex
	latexmk -synctex=1 -interaction=nonstopmode -file-line-error -pdf --shell-escape main.tex

clean:
	latexmk -CA
	rm -f *.bbl *.lol *.run.xml *.gz
	rm -f -r _minted-main/

publish: thesis
	cp main.pdf ~/Thesis.pdf