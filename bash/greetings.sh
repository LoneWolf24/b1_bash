#!/bin/bash
clear
echo "Welcome to my [] experimental program!";
echo "";
echo -n "Hello, what is your first name?";
read firstname;
# -n means -- no new line
echo -n "Thank you $firstname, and what is your surname (last name)?";
read surname;
echo "So nice to meet you $firstname $surname";
echo
# [] used for strings
# () used for numbers
if [ "$firstname" == "Abdulaziz" ] && [ "$surname" == "Kodirov" ]
	then 
		echo "Yes, I am dealing with my super user!";
else
	echo "Ok, $firstname $surname is now using my program";
fi
