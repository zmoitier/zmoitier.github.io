#!/bin/sh

cp content/index.html docs/index.html
cp content/style.css docs/style.css
cp content/script.js docs/script.js

for FILE in content/*.md; do
    NAME="$(basename "$FILE" .md)"
    pandoc --from markdown-auto_identifiers --to html "$FILE" --output "docs/$NAME.html"
done

for FILE in docs/*.html docs/*.css docs/*.js docs/images/*.svg; do
    minify -o "$FILE" "$FILE"
done
