THEME = Численное моделирование процесса погружения сваи импульсным погружателем
STUDENT = С.Д. Бабошин
DEGREE = д.ф.-м.н.
DIRECTOR = Д.В. Костин

SED = "s/{{theme}}/${THEME}/; s/{{student}}/${STUDENT}/; s/{{degree}}/${DEGREE}/; s/{{director}}/${DIRECTOR}/"

all:
	# титульный лист
	sed -e ${SED} titlepage.fodt > tp-output.fodt
	libreoffice --headless --convert-to pdf tp-output.fodt

	# .tex
	pdflatex diplom.tex
	pdflatex diplom.tex
	evince diplom.pdf &

clean:
	rm *.aux *.log *.out *.toc *.pdf
	rm images/pogruzhatel.png images/*.pdf
	rm tp-output.*
