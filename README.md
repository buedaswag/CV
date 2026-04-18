# CV

## Adapting my CV

Can you do the minimal changes to my resume.md to adapt it to the job listing?

<Job Link>

Take inspiration from my cv.md which is more complete
Produce a new version of the resume.md file, call it resume_adapted.md

Also adapt this message template to suit the job:

```
Hi ___________,

At RELEX, I managed Terraform infrastructure for large enterprise clients and helped multiple teams cut deployment time by 64% (monthly → weekly) and eliminate production incidents.

Worth a quick 15min chat?
https://calendly.com/migueldiaseu/

Best,
Miguel
```


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
