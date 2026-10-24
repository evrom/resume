# Resume
[![Build Status](https://github.com/evrom/resume/actions/workflows/ci.yml/badge.svg)](https://github.com/evrom/resume/actions/workflows/ci.yml?query=branch%3Amaster)

Resume made with LaTeX


## Prequesites

Requires LaTeX installation, including ModernCV package and font awesome to render social icons . You may also use <https://www.overleaf.com/> to edit and render this resume in the cloud without needing to install anything.

For ubuntu:

```
sudo aptitude install texlive-latex-extra texlive-fonts-extra
```

## Building

### With Docker

Build `resume.pdf`:
```bash
make docker-pdf
# or
docker build --target export --output type=local,dest=. .
```

### With Local LaTeX

Prerequisites: Requires a local LaTeX installation, including the ModernCV package and Font Awesome to render social icons.

For Ubuntu / Debian:
```bash
sudo aptitude install texlive-latex-extra texlive-fonts-extra
```

Compile:
```bash
make
```

Clean:
```bash
make clean
```
