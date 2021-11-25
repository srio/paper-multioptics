#
# script to create the ArXiv submission
#
# please be sure that you run pdflatex main.tex in the main directory
# before running the script, so main.bbl and the *pdf files are created

cd /users/srio/Documents/paper-transfocators
rm -rf ARXIV
mkdir ARXIV
cd ARXIV
cp ../template.tex .
cp ../iucr.bib .
cp ../iucr.cls .
cp ../iucr.bst .


mkdir figures
cd figures

cp ../../figures/oneTF_UndSource_RectSlit_R200um.eps  .
cp ../../figures/cf_vs_aperture.eps  .
cp ../../figures/oneTF_UndSource_RectSlit_R200um_PartialCoherence_h.eps  .
cp ../../figures/oneTF_UndSource_RectSlit_R200um_PartialCoherence_v.eps  .
cp ../../figures/oneTF_ShadowHybrid_R200um.eps  .
cp ../../figures/f1f2_h.eps  .
cp ../../figures/f1f2_v.eps  .
cp ../../figures/sizes_h.eps  .
cp ../../figures/sizes_v.eps  .
cp ../../figures/fig_wofry.pdf  .
cp ../../figures/fig_srw.pdf  .
cp ../../figures/fig_comsyl.pdf  .
cp ../../figures/fig_hybrid.pdf  .
cp ../../figures/sizes_h_hybrid.eps  .
cp ../../figures/sizes_v_hybrid.eps  .
cp ../../figures/fig_caustic.pdf  .
cp ../../figures/fig_caustic_correction.pdf  .
cp ../../figures/c1.pdf  .
cp ../../figures/c3.pdf  .
cp ../../figures/srw_time.pdf  .


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
bibtex template
sleep 1.0
pdflatex template.tex
pdflatex template.tex

okular template.pdf

