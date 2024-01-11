#!/bin/bash
usage=`df -h . | sed 's/%//g' | awk -F " " 'NR==2{print $(NF -1)}'`
if [ $usage -ge 20 ]
then
	echo "Disk reached the thresholdvalue" | mail -s "disk usage" honeythelab147@gmail.com
fi
echo "$usage"
