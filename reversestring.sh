#!/bin/bash
echo "enter string"
read str
#expr length is used to know the no of characters
char=`echo -n "$str" | wc -c`
i=1
string=$str
while [ $i -le $char ]
do
	letter=`echo "$str" | awk -F "" '{print $NF}'`
	i=`expr $i + 1`
#.$ is used for the last charcter
	str=`echo "$str" | sed 's/.$//'`
	result=`echo "$result$letter"`
done
echo "$result"
if [ $result == $string ]
then
	echo "Its a palindrome"
else
	echo "Its not a palinderome"
fi

