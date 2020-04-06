#!/bin/bash
# Simple install script for the revise package.

# Combine installpath:
TEXMFHOME=$(kpsewhich -var-value=TEXMFHOME)
INSTALLPATH=$TEXMFHOME/tex/latex/revise

# Install file:
mkdir -p $INSTALLPATH
cp revise.sty $INSTALLPATH/
