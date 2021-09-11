#!/bin/sh -l

cd "$inputpath"
echo "$PATH"
qpdf --empty --pages *.pdf -- $outputName.pdf
echo "::set-output result=$inputPath/$outputName.pdf"
