#!/bin/sh -l

cd "$inputpath"

qpdf --empty --pages *.pdf -- $outputName.pdf
echo "::set-output result=$inputpath/$outputName.pdf"
