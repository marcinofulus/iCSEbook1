#!/bin/bash

file = $1
cp $1 tmp.tex
sed -i '/\\documentclass\[10pt,twocolumn\]{article}/ r header.txt' tmp.tex
pdflatex tmp.tex && pdfcrop tmp.pdf
pdfseparate tmp-crop.pdf tmp-%d.pdf 
rm tmp.* -v

