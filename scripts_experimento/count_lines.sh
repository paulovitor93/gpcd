#!/bin/bash
#Maquina Monitorada #####################################################################
Ouch='NA'
Ouch2='192.168.10.1'
Inter='eth1'
Srv02='MO'
echo "Sem Ataque, Maquina Monitorada"

for i in `seq 1 30`
do
echo "==$i==" >> /home/ifpb/Documentos/logs_experimentos/Resultados/"$Srv02"_"$Inter"_"$Ouch"_"$Ouch2".txt
tshark -r /home/ifpb/Documentos/logs_experimentos/xenserver/"$Inter"_"$i"_"$Ouch".cap | grep $Ouch2 | wc -l >> /home/ifpb/Documentos/logs_experimentos/Resultados/"$Srv02"_"$Inter"_"$Ouch"_"$Ouch2".txt
done

Ouch='T50_SF'
echo "Com Ataque, Maquina Monitorada"
for i in `seq 1 30`
do
echo "==$i==" >> /home/ifpb/Documentos/logs_experimentos/Resultados/"$Srv02"_"$Inter"_"$Ouch"_"$Ouch2".txt
tshark -r /home/ifpb/Documentos/logs_experimentos/xenserver/"$Inter"_"$i"_"$Ouch".cap | grep $Ouch2 | wc -l >> /home/ifpb/Documentos/logs_experimentos/Resultados/"$Srv02"_"$Inter"_"$Ouch"_"$Ouch2".txt
done


#Maquina Atacada ########################################################################

Ouch='NA'
Ouch2='192.168.0.1'
Inter='eth1'
Srv02='AT'

echo "Sem Ataque, Maquina Atacada"

for i in `seq 1 30`
do
echo "==$i==" >> /home/ifpb/Documentos/logs_experimentos/Resultados/"$Srv02"_"$Inter"_"$Ouch"_"$Ouch2".txt
tshark -r /home/ifpb/Documentos/logs_experimentos/xenserver/"$Inter"_"$i"_"$Ouch".cap | grep $Ouch2 | wc -l >> /home/ifpb/Documentos/logs_experimentos/Resultados/"$Srv02"_"$Inter"_"$Ouch"_"$Ouch2".txt
done

Ouch='T50_SF'
echo "Com Ataque, Maquina Atacada"
for i in `seq 1 30`
do
echo "==$i==" >> /home/ifpb/Documentos/logs_experimentos/Resultados/"$Srv02"_"$Inter"_"$Ouch"_"$Ouch2".txt
tshark -r /home/ifpb/Documentos/logs_experimentos/xenserver/"$Inter"_"$i"_"$Ouch".cap | grep $Ouch2 | wc -l >> /home/ifpb/Documentos/logs_experimentos/Resultados/"$Srv02"_"$Inter"_"$Ouch"_"$Ouch2".txt
done

#Maquina Monitorada Interface Virtual #################################################

Ouch='NA'
Ouch2='192.168.10.1'
Inter='vif2.1'
Srv02='MO'
echo "Sem Ataque, Maquina Monitorada"

for i in `seq 1 30`
do
echo "==$i==" >> /home/ifpb/Documentos/logs_experimentos/Resultados/"$Srv02"_"$Inter"_"$Ouch"_"$Ouch2".txt
tshark -r /home/ifpb/Documentos/logs_experimentos/xenserver/"$Inter"_"$i"_"$Ouch".cap | grep $Ouch2 | wc -l >> /home/ifpb/Documentos/logs_experimentos/Resultados/"$Srv02"_"$Inter"_"$Ouch"_"$Ouch2".txt
done

Ouch='T50_SF'
echo "Com Ataque, Maquina Monitorada"
for i in `seq 1 30`
do
echo "==$i==" >> /home/ifpb/Documentos/logs_experimentos/Resultados/"$Srv02"_"$Inter"_"$Ouch"_"$Ouch2".txt
tshark -r /home/ifpb/Documentos/logs_experimentos/xenserver/"$Inter"_"$i"_"$Ouch".cap | grep $Ouch2 | wc -l >> /home/ifpb/Documentos/logs_experimentos/Resultados/"$Srv02"_"$Inter"_"$Ouch"_"$Ouch2".txt
done

