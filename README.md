# CV

## Adapting my CV

Can you do the minimal changes to my cv/Resume.md to adapt it to the job listing?

<Job Link>

Take inspiration from my cv/CV.md which is more complete
Produce a new version of the Resume.md file, call it cv/adapted/cv-miguel-dias-<company>-<position>.md (all lowercase ASCII, kebab-case; append `-de` for German). This unique-per-job naming lets me run several adaptations in parallel without overwriting each other.

Also adapt this message template to suit the job. Keep it the same length (one achievement sentence). The sentence should concisely touch on the top key responsibilities/requirements in the listing (not just one), and must stay faithful to my CV — do not embellish or imply scope I didn't have.

```
Hi ___________,

At RELEX, I managed Terraform infrastructure for large enterprise clients and helped multiple teams cut deployment time by 64% (going from monthly to weekly) and eliminate production incidents.

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
make cv/CV.pdf

# clean all generated PDFs
make clean
```
