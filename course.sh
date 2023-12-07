#!/bin/bash
read -p "Please enter your course name:" cname
case "$cname" in
	"hpcsa")
		echo "You will learn super computer"
		;;
	"ditiss")
		echo "You will learn Hacking"
		;;
	"dac")
		echo "You will learn development"
		;;
	*)
		echo "please Enter Right choice"
		;;
esac
