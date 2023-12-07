#!/bin/bash

function main(){
	while read sub;do
		if host "$sub.$domain" &> /dev/null;then
			echo "$sub.$domain : Alive"
		fi
	done < subs.txt
}

function help(){
	echo "Sub-Domain Enum"
	echo "-d DOMAIN : Provide domain name as target"
	echo "-h: help "
}    

case $1 in 
	"-d")
		domain=$2
		main
		;;
	"-h")
		help
		exit
		;;
	*)
		echo "Error $1 is invalid argument, check help (-h)"
		exit 127
		;;


esac

