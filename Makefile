TARGET=resume

default: pdf

pdf:
	pdflatex ${TARGET}.tex

clean:
	rm *.aux
	rm *.log
	rm *.out
