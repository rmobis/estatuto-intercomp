.PHONY: principal.pdf modalidades.pdf declaracao-de-participantes.pdf all clean

all: principal.pdf modalidades.pdf declaracao-de-participantes.pdf

principal.pdf: principal/*.tex setup.tex
	mkdir -p output
	cd principal && pdflatex -output-format=pdf -output-directory=../output/ -jobname=principal _index.tex
	cd principal && pdflatex -output-format=pdf -output-directory=../output/ -jobname=principal _index.tex

modalidades.pdf: modalidades/*.tex setup.tex
	mkdir -p output
	cd modalidades && pdflatex -output-format=pdf -output-directory=../output/ -jobname=modalidades _index.tex
	cd modalidades && pdflatex -output-format=pdf -output-directory=../output/ -jobname=modalidades _index.tex

declaracao-de-participantes.pdf: declaracao-de-participantes/*.tex setup.tex
	mkdir -p output
	cd declaracao-de-participantes && pdflatex -output-format=pdf -output-directory=../output/ -jobname=declaracao-de-participantes _index.tex
	cd declaracao-de-participantes && pdflatex -output-format=pdf -output-directory=../output/ -jobname=declaracao-de-participantes _index.tex

clean:
	rm -rf output
