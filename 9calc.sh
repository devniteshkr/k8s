#!/bin/bash
while true;
do
echo "Choose any options:"
echo "1.Add"
echo "2.Substract"
echo "3.Multiplication"
echo "4.Division"
echo "5.Exit"
read opt


if [[ $opt -eq 5 ]]; then
  exit
  else
    echo "Enter two numbers"
        read a
        read b
    case $opt in
            "1") res=$[a + b]
                    echo "addition of two number is: $res"
                    ;;
            "2") res=$[a - b]
                    echo "sub of two number is: $res"
                    ;;
            "3") res=$[(a * b)]
                    echo "mul of two number is:  $res"
                    ;;
            "4") res=$[a / b]
                    echo "div of two number is:  $res"
                    ;;
    esac
fi

done