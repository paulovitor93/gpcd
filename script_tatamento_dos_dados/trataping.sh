#!/bin/sh

for i in `seq 1 30`
do

cat ping_at_"$i".log | sed '/---/d' | sed '/240/d' | sed '/241/d' | sed '/^$/d' > ping_at_"$i"_tratado.log

done 
