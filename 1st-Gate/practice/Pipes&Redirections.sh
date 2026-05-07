#!/bin/bash

# spreading the list into a file for grep to pipe to name.txt file
words=("terry" "kelly" "nelly" "perry" "cherry" "sherry")

printf "%s\n" "${words[@]}" | grep "terry" | tee names.txt | wc -l

# without using arrays
echo -e "terry \n kelly \n nelly \n perry" | grep "terry" |tee names.txt | wc -l

# using for loop
for word in "${words[@]}"; do
    echo "$word"
done | grep "erry" | tee names.txt | wc -l