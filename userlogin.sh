#!/bin/bash
echo "enter username"
read username
echo "enter passwd"
read passwd
echo -e "$passwd\n$passwd" | sudo adduser $username
