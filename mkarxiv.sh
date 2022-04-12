#
# script to create the ArXiv submission
#
# please be sure that you run pdflatex main.tex in the main directory
# before running the script, so main.bbl and the *pdf files are created


#
# after running the script, do (bu hand):
#
# \documentclass[preprint]{iucr}
# remove all "figures/"
# remove all "\twocolumns"
# change width in doubleslit figure
#    a)~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\newline
#    \includegraphics[width=0.490\textwidth]{doubleslit_scan.pdf}    etc
#


cd /users/srio/Documents/paper-multioptics
rm -rf ARXIV
mkdir ARXIV
cd ARXIV
cp ../template.tex ./template.tex
#cp ../iucr.bib .
cp ../iucr.cls .
cp ../iucr.bst .

cp ../template.bbl ./template.bbl

mkdir figures
cd figures

cp ../../figures/coordinates.pdf .
cp ../../figures/beamline.pdf .
cp ../../figures/plot_2D_spectral_density_36m.pdf .
cp ../../figures/plot_CSD_at_source.pdf .
cp ../../figures/plot_DoC_at_36m.pdf .
cp ../../figures/doubleslit_scan.pdf .
cp ../../figures/doubleslit_profile.pdf .
cp ../../figures/doubleslit_DoC.pdf .
cp ../../figures/CFvsGap.pdf .
cp ../../figures/fig_sim_results.pdf .
cp ../../figures/projection_approx.pdf .
cp ../../figures/c1.pdf .
cp ../../figures/c3.pdf .
cp ../../figures/srw_time.pdf .


cd ..

#cp ../harvard.sty .
# cp ../main.bbl .
# cp ../macros.tex .

#cp main.tex main.tex.orig

# biblio
# sed -e "s.^\\\\bibliography{references}.\\\\input{main\.bbl}." main.tex -i
#sed -e "s.\\\\bibliographystyle.\\% \\\\bibliographystyle.g" main.tex -i
#sed -e "s.^\\\\bibliography{references}.\\% \\\\bibliography{references}." main.tex -i
#sed -e "s.^\\\\end{document}.\\% \\\\end{document}." main.tex -i
#cat ../main.bbl >> main.tex
#echo "\end{document}" >> main.tex


# figure 1
#ln -s ../FIGURES/cf_gaussianshell-eps-converted-to.pdf ./figure1.pdf

#sed -e "s/FIGURES\/cf_gaussianshell.eps/figure1.pdf/" main.tex -i

# figure 2
#ln -s ../FIGURES/undulator_fit-eps-converted-to.pdf ./figure2.pdf
#sed -e "s/FIGURES\/undulator_fit.eps/figure2.pdf/" main.tex -i

# figure 3
#ln -s ../FIGURES/CF-eps-converted-to.pdf ./figure3.pdf
#sed -e "s/FIGURES\/CF.eps/figure3.pdf/" main.tex -i



pdflatex template.tex
#bibtex template
sleep 1.0
pdflatex template.tex
pdflatex template.tex

okular template.pdf

