#!/bin/sh -l

cd "resources"
pdfunite * combined.pdf
echo "::set-output result=$INPUTFOLDER/combined.pdf"
