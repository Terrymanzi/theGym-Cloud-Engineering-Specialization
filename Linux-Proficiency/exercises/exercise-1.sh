#!/bin/bash
extensions=("txt" "log" "csv")
name="terry"

for ((i=0; i < ${#extensions[@]}; i++))
do
        mkdir "${extensions[i]}"
        cd "${extensions[i]}"
        touch "$name${extensions[i]}"
        cd ..
done