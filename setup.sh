#bin/bash

if [ $# -ne '1' ]
	then
	echo "Usage: $0 <classic or wsl>"
	exit 1
fi

printf "Welcome to "
if [ $1 = "wsl" ] 
then
	printf "WSL"
	elif [ $1 = "classic" ] 
	then
	printf "Full Desktop"
fi
echo " Ubuntu Setup for UTh"
echo "------------------------ STARTING PROCEDURE ------------------------"
sudo apt update
sudo apt -y upgrade
sudo apt install build-essential gdb valgrind gcc
if [ $1 = "classic" ]
then
	sudo snap install code --classic
	sudo snap install teams-insider spotify
	elif [ $1 = "wsl" ]
	then
	printf "Install VSCode from here: https://code.visualstudio.com/\n"
fi
echo "------------------------ ENDING PROCEDURE ------------------------"