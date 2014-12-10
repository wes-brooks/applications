#! /bin/bash
mkdir -p aux
mkdir -p aux-supplement

#Compile the main document:
pdflatex -output-directory=aux estimation
bibtex -output-directory=aux estimation
pdflatex -output-directory=aux estimation
pdflatex -output-directory=aux estimation
mv aux/estimation.pdf ./

#Compile the supplement
pdflatex -output-directory=aux-supplement supplement
bibtex -output-directory=aux-supplement supplement
pdflatex -output-directory=aux-supplement supplement
pdflatex -output-directory=aux-supplement supplement
mv aux-supplement/supplement.pdf ./