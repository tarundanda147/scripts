#!/bin/bash
#echo "enter first number"
#read num1
#echo "enter second number"
#read num2
#echo "enter operator + to add, - to substract, * to multiply, / division and % to get reminder"
#read oper
case $3 in
	'+')sum=`expr $1 + $2`
		echo "sum of two numbers:$sum"
		;;
	'-')diff=`expr $1 - $2`
		echo "difference of two numbers:$diff"
		;;
	'm')mult=`expr $1 \* $2`
		echo "product of two numbers:$mult"
		;;
	'/')if [ $2 -eq 0 ]
		then
			echo "division of two numbers is infinity"
		else
			divi=`expr $1 / $2`
		echo " division of two numbers:$divi"
	fi
		;;
	'%')remi=`expr $1 % $2`
		echo "reminder of two numbers:$remi"
		;;
esac



