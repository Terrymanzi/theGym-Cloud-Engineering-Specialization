#!/bin/bash
#       based on the age state the user category
read -p "Enter your Name" name
read -p "Enter your age: " age

: '
-eq = equal

-ne = not equal

-lt = less than

-gt = greater than

-ge = greater or equal
  '

if [ $age -ge 18 ]; then
        echo "$name, you're an adult"
else
        echo "$name, you're a Minor"
fi