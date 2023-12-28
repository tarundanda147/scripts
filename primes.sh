#!/bin/bash
echo "enter the number"
read num
	var=$num
	while [ $num -gt 0 ]
	do
		rem=`expr $var % $num`
		echo "$rem " >>output
		num=`expr $num - 1`
	done
	count=`grep -c -w "0" output`
	if [ $count -eq 2 ]
	then
		echo "$var is a prime"
	else
		echo "$var is not a prime number"
	fi
	rm output

