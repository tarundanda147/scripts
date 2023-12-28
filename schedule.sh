#!/bin/bash
day=`date "+%a"`
case $day in
	'Mon')mkdir -p /home/ubuntu/temp1 /home/ubuntu/temp2
		;;
	'Tue')if [ -e /home/ubuntu/temp1 ]&&[ -e /home/ubuntu/temp2 ]
		then
			touch /home/ubuntu/temp1/file1 /home/ubuntu/temp2/file2
		else
			mkdir -p /home/ubuntu/temp1 /home/ubuntu/temp2
			touch /home/ubuntu/temp1/file1 /home/ubuntu/temp2/file2
	fi
		;;
	'Wed')echo "welcome to the devops" > /home/ubuntu/temp1/file1
		echo "we arlready discussed liunx commands and shell script" > /home/ubuntu/temp2/file2
		;;
	'Thu')cp -r /home/ubuntu/temp1/file1 /home/ubuntu/backup/
		cp -r /home/ubuntu/temp2/file2 /home/ubuntu/backup/
		;;
	'Fri')rm -f /home/ubuntu/temp1/file1 /home/ubuntu/temp2/file2
		;;
	'Sat'|'Sun')echo "Its holiday"
		;;
esac

