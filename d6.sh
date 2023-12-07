#!/bin/bash

function main(){
	while read sub;do
		if host "$sub.$domain" &> /dev/null;then
			echo "$sub.$domain : Alive"
		fi
	done < $wordlist
}

function help(){
	echo "-d DOMAIN : Provide domain name as target"
	echo "-h: help "
}    
while true;do
case $1 in 
	"-d")
		domain=$2
        shift
		;;
    "-w")
        wordlist=$2
        shift 2
        break
        ;;

	"-h"|"--help")
		help
		exit
		;;
	*)
		echo "Error $1 is invalid argument, check help (-h)"
		exit 127
		;;


esac
shift
done
main