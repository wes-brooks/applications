#! /bin/sh

mkdir -p aux

pdflatex -output-directory=aux estimation 
bibtex aux/estimation 
pdflatex -output-directory=aux estimation 
pdflatex -output-directory=aux estimation 

mv aux/estimation.pdf ./submission.pdf


