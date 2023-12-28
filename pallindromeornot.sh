#!/bin/bash
echo "enter the string"
read string

pallin=`echo $string | rev`

if [ $pallin == $string ]
then
	echo "IT IS AN PALLINDROME"
else
	echo "IT IS NOT AN PALLINDROME"
fi
