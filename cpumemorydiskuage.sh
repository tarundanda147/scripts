#!/bin/bash
diskusage=`df -h . | awk -F " " 'NR>1{print $(NF-1)}' | sed 's/%//g'`
total=`free -m | awk -F " " 'NR==2{print $2}'`
used=`free -m | awk -F " " 'NR==2{print $3}'`
usedpercent=`expr $used / $total`
usedpercent=`expr $usedpercent \* 100`
cpu=`top -bn1 | awk -F " " 'NR==8{print $(NF-3)}'`

if [ "$diskusage" -gt 90 ]
then
	echo "diskusage exceeds the threshold" | mail -s "threshold exceeded" dandatharun@gmail.com
fi
if [ "$usedpercent" -gt 90 ]
then
	echo "system memory exceeds the threshold" | mail -s "threshold exceeded" dandatharun@gmail.com
fi
if [ "$cpu" -gt 90 ]
then 
	echo "cpu exceeds the threshold" | mail -s "threshold exceeded" dandatharun@gmail.com
fi
