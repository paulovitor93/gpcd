#!/bin/sh

for i in `seq 1 6`
do

scp -r /home/ifpb/Documentos/logs_experimentos/clientes/0$i/logs/*_T50_SF_clt_01_srv_01.txt /home/ifpb/Documentos/DropboxUpload/ComAtaque/ping/0$i/
scp -r /home/ifpb/Documentos/logs_experimentos/clientes/0$i/logs/*_T50_SF_clt_01_srv_02.txt /home/ifpb/Documentos/DropboxUpload/ComAtaque/ping/0$i/

scp -r /home/ifpb/Documentos/logs_experimentos/clientes/0$i/logs/*_NA_clt_01_srv_01.txt /home/ifpb/Documentos/DropboxUpload/SemAtaque/ping/0$i/
scp -r /home/ifpb/Documentos/logs_experimentos/clientes/0$i/logs/*_NA_clt_01_srv_02.txt /home/ifpb/Documentos/DropboxUpload/SemAtaque/ping/0$i/

done

scp -r /home/ifpb/Documentos/logs_experimentos/monitorado/collectl/*_T50_SF-srv02-20150924.tab.gz /home/ifpb/Documentos/DropboxUpload/ComAtaque/collectl/
scp -r /home/ifpb/Documentos/logs_experimentos/monitorado/collectl/*_NA-srv02-20150924.tab.gz /home/ifpb/Documentos/DropboxUpload/SemAtaque/collectl/

scp -r /home/ifpb/Documentos/logs_experimentos/monitorado/netstat/*_T50_SF.log /home/ifpb/Documentos/DropboxUpload/ComAtaque/netstat/
scp -r /home/ifpb/Documentos/logs_experimentos/monitorado/netstat/*_NA.log /home/ifpb/Documentos/DropboxUpload/SemAtaque/netstat/

scp -r /home/ifpb/Documentos/logs_experimentos/monitorado/sysbench/*_T50_SF.log /home/ifpb/Documentos/DropboxUpload/ComAtaque/sysbench/
scp -r /home/ifpb/Documentos/logs_experimentos/monitorado/sysbench/*_NA.log /home/ifpb/Documentos/DropboxUpload/SemAtaque/sysbench/
