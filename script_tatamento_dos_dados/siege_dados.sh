#!/bin/bash

for i in `seq 1 6`
do

head -n 31 siege$i.log >> teste
tail -n 30 siege$i.log >> siege_AT.log

done

sed '/Date/d' teste > siege_NA.log 
rm -r teste
