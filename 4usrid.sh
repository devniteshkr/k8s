#!/bin/bash
read -p "Enter a username" usr
b=`id $usr | awk '{print $1}' |  cut -c 5-8`
echo "userid: $b"