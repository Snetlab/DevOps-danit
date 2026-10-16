#!/bin/bash

read -r -p "Виберіть файл: " file
read -r -p "Введіть папку призначення: " destination

if [[ -f "$file" ]]; then
    cp "$file" "$destination"
    echo "Файл скопійовано!"
else
    echo "Файл не існує!"
fi
