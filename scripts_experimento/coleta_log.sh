#!/bin/sh

for i in `seq 1 6`
do
sshpass -p 'debian01' scp -r root@192.168.0.$i:/root/logs/* /home/ifpb/Documentos/logs_experimentos/clientes/0$i/logs/
done

sshpass -p 'kdishr' scp -r root@10.0.4.60:/var/run/sr-mount/dac32a23-2fa2-ca8a-2c33-e9f74828588d/*.cap /home/ifpb/Documentos/logs_experimentos/xenserver/

sshpass -p 'Websrv01' scp -r root@192.168.0.200:/var/www/experimentos/* /home/ifpb/Documentos/logs_experimentos/atacado/collectl/
sshpass -p 'Websrv01' scp -r root@192.168.0.200:/root/log/netstat/* /home/ifpb/Documentos/logs_experimentos/atacado/netstat/
sshpass -p 'Websrv01' scp -r root@192.168.0.200:/root/*.cap /home/ifpb/Documentos/logs_experimentos/atacado/tshark/

sshpass -p 'Websrv02' scp -r root@192.168.10.201:/var/www/experimentos/* /home/ifpb/Documentos/logs_experimentos/monitorado/collectl/
sshpass -p 'Websrv02' scp -r root@192.168.10.201:/root/log/netstat/* /home/ifpb/Documentos/logs_experimentos/monitorado/netstat/
sshpass -p 'Websrv02' scp -r root@192.168.10.201:/root/log/sysbench/* /home/ifpb/Documentos/logs_experimentos/monitorado/sysbench/
sshpass -p 'Websrv02' scp -r root@192.168.10.201:/root/*.cap /home/ifpb/Documentos/logs_experimentos/monitorado/tshark/
