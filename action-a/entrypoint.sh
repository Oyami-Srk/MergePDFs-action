#!/bin/sh -l

cd "resources"
echo "$PATH"
ls
pdfunite * combined.pdf
echo "::set-output result=$INPUTFOLDER/combined.pdf"
