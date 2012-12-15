.SUFFIXES: .plt .tex .pdf

fig/%.pdf: fig/%.plt
	gnuplot -e " \
		set terminal pdf; \
		set output '$@' \
		" $<

report.pdf: report.tex fig/noise-005.pdf fig/noise-009.pdf fig/rrts.pdf fig/runtimes.pdf
	pdflatex report
	bibtex report
	pdflatex report
	pdflatex report

all: report.pdf

clean:
	rm report.pdf
	rm report.aux
	rm report.bbl
	rm report.blg
	rm report.log
	rm fig/*.pdf
