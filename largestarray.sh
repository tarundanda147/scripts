#!/bin/bash
var="10 50 30 40 80"
count=1
for i in $var
do
	if [ $count -eq 1 ]
        then
                num=$i
        fi
	if [ $num -gt $i ]
	then
		largest=`echo "$num"`
	else
		largest=`echo "$i"`
		num=$i
	fi
	count=`expr $count + 1`
done
echo "$largest is the largest number in the array"
