#!/bin/bash
#echo "enter the disk free command"
#read diskfree
df -h >output
sed -i 's/%//g' /home/ubuntu/output
count=1
while read line
do
	usage=`echo "$line" | awk -F " " '{print $(NF -1)}'`
	if [ $count -gt 1 ]
	then
		echo "$usage"
	fi
	count=`expr $count + 1`
done < output
rm output

