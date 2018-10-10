all: thesis

thesis: main.tex
	latexmk -synctex=1 -interaction=nonstopmode -file-line-error -pdf --shell-escape main

clean:
	latexmk -CA
	rm *.acn *.bbl *.glo *.ist *.lol *.run.xml *.synctex.gz

publish: thesis
	cp main.pdf ~/Thesis.pdf