# CV

```
brew install pandoc
brew install --cask basictex
sudo tlmgr update --self
sudo tlmgr install sectsty
sudo tlmgr install hyphenat
sudo tlmgr install titlesec
pandoc CV.md -H header.tex -H nohyphenation.tex -V geometry:margin=1in -V setspace:singlespacing -V mainfont="Helvetica" --pdf-engine=xelatex -o CV.pdf
```
