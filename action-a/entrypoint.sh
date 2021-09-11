#!/bin/sh -l

cd "$INPUTFOLDER"
pdfunite * combined.pdf
echo "::set-output result=$INPUTFOLDER/combined.pdf"
