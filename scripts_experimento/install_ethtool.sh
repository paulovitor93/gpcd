#!/bin/sh

for i in `seq 1 16`
do
sshpass -p 'debian01' ssh root@192.168.0.$i 'apt-get install ethtool -y'
done
