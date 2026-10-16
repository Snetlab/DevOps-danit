#!/bin/bash

read -r -p "Ener string: " line

words=($line)

for ((i=${#words[@]}-1; i>=0; i--)); do
    echo -n "${words[i]} "
done

echo
