#!/bin/bash
clear
################### COLORS #######################
NONE='\033[00m'
RED='\033[01;31m'
GREEN='\033[01;32m'
YELLOW='\033[01;33m'
PURPLE='\033[01;35m'
CYAN='\033[01;36m'
WHITE='\033[01;37m'
BOLD='\033[1m'
UNDERLINE='\033[4m'
###################################################

sh ./practices/myName.sh;
echo  ""

echo -en "${GREEN}You are currently at:${NONE} ";pwd
echo  ""

echo -e "${GREEN}You are using this shell:${NONE} $SHELL";
echo  ""

echo -e "${GREEN}BASH VERSION:${NONE} $BASH_VERSION";
echo  ""

echo -e "${GREEN}Who is online:${NONE} "; w
echo  ""

echo -ne "${GREEN}USER:${NONE} ";  whoami
echo  ""

### HOW TO DOWNLOAD A FILE wget github.com/LoneWolf24/b1_bash/blob/master/bash.sh
read -p "Making a tar backup of my BASH directory, press [ENTER] key to continue";

day=$(date +%A);
dayDate=$(date +%d);
month=$(date +%B);
year=$(date +%Y);

echo "";
date
echo "";
echo "Day: " $day;
echo "Date: " $dayDate;
echo "Month: " $month;
echo "Year: " $year;

echo "";
cal
echo "";


############## HOST INFORMATION ##################
echo -e "***************************** ${GREEN}HOST INFORMATION${NONE} *****************************";
hostnamectl
echo "*****************************************************************************";
echo "";
##################################################
################ FILE SYSTEM #####################
# FILESYSTEM DISK SPACE USAGE
echo -e "*********************** ${GREEN}FILE SYSTEM DISK SPACE USAGE${NONE} ************************";
df -h
echo "*****************************************************************************";
echo "";
##################################################
############## MEMORY INFORMATION ##################
## MEMORY FREE AND USED
echo -e "************************** ${GREEN}MEMORY(FREE & USED)${NONE} ******************************";
free -h
echo "*****************************************************************************";
echo "";
##################################################
############## SYSTEM UPTIME AND PERFORMANCE LOAD ##################
echo -e "******************** ${GREEN}SYSTEM UPTIME & PERFORMANCE LOAD${NONE} ***********************";
uptime
echo "*****************************************************************************";
echo "";
##################################################
############## USERS CURRENTLY LOGGED IN##################
echo -e "************************ ${GREEN}USERS CURRENTLY LOGGED IN${NONE} **************************";
who 
echo "*****************************************************************************";
echo "";
##################################################
############## TOP 5 PROCCESS##################
echo -e "****************************** ${GREEN}TOP 5 PROCCESS${NONE} *******************************";
#NOTE: if you want to see top 5 then u must enter 6
#NOTE: if you want to see top 10 then u must enter 11
#JUST LIKE ARRAYS STARTS AT 0
ps -eo %mem,%cpu,comm --sort=-%mem | head -n 6
echo "*****************************************************************************";
echo "";
##################################################


dest=~/backups
src=~/bash

## -d means "does it exists" in this case "is the folder exists"
if [ -d $dest ];
    then
        echo -e "${GREEN}Backup folder exists${NONE}";
        echo "";
else
    echo -e "${RED}Backup folder does not exist, creating it now...${NONE}";
    mkdir -p $dest
    echo "";
fi

## -n1 -s prees any key to continue
read -p "Press any key to continue" -n1 -s
mkdir -p $dest/"$day $dayDate $month $year";
echo "";

echo -e "${GREEN}Backup started...${NONE}";
tar cvfz $dest/"$day $dayDate $month $year"/bash_backup.tgz $src;
echo "";

echo "Here is a contents of your backup directory";
echo -e "${YELLOW}";
cd $dest
ls -ahl
echo -e "${NONE}";
echo "";

echo "And here is what is inside that directory";
echo -e "${YELLOW}";
cd "$day $dayDate $month $year"
ls -ahl
echo -e "${NONE}";
echo "";

echo -n "All done, press [ENTER] to exit";
read -p "";


echo "";
cd ~/bash
sh ./practices/goodbye.sh;