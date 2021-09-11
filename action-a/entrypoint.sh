#!/bin/sh -l

cd "resources"
echo "$PATH"
ls
qpdf --empty --pages *.pdf -- out.pdf
echo "::set-output result=$INPUTFOLDER/combined.pdf"
