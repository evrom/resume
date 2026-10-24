TARGET=resume

.PHONY: default pdf docker-pdf clean

default: pdf

pdf:
	pdflatex ${TARGET}.tex

docker-pdf:
	docker build --target export --output type=local,dest=. .

clean:
	rm -f *.aux *.log *.out *.fls *.fdb_latexmk
