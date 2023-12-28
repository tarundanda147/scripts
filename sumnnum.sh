#!/bin/bash
echo "enter the number to find the sum of its first n numbers"
read num
sum=0
while [ $num -gt 0 ]
do
	sum=`expr $num + $sum`
	num=`expr $num - 1`
done
echo "The sum of the first n numbers is $sum"
