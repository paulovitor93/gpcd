#!/bin/sh
#Deletanto Sleep 90
#sleep 90
#tcpdump -i xapi0 -s 0 -U >> /var/run/sr-mount/55d0a2dc-5476-37cc-c976-3f80d2c26bc0/xapi0_$1 &
tcpdump -i eth1 -s 0 -U >> /var/run/sr-mount/55d0a2dc-5476-37cc-c976-3f80d2c26bc0/eth1_$1.cap &
#tcpdump -i eth2 -s 0 -U >> /var/run/sr-mount/55d0a2dc-5476-37cc-c976-3f80d2c26bc0/eth2_$1.cap &
tcpdump -i vif1.0 -s 0 -U >> /var/run/sr-mount/55d0a2dc-5476-37cc-c976-3f80d2c26bc0/vif1.0_$1.cap &
tcpdump -i vif2.0 -s 0 -U >> /var/run/sr-mount/55d0a2dc-5476-37cc-c976-3f80d2c26bc0/vif2.0_$1.cap &

sleep 1080

killall -s SIGTERM tcpdump
killall xenserver.sh
