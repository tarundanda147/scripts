#!/bin/bash
services="sshd jenkins java"
for i in $services
do
	ps -C $i
	if [ $? -ne 0 ]
	then
		notrunning=`echo "$i $notrunning"`
	fi
done
noofservices=`echo "$notrunning" | wc -w`
if [ $noofservices -gt 0 ]
then
	echo "$notrunning are not running" | mail -s "services stopped" dandatharun@gmail.com
fi
