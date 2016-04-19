#!/bin/sh

for i in `seq 1 30`
do

head -n 1 cpu_"$i"_AT.log | awk '{print substr($1,1,8)}' >> total_time.log
sed -n '2p' cpu_"$i"_AT.log >> totaln_events.log
sed -n '3p' cpu_"$i"_AT.log >> total_time_by_event_exec.log
sed -n '4p' cpu_"$i"_AT.log | awk '{print substr($1,1,5)}' >> stats_min.log
sed -n '5p' cpu_"$i"_AT.log | awk '{print substr($1,1,5)}' >> stats_avg.log
sed -n '6p' cpu_"$i"_AT.log | awk '{print substr($1,1,6)}' >> stats_max.log
sed -n '7p' cpu_"$i"_AT.log | awk '{print substr($1,1,5)}' >> stats_approx.log
sed -n '8p' cpu_"$i"_AT.log  >> threads_events_avg_stddev.log
sed -n '9p' cpu_"$i"_AT.log  >> threads_exec_time_avg_stddev.log

done
