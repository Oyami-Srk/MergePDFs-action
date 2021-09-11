#!/bin/sh -l

cd "resources"
echo "$PATH"
ls
qpdf --empty --pages *.pdf -- combined.pdf
echo "::set-output result=$INPUTFOLDER/combined.pdf"
