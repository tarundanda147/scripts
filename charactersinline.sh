#!/bin/bash
echo "Enter filename"
read filename
num=1
while read line
do
	count=`echo "$line" | wc -c`
	echo "line $num contains $count characters"
	num=`expr $num + 1`
done < $filename
