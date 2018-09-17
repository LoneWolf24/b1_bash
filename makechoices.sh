#!/bin/bash
clear
############################################################################
sh ./practices/myName.sh;
########## Created by Abdulaziz Kodirov, 09.11.2018
########## Practice in conditionals and loops for the common task of making
########## choices for program execution
############################################################################
echo "";

choice=6;

echo "1. Update";
echo "2. Upgrade";
echo "3. Autoclean";
echo "4. Autoremove";
echo "5. All done - exit";

echo "";
echo -n "Enter the number of your choice: ";
#############################################################################
       while [ $choice -eq 6 ];
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
            elif [ $choice -eq 5 ]
                then
                    echo "All done...exiting!";
                    exit 0;
            else
                echo "Invalid input, try again";
            fi
            ###################################################
        done;
#############################################################################


########################### THE END #########################################
echo "";
sh ./practices/goodbye.sh;