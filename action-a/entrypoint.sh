#!/bin/sh -l

cd "resources"
echo "$PATH"
ls
pdfunite *.{pdf} combined.pdf
echo "::set-output result=$INPUTFOLDER/combined.pdf"
