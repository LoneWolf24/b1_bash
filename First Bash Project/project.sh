#!/bin/bash
clear
NONE='\033[00m'
RED='\033[01;31m'
GREEN='\033[01;32m'
sh ./myName.sh
echo "";
echo "Welcome to my BASH program";
echo "";
echo "What is your name?";
read name;
echo "Hello $name, glad working with you";

################## UPDATE #########################
echo "Do you wish to update? (y/n)";
read answer;
if [ "$answer" == "y" ] || [ "$answer" == "Y" ]
	then
		sudo apt update;
		echo -e "${NONE}${GREEN}Update is complete.${NONE}";
else
	echo -e "${NONE}${RED}Not updated.${NONE}";
fi
####################################################

################## UPGRADE #########################
echo "";
echo "Do you want to upgrade? (y/n)";
read answer4upgrade;
if [ "$answer4upgrade" == "y" ] || [ "$answer4upgrade" == "Y" ]
	then
		sudo apt-get upgrade ;
		echo -e "${NONE}${GREEN}Upgrade is complete.${NONE}";
else
        echo -e "${NONE}${RED}Not upgraded.${NONE}";
fi 
####################################################

echo "";

################## AUTOCLEAN #######################
echo "";
echo "Do you want to autoclean? (y/n)";
read answer4autoclean;
if [ "$answer4autoclean" == "y" ] || [ "$answer4autoclean" == "Y" ]
        then
                sudo apt autoclean;
                echo -e "${NONE}${GREEN}Autoclean is complete.${NONE}";
else 
        echo -e "${NONE}${RED}Autoclean is not complete.${NONE}"; 
fi 
####################################################
echo "";
################## AUTOREMOVE ######################  
echo "";
echo "Do you want to autoremove? (y/n)";
read answer4autoremove;
if [ "$answer4autoremove" == "y" ] || [ "$answer4autoremove" == "Y" ]
        then
                sudo apt autoremove;
                echo -e "${NONE}${GREEN}Autoremove is complete.${NONE}";
else
       echo -e "${NONE}${RED}Autoremove is not complete.${NONE}";
fi 
####################################################
echo "";
echo -e "${NONE}${GREEN}Program is complete.${NONE}";
echo "Thank you $name, for using my program.";
echo "";
sh ./goodbye.sh
