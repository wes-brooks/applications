#! /bin/sh

mkdir -p aux

pdflatex -output-directory=aux RJwrapper 
biblatex -output-directory=aux RJwrapper 
pdflatex -output-directory=aux RJwrapper 
pdflatex -output-directory=aux RJwrapper 

mv aux/RJwrapper.odf ./


