# NEMUS Thesis Template

| ![ ](./img/example_title_page.png) |
| :--------------------------------: |
|         Example Title Page         |

## Getting started

### Overleaf


### macOS

To get started there are a few package requirements if you `brew install basictex`

```
brew install basictex
eval "$(/usr/libexec/path_helper)"
sudo tlmgr update --self
sudo tlmgr install texliveonfly
sudo tlmgr install xelatex
sudo tlmgr install adjustbox
sudo tlmgr install tcolorbox
sudo tlmgr install collectbox
sudo tlmgr install ucs
sudo tlmgr install environ
sudo tlmgr install trimspaces
sudo tlmgr install titling
sudo tlmgr install enumitem
sudo tlmgr install rsfs
sudo tlmgr install tocbibind
sudo tlmgr install appendix
sudo tlmgr install datetime
sudo tlmgr install fmtcount
sudo tlmgr install nomencl
sudo tlmgr install multirow
sudo tlmgr install siunitx
```

## Compiling

###   Shell script for PDFLaTeX (Unix/Linux)

Usage: `sh ./compile-thesis.sh [OPTIONS] main`

- [option]  `compile`: Compiles the PhD Thesis
- [option]  `clean`: removes temporary files - no filename required