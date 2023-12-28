#!/bin/bash
echo "enter username"
read username
echo "echo password"
read passwd
echo -e "$passwd\n$passwd" |sudo adduser $username
