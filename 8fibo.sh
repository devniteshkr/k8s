#!/bin/bash
read -p "Enter number" num
p=0
c=1
n=1
echo $p
echo $c
while [ $n -lt $num ]
do
    echo $n
    p=$c
    c=$n
    n=$[p+c]
done
