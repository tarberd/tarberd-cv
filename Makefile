SRC_FILES = resume.tex

OUTDIR = build

# LATEXMK_ARGS = -xelatex -synctex=1\
# 	-file-line-error\
# 	-logfilewarninglist\
# 	-recorder\
# 	-interaction=nonstopmode\
# 	-shell-escape\
# 	-pdfxe\
# 	-outdir=$(OUTDIR)

all: $(SRC_FILES:.tex=.pdf)

%.pdf: %.tex
	lualatex $<
# latexmk $(LATEXMK_ARGS) $<

clean:
	rm -r $(OUTDIR)
