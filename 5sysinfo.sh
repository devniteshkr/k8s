#!/bin/bash
a=`hostname`
b=`cat /etc/*release | sed -n '4p' |  awk '{print $1,$2}' | cut -c 21-36`
c=`uname -r`
d=`lscpu | sed -n '8p'`
e=`lscpu | sed -n '1p'`
f=`free -h | sed -n '2p' | awk '{print $2}'`
h=`free -h | sed -n '3p' | awk '{print $2}'`
g=`uptime | awk '{print $1}'`
echo "Hostname:  "$a
echo "OS:  "$b
echo "kernal:   " $c
echo "Processor Name:  " $d
echo "Architecture:   " $e
echo "Memory:  "$f
echo "Swap Memory:  "$h
echo "uptime:    "$g
