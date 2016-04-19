#!/bin/sh

for i in `seq 1 30`
do

cat media_at_"$i".log >> medias_todos_at.log

done
