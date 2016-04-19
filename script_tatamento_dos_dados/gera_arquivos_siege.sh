#!/bin/sh

cat siege_AT.log | cut -d , -f 2 | awk '{print $1}' > AT/trans
cat siege_AT.log | cut -d , -f 3 | awk '{print $1}' > AT/elap_time
cat siege_AT.log | cut -d , -f 4 | awk '{print $1}' > AT/data_trans
cat siege_AT.log | cut -d , -f 5 | awk '{print $1}' > AT/resp_time
cat siege_AT.log | cut -d , -f 6 | awk '{print $1}' > AT/trans_rate
cat siege_AT.log | cut -d , -f 7 | awk '{print $1}' > AT/throughput
cat siege_AT.log | cut -d , -f 8 | awk '{print $1}' > AT/concurrent
cat siege_AT.log | cut -d , -f 9 | awk '{print $1}' > AT/OKAY
cat siege_AT.log | cut -d , -f 10 | awk '{print $1}' > AT/failed

cat siege_NA.log | cut -d , -f 2 | awk '{print $1}' > NA/trans
cat siege_NA.log | cut -d , -f 3 | awk '{print $1}' > NA/elap_time
cat siege_NA.log | cut -d , -f 4 | awk '{print $1}' > NA/data_trans
cat siege_NA.log | cut -d , -f 5 | awk '{print $1}' > NA/resp_time
cat siege_NA.log | cut -d , -f 6 | awk '{print $1}' > NA/trans_rate
cat siege_NA.log | cut -d , -f 7 | awk '{print $1}' > NA/throughput
cat siege_NA.log | cut -d , -f 8 | awk '{print $1}' > NA/concurrent
cat siege_NA.log | cut -d , -f 9 | awk '{print $1}' > NA/OKAY
cat siege_NA.log | cut -d , -f 10 | awk '{print $1}' > NA/failed

