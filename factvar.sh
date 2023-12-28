#!/bin/bash
var="3 5 7 8"
for i in $var
do
		count=$i
		factorial=1
		while [ $count -gt 1 ]
		do
			factorial=`expr $count \* $factorial`
			count=`expr $count - 1`
		done
		echo "factorial of $i is : $factorial"
	done

