#!/bin/bash
while true;
do
echo "1. Make a file and write some data"
echo "2. To display content of a file"
echo "3. Copy the file"
echo "4. To rename the file "
echo "5. To delete a file"
echo "6. Exit"
read ch
    if [ $ch -eq 6 ]; then
    exit
    else
        case $ch in
            1) read -p "Enter filename  " filename
                if [[ -f $filename ]]; then
                    echo "file exist"
                else
                    echo  "now, you can write data to save file use ctrl+d "
                    cat > $filename
                fi
                ;;
            2) read -p "Enter filename  " filename
                if [[ -f $filename ]]; then
                    cat $filename
                else
                    echo -e "File not exist \n \n"
                   
                fi
                ;;
            3) read -p "Enter filename to copy  " filename
                if [[ -f $filename ]]; then
                    read -p "Enter target path to copy the file" tgpath
                    cp $fiename $tgpath
                    echo "File copied successfully"
                else 
                    echo "file doesn't exist"
                fi
                ;;
            4) read -p "enter filename to rename " filename
                if [[ -f $filename ]]; then
                    read -p "Enter target path to copy the file" tgpath
                    mv $fiename $tgpath
                    echo "File rename successfully"
                else 
                    echo "file doesn't exist"
                fi
                ;;
            5) read -p "Enter filename to delete    " filename
                if [[ -f $filename ]]; then
                    rm $filename
                    echo "File remove successfully"
                else 
                    echo "file doesn't exist"
                fi
                ;;

        esac
    fi
done
