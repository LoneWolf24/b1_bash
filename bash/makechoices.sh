#!/bin/bash
clear
############################################################################
sh ./practices/myName.sh;
########## Created by Abdulaziz Kodirov, 09.11.2018
########## Practice in conditionals and loops for the common task of making
########## choices for program execution
############################################################################
echo "";

choice=4;

echo "1. Update";
echo "2. Upgrade";
echo "3. Autoclean";
echo "4. Autoremove";

echo "";

#############################################################################
while [ $choice -eq 4 ];
 do 
    read choice;
    ###################################################
    if [ $choice -eq 1 ]
        then  
            echo "You want to do an update...";
    elif [ $choice -eq 2 ]
        then
            echo "You want to do an upgrade...";
    elif [ $choice -eq 3 ]
        then
            echo "You want to do an autoclean...";
    elif [ $choice -eq 4 ]
        then
            echo "You want to do an autoremove...";
    else
        echo "Invalid input";
    fi
    ###################################################
done;
#############################################################################


########################### THE END #########################################
echo "";
sh ./practices/goodbye.sh;