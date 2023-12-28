#!/bin/bash
echo "enter the no of files to retain"
read retain
ls -lrt | awk -F " " 'NR>1{print $NF}' >output
total=`cat output | wc -l`
delete=`expr $total - $retain`
head -$delete output
