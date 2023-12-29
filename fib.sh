#!/bin/bash
count=0
num1=0
num2=1
echo -e "$num1\n$num2"
while [ $count -lt 10 ]
do
	num3=`expr $num1 + $num2`
	num1=$num2
	num2=$num3
	count=`expr $count + 1`
	echo "$num3"
done
