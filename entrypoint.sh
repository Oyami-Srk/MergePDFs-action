#!/bin/bash -l

echo "$INPUT_FILES" | head -c -1 | xargs -d '\n' bash -cx "qpdf --empty --pages \"\${@}\" -- \"$INPUT_OUTPUT\"" --

echo "::set-output result=$INPUT_OUTPUT"
