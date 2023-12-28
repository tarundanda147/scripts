#!/bin/bash
echo "enter the name to search its type"
read name
sudo find / -iname $name >output
echo "$?"
pid=$?
path=`cat output`
if [ -L $path ]
then
	echo "$path is a link"
elif [ -d $path ]
then
	echo "$path is a directory"
elif [ $pid -ne 0 ]
then
	echo "$path dosent exist"
else
        echo "$path is a file"
fi

