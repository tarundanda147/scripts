#!/bin/bash
echo "enter the file name"
read filename
line=1
num=`wc -l $filename | awk -F " " '{print $1}'`
while [ $line -le $num ]
do
	result=`tail -$line $filename | head -1`
	echo "$result"
	line=`expr $line + 1`
done
