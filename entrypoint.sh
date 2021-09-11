#!/bin/sh -l

cd "$INPUT_PATH"
qpdf --empty --pages *.pdf -- $INPUT_FILENAME.pdf
echo "::set-output result=$INPUT_PATH/$INPUT_FILENAME.pdf"
