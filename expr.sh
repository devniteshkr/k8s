#!/bin/bash
a=$1
b=$2
c=$3

if [ $c == '+' ];then
   result=`expr $a + $b`
   echo $result

elif [[ $c == '-' ]]; then
   result=`expr $a - $b`
   echo $result

elif [[ $c == * ]]; then                                                                                                                                                                                     result=`expr $a \* $b`
       	echo $result 

elif [[ $c == '/' ]]; then
  result=`expr $a / $b`
  echo $result  

else 
	echo "Enter correct operand"
fi


