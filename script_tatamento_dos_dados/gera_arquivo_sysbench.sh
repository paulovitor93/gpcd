#!/bin/sh

for i in `seq 1 30`
do
#Linha para CPU sysbench

more +17 cpu_"$i"_T50_SF.log | cut -d : -f 2 | awk {'print $1'} | sed '/^$/d' > cpu/cpu_"$i"_AT.log

#Obter dados sobre transferencia em MemR sysbench

head -n 18 memr_"$i"_T50_SF.log | grep ops/sec | awk '{print substr($4,2,10)}' > teste

head -n 18 memr_"$i"_T50_SF.log | grep transferred | awk '{print substr($4,2,10)}' >> teste

more +19 memr_"$i"_T50_SF.log | cut -d : -f 2 | awk {'print $1'} | sed '/^$/d' >> teste

mv teste memr/memr_"$i"_AT.log

#Obter dados sobre transferencia em MemW sysbench

head -n 18 memw_"$i"_T50_SF.log | grep ops/sec | awk '{print substr($4,2,10)}' > teste

head -n 18 memw_"$i"_T50_SF.log | grep transferred | awk '{print substr($4,2,10)}' >> teste

more +19 memw_"$i"_T50_SF.log | cut -d : -f 2 | awk {'print $1'} | sed '/^$/d' >> teste

mv teste memw/memw_"$i"_AT.log

#Obter dados sobre transferencia em Disk

head -n 19 disk_"$i"_T50_SF.log | grep Operations | awk '{print $3 "\n" $5 "\n" $7 "\n" $10}' > teste

head -n 20 disk_"$i"_T50_SF.log | grep Mb/sec | awk '{print $2 "\n" $4 "\n" $7 "\n" substr($8,2,11)}' >> teste

more +21 disk_"$i"_T50_SF.log | cut -d : -f 2 | awk {'print $1'} | sed '/^$/d' >> teste

mv teste disk/disk_"$i"_AT.log

done
