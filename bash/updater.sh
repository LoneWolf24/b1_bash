#!/bin/bash
clear
echo Hello, what is your name?
read name
echo Hello $name, welcome to my BASH updater script. It is really nice meeting you!
echo Do you want to run this script $name? y/n
read yORn
if(yORn == y)
{
	sudo apt update
	sudo apt upgrade -y
	sudo apt autoclean
	sudo apt autoremove
}
else
{
	echo Script is not initialized!
}



