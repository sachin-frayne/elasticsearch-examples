#!/usr/bin/env bash

cat .notes.md > readme.md
echo >> readme.md

for F in *.md
do
    if [[  ! ${F} == "readme.md" ]]
    then
    echo "  * [${F//.md}](${F})" >> readme.md
    fi
done
