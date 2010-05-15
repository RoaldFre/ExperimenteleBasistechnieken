#!/bin/sh

#usage: ./makegraph.sh input output
#input: zonder ".tex" voor input
#input: zonder ".png" voor output

input=$1
tmpname="$1-tmp"
output=$2

cat << EOF > $tmpname.tex
\documentclass{article}
\usepackage{graphicx}
\begin{document}
\graphicspath{non-existant-dir-but-some-double-dots-in-included-path}
\thispagestyle{empty}
\input{$input}
\end{document}
EOF

latex $tmpname.tex
dvipdf $tmpname.dvi
pdfcrop $tmpname{,-crop}.pdf
convert -negate -density 600x600 $tmpname-crop.pdf $output.png
#pdftops $tmpname{-inv.pdf,.ps}
#ps2epsi $tmpname.ps $output 

rm $tmpname{.tex,.dvi,.pdf,.aux,.log,-crop.pdf}
rm $input.{tex,eps}

