#!/bin/bash
name="terry"
last=$(ls -v $name* | tail -n 1)
lastNum=${last#$name}
lastNum=${lastNum:-0}
for ((i=lastNum+1; i<=lastNum+10; i++))
do
        touch "${name}${i}"
done
echo "###############################"
echo "#####   Scrip output      #####"
echo "###############################"
ls -al -v $name*