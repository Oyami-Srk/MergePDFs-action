#!/bin/sh -l

cd "$INPUT_PATH"
pdfunite *.pdf combined.pdf
echo "::set-output result=$INPUT_PATH/combined.pdf"
