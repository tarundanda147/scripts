#!/bin/bash
echo "enter first number"
read num1
echo "enter second number"
read num2
echo "enter operator + to add, - to substract, * to multiply, / division and % to get reminder"
read oper
case $oper in
	'+')sum=`expr $num1 + $num2`
		echo "sum of two numbers:$sum"
		;;
	'-')diff=`expr $num1 - $num2`
		echo "difference of two numbers:$diff"
		;;
	'*')mult=`expr $num1 \* $num2`
		echo "product of two numbers:$mult"
		;;
	'/')if [ $num2 -eq 0 ]
		then
			echo "division of two numbers is infinity"
		else
			divi=`expr $num1 / $num2`
		echo " division of two numbers:$divi"
	fi
		;;
	'%')remi=`expr $num1 % $num2`
		echo "reminder of two numbers:$remi"
		;;
esac



