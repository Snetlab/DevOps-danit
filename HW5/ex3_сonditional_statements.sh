#!/bin/bash

if [[ $# -ge 1 ]]; then
    file="$1"
else
    read -r -p "Введіть ім'я файлу: " file
fi

if [[ -f "$file" ]]; then
    echo "Файл '$file' існує."
else
    echo "Файл '$file' не існує."
fi
