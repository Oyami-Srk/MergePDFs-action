# Combine PDFs

GitHub Action to combine PDFs in a specific folder

## Usage

Create a file called main.yml in .github/workflows/main.yml in your repository and copy the code below

Just change "files" with the list of the pdfs, and change output to the name of the output pdf you want

```yml
name: example
on:
  push:
  workflow_dispatch:

jobs:
  build:
    name: CombinePDFS
    runs-on: ubuntu-latest
    env:
      files: | // CHANGE THIS LIST
        resources/b.pdf
        resources/a.pdf
        resources/c (1).pdf
      output: example.pdf // CHANGE THIS (note the pdf extension is required)
    steps:
      - uses: actions/checkout@v4
      - uses: Oyami-Srk/MergePDFs-action@v1
        with:
          files: ${{env.files}}
          output: ${{env.output}}
      - name: Upload combined pdf
        uses: actions/upload-artifact@v4
        with:
          name: ${{env.output}}
          path: ${{env.output}}
```
