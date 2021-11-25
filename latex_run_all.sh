rm template.pdf
#rm figures/fig1.pdf
#rm figures/fig2.pdf
#rm figures/fig4.pdf

#./fig1.sh
#./fig2.sh
#./fig4.sh

pdflatex template.tex
bibtex template
sleep 1.0
pdflatex template.tex
pdflatex template.tex

okular template.pdf

