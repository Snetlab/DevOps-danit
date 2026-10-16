#!/bin/bash

WATCH_DIR="$HOME/bash_script/watch"

while true; do
    for file in "$WATCH_DIR"/*; do
        if [[ -f "$file" && "$file" != *.back ]]; then
            echo "New file: $file"
            cat "$file"
            mv -- "$file" "$file.back"
        fi
    done

    sleep 2
done
