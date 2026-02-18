# CV

```bash
# installation
brew install pandoc
brew install --cask basictex
sudo tlmgr update --self
sudo tlmgr install sectsty
sudo tlmgr install hyphenat
sudo tlmgr install titlesec

# build all CVs
make

# build a single CV
make CV.pdf

# clean all generated PDFs
make clean
```
