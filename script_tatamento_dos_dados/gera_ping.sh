#!/bin/sh

for i in `seq 1 30`
do
for j in `seq 1 6`
do
cat 0"$j"/ping_"$i"_T50_SF_clt_01_srv_02.txt | cut -d "=" -f 4 | awk '{print ($1)}' | sed '/PING/d' >> ping_at_"$i".log
done
done
