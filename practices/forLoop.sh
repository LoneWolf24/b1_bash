#!/bin/bash
clear
echo "Current Shell";
echo $SHELL;
echo "Current Bash Version";
echo $BASH_VERSION;
echo "";

echo "Displaying how many lines, words, and characters are in this file"
wc forLoop.sh;

echo "All Files in the Directory, including hidden files";
ls -a;
echo "";

echo "Displaying who is online:";
w;
echo "";

echo "User's Information";
finger abdulazizkodirov;
echo "";

echo "Lists of my last logins:";
last abdulazizkodirov;
echo "";

for((c=0; c<1; c++))
do
    echo "COMMAND OPTIONS";
    echo "date, cal, date and cal, or cal and date";
    read DATEorCAL;
    echo "";

	echo "############################";
	echo "######## Abdulaziz #########";
	echo "############################";
    if [ "$DATEorCAL" == "date" ]
        then
            date;
    elif [ "$DATEorCAL" == "cal" ]
        then
            cal;
    elif [ "$DATEorCAL" == "date and cal" ] || [ "$DATEorCAL" == "cal and date" ]
        then
            date;
            echo "";
            cal;
    else
            echo "Invalid command";
    fi
    echo "";
done