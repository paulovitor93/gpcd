#!/bin/bash

linhas=`cat teste2 | wc -l`
x=0
while read line
do

x=$(echo "$x+$line" | bc)

done < teste2

media=$(echo "scale=3; $x/$linhas" | bc)

echo $media
