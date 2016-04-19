#!/bin/sh

for i in `seq 1 30`
do

sed -n '1p' memr_"$i"_AT.log >> Op_perform_ops-sec.log
sed -n '2p' memr_"$i"_AT.log >> Op_transferred_MB-sec.log
sed -n '3p' memr_"$i"_AT.log | rev | awk '{print substr($1,2,10)}' | rev >> exec_total_time.log
sed -n '4p' memr_"$i"_AT.log >> exec_total_number_events.log
sed -n '5p' memr_"$i"_AT.log >> exec_time_taken_event.log
sed -n '6p' memr_"$i"_AT.log | rev | awk '{print substr($1,3,10)}' | rev >> stats_min.log
sed -n '7p' memr_"$i"_AT.log | rev | awk '{print substr($1,3,10)}' | rev >> stats_avg.log
sed -n '8p' memr_"$i"_AT.log | rev | awk '{print substr($1,3,10)}' | rev >> stats_max.log
sed -n '9p' memr_"$i"_AT.log | rev | awk '{print substr($1,3,10)}' | rev >> stats_approx.log
sed -n '10p' memr_"$i"_AT.log >> threads_events_avg_stddev.log
sed -n '11p' memr_"$i"_AT.log >> threads_time_avg_stddev.log

done
