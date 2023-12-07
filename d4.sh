#!/bin/bash

function arg(){
	domain=$1
	wordlist=$2
}

function main(){
	while read sub;do
		if host "$sub.$domain" &> /dev/null;then
			echo "$sub.$domain : Alive"
		fi
	done < $wordlist
}

arg $@
main


