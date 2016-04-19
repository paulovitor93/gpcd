#!/bin/sh

for i in `seq 1 7`
do
sshpass -p 'debian01' ssh root@192.168.0.$i 'killall siege; killall ping' &
done

for i in `seq 7 16`
do
sshpass -p 'debian01' ssh root@192.168.0.$i 'killall slowloris.pl; killall t50' &
done

echo 'Ouch'
