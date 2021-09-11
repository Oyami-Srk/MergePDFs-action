#!/bin/sh -l

cd "$PATH"
pdfunite * combined.pdf
echo "::set-output result=$PATH/combined.pdf"
