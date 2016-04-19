#!/bin/sh

ethtool -s eth2 speed 10 duplex full

sleep 60

#tcpdump clientes
tcpdump -i eth2 -U -w client_$1.cap &

sleep 1

#Ping Atacado
ping 192.168.0.200 >> /root/logs/ping_$1_clt_01_srv_01.txt &

#Ping Nao-Atacado
ping 192.168.10.201 >> /root/logs/ping_$1_clt_01_srv_02.txt &

#Star Siege
#siege -c 100 10.0.24.12 &
#siege -c 100 192.168.0.200 &
siege -c 100 192.168.10.201 &

#Espera 4 minutos
sleep 720

#Finaliza os processos do Ping e Siege
killall -s SIGINT ping
killall -s SIGINT siege
killall -s SIGINT tcpdump

#Espera aparecer na Tela
sleep 5

echo "1" >> log
