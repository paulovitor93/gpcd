#!/bin/sh
COUNT=0
collectl -sscmn -P -f /var/www/experimentos/$1 &

while [ $COUNT != 840 ]
do
netstat -taupen | grep 80 | wc -l >> socket_$1.log
sleep 1
COUNT=$((COUNT+1))
done

killall collectl
killall server.sh
