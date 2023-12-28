#!/bin/bash
echo "Enter the filename"
read filename
while read line
do
	$line | wc -w
	echo ""
done < $filename
