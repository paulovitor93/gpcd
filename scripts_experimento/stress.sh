#!/bin/sh

sleep 70
sysbench --test=fileio --num-threads=32 --file-total-size=4G --file-test-mode=rndrw prepare
sleep 10
sysbench --test=cpu --cpu-max-prime=200000 --max-time=120s --num-threads=4 run >> /root/log/sysbench/cpu_$1.log 
sleep 10
sysbench --test=fileio --num-threads=16 --file-total-size=2G --file-test-mode=rndrw run >> /root/log/sysbench/disk_$1.log 
sleep 10
sysbench --test=memory --memory-block-size=1K --memory-total-size=50G --memory-oper=read run >> /root/log/sysbench/memr_$1.log 
sleep 10
sysbench --test=memory --memory-block-size=1K --memory-total-size=50G --memory-oper=write run >> /root/log/sysbench/memw_$1.log 
sleep 10
sysbench --test=fileio --num-threads=16 --file-total-size=2G --file-test-mode=rndrw cleanup
