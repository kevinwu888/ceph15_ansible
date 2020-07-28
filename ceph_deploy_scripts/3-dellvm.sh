#!/bin/bash
VG=`lvs | awk '{print $2}' | grep -v "VG"`
PV=`pvs | awk '{print $1}' | grep -v "PV"`

if [ ! $VG ];then
	echo "No LV exist! Abort!"
else
	for i in `echo $VG`
	do
		lvremove -f $i && vgremove -f $i
	done
fi

if [ ! $PV ];then
	echo "No PV exist. Abort!"
else
	for i in `echo $PV`
	do
		pvremove $i && echo "---------OK!"
	done
fi

