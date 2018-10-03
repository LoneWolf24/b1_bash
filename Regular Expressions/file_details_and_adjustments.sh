#!/bin/bash
clear
###### Pick a directory, find the largest file, and delete it, if you want ############
#######################
NONE='\033[00m'
RED='\033[01;31m'
GREEN='\033[01;32m'
YELLOW='\033[01;33m'
PURPLE='\033[01;35m'
CYAN='\033[01;36m'
WHITE='\033[01;37m'
BOLD='\033[1m'
UNDERLINE='\033[4m'
BLINK='\033[5m'
######################
option='du -hsx';
echo -e $GREEN
cd ../
ls -d *
echo -e $NONE

echo -n "Enter directory name:";
read dir_name;
cd $dir_name

echo -e $GREEN
$option *
echo -e $NONE
echo -n "Enter file name you wish to delete: ";
read delete_file_name;
echo -e $RED
echo "File is removed"
echo -e $NONE
rm $delete_file_name;
echo -e $GREEN
$option *
echo -e $NONE