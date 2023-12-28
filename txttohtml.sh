#!/bin/bash
ls *.txt > output
sed -i 's/.txt//g' output
while read line
do
	mv $line.txt $line.html
	
done < output
ls *.html
rm output
