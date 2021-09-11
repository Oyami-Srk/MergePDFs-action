#!/bin/sh -l

cd "$inputPath"
echo "$PATH"
qpdf --empty --pages *.pdf -- $outputName.pdf
echo "::set-output result=$inputPath/$outputName.pdf"
