#!/bin/bash
echo "enter file name"
read filename
count=1
while read line
do
	age=`echo "$line" | awk -F " " '{print $NF}'`
	if [ $count -gt 1 ]
	then
	if [ $age -gt 27 ]
	then
		name=`echo "$line" | awk -F " " '{print $1}'`
		echo "$name"
	fi
	fi
	count=`expr $count + 1`
done < $filename
