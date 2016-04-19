#!/bin/sh

EXP='_NA'

for j in `seq 1 30`
do
sshpass -p 'Websrv01' ssh root@192.168.0.200 '/root/server.sh '$j$EXP &
sshpass -p 'Websrv01' ssh root@192.168.0.200 'stress-ng --cpu 2 --io 2 --vm 4 --vm-bytes 1G --timeout 840s' &
sshpass -p 'Websrv02' ssh root@192.168.10.201 '/root/server.sh '$j$EXP &
sshpass -p 'Websrv02' ssh root@192.168.10.201 '/root/stress.sh '$j$EXP &
sshpass -p 'kdishr' ssh root@10.0.4.60 '/root/xenserver.sh '$j$EXP &
#echo "OUCH NA SERVER SSHPASS ESPERANDO 35 Segundos"
#Ja tem Sleep nos clientes
#sleep 35

for i in `seq 1 6`
do 
sshpass -p 'debian01' ssh root@192.168.0.$i '/root/client.sh '$j$EXP &
echo "OUCH $i clients"
done
echo 'OUCH Esperando 1080 segundos'
sleep 1080

done

EXP2='_T50_SF'

for j in `seq 1 30`
do
sshpass -p 'Websrv01' ssh root@192.168.0.200 '/root/server.sh '$j$EXP2 &
sshpass -p 'Websrv01' ssh root@192.168.0.200 'stress-ng --cpu 2 --io 2 --vm 4 --vm-bytes 1G --timeout 840s' &
sshpass -p 'Websrv02' ssh root@192.168.10.201 '/root/server.sh '$j$EXP2 &
sshpass -p 'Websrv02' ssh root@192.168.10.201 '/root/stress.sh '$j$EXP2 &
sshpass -p 'kdishr' ssh root@10.0.4.60 '/root/xenserver.sh '$j$EXP2 &
#echo "OUCH NA SERVER SSHPASS ESPERANDO 35 Segundos"
#sleep 35

for i in `seq 1 6`
do
sshpass -p 'debian01' ssh root@192.168.0.$i '/root/client.sh '$j$EXP2 &
echo "OUCH $i clients"
done

for i in `seq 7 16`
do
sshpass -p 'debian01' ssh root@192.168.0.$i '/root/slave.sh' &
echo 'OUCH Esperando 1080 segundos'
done

sleep 1080

done
