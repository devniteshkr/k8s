#!/bin/bash
read -p "Enter a num" num
tmp=$num
rev=0
while [[ $tmp -gt 0 ]]
do
  rem=$[tmp /10 ]
  rev=$[(rev/10)+rem]
  tmp=$[tmp / 10]
done

if [ $rev -eq $tmp ]; then
  echo "Given no is palindrome"
  else
    echo "Given no is not palindrome"
fi