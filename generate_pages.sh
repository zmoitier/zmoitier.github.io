#!/bin/bash

# for FILE in *.html; do
#     BASENAME="${FILE%.html}"
#     pandoc --from html --to markdown "$FILE" --output "pages/$BASENAME.md"
# done

pandoc --from markdown_strict --to html pages/presentation.md --output static/presentation.html
pandoc --from markdown_strict --to html pages/enseignement.md --output static/enseignement.html
pandoc --from markdown_strict --to html pages/research.md --output static/research.html
