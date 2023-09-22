#!/usr/bin/env sh

cd resume
xelatex resume.tex
mv resume.pdf ../.

cd ../
qpdf resume.pdf --pages . 1-1 -- outputfile.pdf
mv outputfile.pdf resume.pdf
