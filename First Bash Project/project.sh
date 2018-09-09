#!/bin/bash
clear
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
if [ "$answer" == "y" ]
	then
		sudo apt get update;
		echo "Update is complete.";
else
	echo "Not updated.";
fi
####################################################

################## UPGRADE #########################
echo "";
echo "Do you want to upgrade? (y/n)";
read answer4upgrade;
if [ "$answer4upgrade" == "y" ]
	then
		sudo apt get upgrate -y;
		echo "Upgrade is complete.";
else
        echo "Not upgraded.";
fi 
####################################################

echo "";

################## AUTOCLEAN #######################
echo "";
echo "Do you want to autoclean? (y/n)";
read answer4autoclean;
if [ "$answer4autoclean" == "y" ]
        then
                sudo apt autoclean;
                echo "Autoclean is complete.";
else 
        echo "Not autocleaned."; 
fi 
####################################################
echo "";
################## AUTOREMOVE ######################  
echo "";
echo "Do you want to autoremove? (y/n)";
read answer4autoremove;
if [ "$answer4autoremove" == "y" ]
        then
                sudo apt autoremove;
                echo "Autoremove is complete.";
else
        echo "Autoremove is not complete.";
fi 
####################################################
echo "";
echo "Program is complete.";
echo "Thank you $name, for using my program.";
echo "";
sh ./goodbye.sh
