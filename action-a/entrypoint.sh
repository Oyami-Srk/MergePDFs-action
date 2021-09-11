#!/bin/sh -l

cd "$PATH"
pdfunite *.pdf combined.pdf
echo "::set-output result=$PATH/combined.pdf"
