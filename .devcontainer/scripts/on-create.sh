#!/usr/bin/env bash
set -euo pipefail

sudo apt-get update
sudo apt-get install -y \
  texlive \
  texlive-science \
  texlive-latex-extra \
  texlive-bibtex-extra \
  texlive-publishers \
  biber \
  latexmk \
  texlive-lang-german \
  texlive-latex-base texlive-latex-recommended texlive-fonts-recommended \
  dvipng cm-super texlive-pictures \
  texlive-latex-extra texlive-fonts-extra dvisvgm ghostscript

sudo apt-get install -y \
  build-essential \
  procps \
  curl \
  file \
  git

python3 -m venv .venv
.venv/bin/python -m pip install --upgrade pip ipykernel

.venv/bin/python -m pip install \
  pandas \
  numpy \
  matplotlib \
  pubchempy \
  pint \
  pint-pandas \
  latexify-py \
  scienceplots \
  pyperclip \
  mol2chemfigPy3 \
  jinja2