#!/bin/bash
clear
echo "Are you Abdulaziz Kodirov? (y/n)"
read answer;
if [ "$answer" == "y" ]
	then
		sh ./myName.sh;
else
	echo "What is your name?";
	read name;
	echo "Welcome $name";
fi
echo "";
echo "You are currently here";
pwd
echo "";
echo "Displaying today's date:";
date
echo "";
echo "Displaying this months calendar";
cal
echo "";


