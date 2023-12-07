#!/bin/bash
 a=`date | awk '{print $1,$2,$3,$4}'`
 b=`date | awk '{print $5, $6, $7}'`
 c=`whoami`
 d=`pwd`
 echo $a
 echo $b
 echo $c
 echo $d

 
