# Combine PDFs

GitHub Action to combine PDFs in a specific folder

## Usage

Just change "path" with the path of the folder where the pdfs are, and change filename to the name of the output pdf you want

```yml
on: [push]

jobs:
  build:
    name: CombinePDFS
    runs-on: ubuntu-latest
    env:
      path: resources
      filename: example
    steps:
      - uses: actions/checkout@v2
      - uses: ./action-a
        with:
          path: ${{env.path}}
          filename: ${{env.filename}}
      - name: Upload combined pdf
        uses: actions/upload-artifact@v2
        with:
          name: ${{env.filename}}
          path: ${{env.path}}/${{env.filename}}.pdf

```
