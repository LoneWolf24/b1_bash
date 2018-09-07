#!/bin/bash
clear
echo "Welcome to my second BASH script $1 $2"
echo "Enter your name:";
name=$1;
period=$2;

echo

DATE=`date '+%D'`;
TIME=`date '+%T'`;

read -p "Hello $name from $period, glad working with you, today is $DATE $TIME. Press [ENTER] to continue";
echo "";

x=7
y=9

echo "";
echo "X = $x, Y = $y";			
