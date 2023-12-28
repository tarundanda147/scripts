#!/bin/bash
find /home/ubuntu/d1/ -maxdepth 1 -type f | xargs ls -l |  awk -F " " '{print $1,$NF}'
find /home/ubuntu/d1/ -maxdepth 1 -type f ! -perm 777 | xargs sudo chmod 777
