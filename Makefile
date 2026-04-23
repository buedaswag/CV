SRCS := $(wildcard cv/*.md) $(wildcard cv/adapted/*.md)
PDFS := $(SRCS:.md=.pdf)

PANDOC_FLAGS := -H cv/header.tex \
	-V geometry:margin=1in \
	-V setspace:singlespacing \
	--pdf-engine=xelatex

all: $(PDFS)

%.pdf: %.md cv/header.tex
	pandoc $< $(PANDOC_FLAGS) -o $@

clean:
	rm -f $(PDFS)

.PHONY: all clean
