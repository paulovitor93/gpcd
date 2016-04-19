#!/bin/sh

for i in `seq 1 16`
do
echo $i
sshpass -p 'debian01' ssh root@192.168.0.$i 'ethtool -s eth2 speed 10 duplex full'
done
