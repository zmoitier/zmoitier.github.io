#!/bin/bash

for FILE in pages/*.md; do
    NAME="$(basename "$FILE" .md)"
    pandoc --from markdown-auto_identifiers --to html "$FILE" --output "docs/$NAME.html"
done

# minify -r -o out/ src
