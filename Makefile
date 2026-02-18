SRCS := $(filter-out README.md, $(wildcard *.md))
PDFS := $(SRCS:.md=.pdf)

PANDOC_FLAGS := -H header.tex \
	-V geometry:margin=1in \
	-V setspace:singlespacing \
	--pdf-engine=xelatex

all: $(PDFS)

%.pdf: %.md header.tex
	pandoc $< $(PANDOC_FLAGS) -o $@

clean:
	rm -f $(PDFS)

.PHONY: all clean
