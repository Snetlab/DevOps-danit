#!/bin/bash

read -r -p "Enter file name: " file

if [[ -f "$file" && -r "$file" ]]; then
    echo "File contents:"
    cat "$file"
else
    echo "Error: File does not exist or cannot be read!"
fi
