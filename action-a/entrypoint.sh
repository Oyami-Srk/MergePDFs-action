#!/bin/sh -l

cd "resources"
echo "$PATH
pdfunite * combined.pdf
echo "::set-output result=$INPUTFOLDER/combined.pdf"
