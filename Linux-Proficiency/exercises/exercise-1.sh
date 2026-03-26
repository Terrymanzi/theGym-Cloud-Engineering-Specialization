#!/bin/bash
extensions=("txt" "log" "csv")
name="terry"

for ((i=0; i < ${#extensions[@]}; i++))
do
        mkdir "${extensions[i]}"
        touch "${extensions[i]}/$name${extensions[i]}"
done
ll