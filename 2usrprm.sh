#!/bin/bash
read -p "Enter a file name" filename
b=`stat $filename | sed -n '4p'| awk '{print $2}'| awk -F "/" '{print $1}' | cut -c 2-5`
echo "file permission on $file is $b"
