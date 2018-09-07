#!/bin/bash
clear
echo "First Bash Script Project";
echo "";
echo "What is your name?";
read name;
echo -p "Hello $name, press [ENTER] to continue";
echo "";
######################## UPDATE ###################################
echo "$name, do you wish to update? [y/n]";
read updateAnswer;
echo "";
if [ "$answer" == "y" ]
	then 
		sudo apt update;
		echo "Update is now complete";
else
	echo "Not updated";
fi
#####################################################################

######################### UPGRADE ###################################
echo "";
echo "$name, do you wish to upgrade? [y/n]";
read upgradeAnswer;
echo "";
if [ "$upgradeAnswer" == "y" ]
	then
		sudo apt upgrade;
		echo "Upgrade is now complete";
else
	echo "Not upgraded";
fi
#####################################################################
echo "";
echo "$name, thank you for using my program!";
