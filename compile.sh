#!/bin/sh

set -eu

main="HeisenbergCarrierObstruction"
out="out"

mkdir -p "$out"

pdflatex -file-line-error -interaction=nonstopmode -synctex=1 \
  -output-directory="$out" "tex/$main.tex"

(
  cd "$out"
  BSTINPUTS="../tex:" BIBINPUTS="../tex:" bibtex "$main"
)

pdflatex -file-line-error -interaction=nonstopmode -synctex=1 \
  -output-directory="$out" "tex/$main.tex"
pdflatex -file-line-error -interaction=nonstopmode -synctex=1 \
  -output-directory="$out" "tex/$main.tex"

test -f "$out/$main.pdf"
