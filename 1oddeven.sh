#!/bin/bash
read -p "Enter Number:" num
rem=$[num%2]
if [ $rem -eq 0 ]
then
echo "$num is Even"
else
echo "$num is odd"
fi