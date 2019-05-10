all:
	inkscape -zD -e images/pogruzhatel.png -d 300 images/pogruzhatel.svg
	pdflatex diplom.tex
	pdflatex diplom.tex
	evince diplom.pdf &

clean:
	rm *.aux *.log *.out *.toc *.pdf
	rm images/pogruzhatel.png
