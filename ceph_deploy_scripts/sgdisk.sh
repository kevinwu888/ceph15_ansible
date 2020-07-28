#!/bin/sh
wal_space=10G
db_space=240G
hdd_num=11

for i in `seq 1 ${hdd_num}`
do
   sgdisk -n 0:0:+${wal_space} /dev/nvme0n1
   sleep 1
done

for i in `seq 1 ${hdd_num}`
do     
   sgdisk -n 0:0:+${db_space} /dev/nvme0n1
   sleep 1
done    

