# CV

## Adapting my CV

Can you do the minimal changes to my resume.md to adapt it to the job listing?

<Job Link>

Take inspiration from my cv.md which is more complete
Produce a new version of the resume.md file, call it resume_adapted.md




## Setup

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
