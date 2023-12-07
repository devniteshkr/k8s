#!/bin/bash
while true;
do
echo "1. To check user exists"
echo "2. To check user uid, gid and shell"
echo "3. To check user gid"
echo "4. To check user's shell"
echo "5. Delete user"
echo "6. Exit"
read ch
    if [ $ch -eq 6 ]; then
    exit
    else
        case $ch in
        1) read -p  "Enter username " username
           grep -q $username /etc/passwd
            if [ $? -eq 0 ]; then
                echo "user exist"
            else 
                echo "user doesn't exist"
            fi
           echo "========================="
           ;;
        2) read -p "Enter username  " username
           id $username | awk '{print $1}' | cut -c 5-8
           echo "========================"
           ;;

        3) read -p "Enter username  " username
           id $username | awk '{print $2}' | cut -c 5-8
           echo "========================"
           ;;
        
        4) read -p "Enter username  " username 
           grep $username /etc/passwd | awk -F  ":" '{print $7}'
           echo "========================"
            ;;
        5) read -p "Enter Username  " username
            sudo userdel $username
            echo "User deleted successfully"
            echo "========================"
            ;;
        esac
    fi
done
