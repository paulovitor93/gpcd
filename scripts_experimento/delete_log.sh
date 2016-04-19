#!/bin/sh

for i in `seq 1 6`
do
sshpass -p 'debian01' ssh root@192.168.0.$i 'rm /root/logs/* ;rm /root/log ; rm /root/*.cap'
done

for i in `seq 7 16`
do
sshpass -p 'debian01' ssh root@192.168.0.$i 'rm /root/log'
done

sshpass -p 'Websrv01' ssh root@192.168.0.200 'rm /root/log/netstat/* ; rm /var/www/experimentos/*'
sshpass -p 'Websrv02' ssh root@192.168.10.201 'rm /root/log/netstat/* ; rm /root/log/sysbench/* ; rm /var/www/experimentos/*'

echo 'Ouch'
