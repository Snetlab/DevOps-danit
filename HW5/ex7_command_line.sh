#!/bin/bash

read -r -p "Enter file: " file

if [[ -f "$file" ]]; then
    lines=$(wc -l < "$file")
    echo "Number of lines: $lines"
else
    echo "File does not exist!"
fi
