#!/bin/bash
echo "enter the number to find its factorial"
read num
mult=1
while [ $num -gt 0 ]
do
	mult=`expr $num \* $mult`
	num=`expr $num - 1`
done
echo "The factorial of the number is $mult"