#Maquina Atacada Interface Virtual ####################################################

Ouch='NA'
Ouch2='192.168.0.1'
Inter='vif1.1'
Srv02='AT'

echo "Sem Ataque, Maquina Atacada"

for i in `seq 1 30`
do
echo "==$i==" >> /home/ifpb/Documentos/logs_experimentos/Resultados/"$Srv02"_"$Inter"_"$Ouch"_"$Ouch2".txt
tshark -r /home/ifpb/Documentos/logs_experimentos/xenserver/"$Inter"_"$i"_"$Ouch".cap | grep $Ouch2 | wc -l >> /home/ifpb/Documentos/logs_experimentos/Resultados/"$Srv02"_"$Inter"_"$Ouch"_"$Ouch2".txt
done

Ouch='T50_SF'
echo "Com Ataque, Maquina Atacada"
for i in `seq 1 30`
do
echo "==$i==" >> /home/ifpb/Documentos/logs_experimentos/Resultados/"$Srv02"_"$Inter"_"$Ouch"_"$Ouch2".txt
tshark -r /home/ifpb/Documentos/logs_experimentos/xenserver/"$Inter"_"$i"_"$Ouch".cap | grep $Ouch2 | wc -l >> /home/ifpb/Documentos/logs_experimentos/Resultados/"$Srv02"_"$Inter"_"$Ouch"_"$Ouch2".txt
done

#Maquina Monitorada Dentro da VM #######################################################

Ouch='NA'
Ouch2='192.168.10.1'
Inter='eth0:1'
Srv02='MO'
echo "Sem Ataque, Maquina Monitorada"

for i in `seq 1 30`
do
echo "==$i==" >> /home/ifpb/Documentos/logs_experimentos/Resultados/"$Srv02"_"$Inter"_"$Ouch"_"$Ouch2".txt
tshark -r /home/ifpb/Documentos/logs_experimentos/monitorado/tshark/"$Inter"_"$i"_"$Ouch"_MO.cap | grep $Ouch2 | wc -l >> /home/ifpb/Documentos/logs_experimentos/Resultados/"$Srv02"_"$Inter"_"$Ouch"_"$Ouch2".txt
done

Ouch='T50_SF'
echo "Com Ataque, Maquina Monitorada"
for i in `seq 1 30`
do
echo "==$i==" >> /home/ifpb/Documentos/logs_experimentos/Resultados/"$Srv02"_"$Inter"_"$Ouch"_"$Ouch2".txt
tshark -r /home/ifpb/Documentos/logs_experimentos/monitorado/tshark/"$Inter"_"$i"_"$Ouch"_MO.cap | grep $Ouch2 | wc -l >> /home/ifpb/Documentos/logs_experimentos/Resultados/"$Srv02"_"$Inter"_"$Ouch"_"$Ouch2".txt
done

#Maquina Atacada Dentro da VM ###########################################################

Ouch='NA'
Ouch2='192.168.0.1'
Srv02='AT'

echo "Sem Ataque, Maquina Atacada"

for i in `seq 1 30`
do
echo "==$i==" >> /home/ifpb/Documentos/logs_experimentos/Resultados/"$Srv02"_"$Inter"_"$Ouch"_"$Ouch2".txt
tshark -r /home/ifpb/Documentos/logs_experimentos/atacado/tshark/"$Inter"_"$i"_"$Ouch"_AT.cap | grep $Ouch2 | wc -l >> /home/ifpb/Documentos/logs_experimentos/Resultados/"$Srv02"_"$Inter"_"$Ouch"_"$Ouch2".txt
done

Ouch='T50_SF'
echo "Com Ataque, Maquina Atacada"
for i in `seq 1 30`
do
echo "==$i==" >> /home/ifpb/Documentos/logs_experimentos/Resultados/"$Srv02"_"$Inter"_"$Ouch"_"$Ouch2".txt
tshark -r /home/ifpb/Documentos/logs_experimentos/atacado/tshark/"$Inter"_"$i"_"$Ouch"_AT.cap | grep $Ouch2 | wc -l >> /home/ifpb/Documentos/logs_experimentos/Resultados/"$Srv02"_"$Inter"_"$Ouch"_"$Ouch2".txt
done

