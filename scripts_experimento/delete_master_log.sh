#!/bin/sh

for i in `seq 1 6`
do
rm -r /home/ifpb/Documentos/logs_experimentos/clientes/0$i/logs/*
done

rm -r /home/ifpb/Documentos/logs_experimentos/atacado/collectl/*
rm -r /home/ifpb/Documentos/logs_experimentos/atacado/netstat/*

rm -r /home/ifpb/Documentos/logs_experimentos/monitorado/collectl/*
rm -r /home/ifpb/Documentos/logs_experimentos/monitorado/netstat/* 
rm -r /home/ifpb/Documentos/logs_experimentos/monitorado/sysbench/*
