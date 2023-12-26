#!/bin/env sh

echo "Arch Linux \`PKGBUILD\`s I use" > README.md
echo "| Package name | Package description |" >> README.md
echo "| - | - |" >> README.md
for FILE in $(ls)
do
    if [ ! -d "$FILE" ]
    then
        continue
    fi

    echo "| $FILE | $(grep pkgdesc "$FILE/PKGBUILD" | sed 's/^pkgdesc="//;s/"$//') |" >> README.md
done
