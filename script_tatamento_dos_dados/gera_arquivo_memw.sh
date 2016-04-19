#!/bin/sh

for i in `seq 1 30`
do

sed -n '1p' memw_"$i"_NA.log >> Op_perform_ops-sec.log
sed -n '2p' memw_"$i"_NA.log >> Op_transferred_MB-sec.log
sed -n '3p' memw_"$i"_NA.log | rev | awk '{print substr($1,2,10)}' | rev >> exec_total_time.log
sed -n '4p' memw_"$i"_NA.log >> exec_total_number_events.log
sed -n '5p' memw_"$i"_NA.log >> exec_time_taken_event.log
sed -n '6p' memw_"$i"_NA.log | rev | awk '{print substr($1,3,10)}' | rev >> stats_min.log
sed -n '7p' memw_"$i"_NA.log | rev | awk '{print substr($1,3,10)}' | rev >> stats_avg.log
sed -n '8p' memw_"$i"_NA.log | rev | awk '{print substr($1,3,10)}' | rev >> stats_max.log
sed -n '9p' memw_"$i"_NA.log | rev | awk '{print substr($1,3,10)}' | rev >> stats_approx.log
sed -n '10p' memw_"$i"_NA.log >> threads_events_avg_stddev.log
sed -n '11p' memw_"$i"_NA.log >> threads_time_avg_stddev.log

done
