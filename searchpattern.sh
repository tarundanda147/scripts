#!/bin/bash
echo "enter the pattern"
read pattern
grep -irl "$pattern" /home/ubuntu/*>outputfiles
if [ $? -eq 0 ]
then
	echo "The following files contain the pattern $pattern"
	cat outputfiles
else
	echo "The given pattern $pattern dosen't exists in any files"
fi


	
