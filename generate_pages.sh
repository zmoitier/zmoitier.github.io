#!/bin/bash

# for FILE in *.html; do
#     BASENAME="${FILE%.html}"
#     pandoc --from html --to markdown "$FILE" --output "pages/$BASENAME.md"
# done

pandoc --from markdown_strict --to html pages/presentation.md --output docs/presentation.html
pandoc --from markdown_strict --to html pages/enseignement.md --output docs/enseignement.html
pandoc --from markdown_strict --to html pages/research.md --output docs/research.html

