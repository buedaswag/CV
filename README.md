# CV

```
brew install pandoc
brew install --cask basictex
pandoc CV.md -V geometry:margin=1in -V setspace:singlespacing -V mainfont="Helvetica" --pdf-engine=xelatex -o CV.pdf
```
