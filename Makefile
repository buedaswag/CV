SRCS := $(filter-out README.md, $(wildcard *.md))
PDFS := $(SRCS:.md=.pdf)

PANDOC_FLAGS := -H header.tex \
	-V geometry:margin=1in \
	-V setspace:singlespacing \
	--pdf-engine=xelatex

all: clean $(PDFS)

%.pdf: %.md header.tex
	pandoc $< $(PANDOC_FLAGS) -o $@

clean:
	rm -f $(PDFS)

# German resume (also built by `all` via pattern rule); explicit target for convenience
resume-de: resume_adapted_deutche.pdf

.PHONY: all clean resume-de
