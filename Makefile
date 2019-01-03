.PHONY: principal.pdf modalidades.pdf all clean

all: principal.pdf modalidades.pdf

principal.pdf: principal/*.tex setup.tex
	mkdir -p output
	cd principal && pdflatex -output-format=pdf -output-directory=../output/ -jobname=principal _index.tex
	cd principal && pdflatex -output-format=pdf -output-directory=../output/ -jobname=principal _index.tex

modalidades.pdf: modalidades/*.tex setup.tex
	mkdir -p output
	cd modalidades && pdflatex -output-format=pdf -output-directory=../output/ -jobname=modalidades _index.tex
	cd modalidades && pdflatex -output-format=pdf -output-directory=../output/ -jobname=modalidades _index.tex

clean:
	rm -rf output
