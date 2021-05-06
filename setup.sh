#/bin/bash

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
printf " Ubuntu Setup for UTh\n"
echo "------------------------ STARTING PROCEDURE ------------------------"
sudo apt update
sudo apt -y upgrade
sudo apt -y install build-essential gdb valgrind gcc git
if [ $1 = "classic" ]
then
	sudo apt install -y kdocker
	sudo snap install core
	sudo snap install code --classic
	sudo snap install teams-insider
	sudo snap install spotify
	sudo apt -y install bc module-assistant dkms
	sudo m-a prepare
	cd ~
	git clone https://github.com/tomaspinho/rtl8821ce.git
	cd rtl8821ce/
	sudo ./dkms-install.sh
elif [ $1 = "wsl" ]
then
	printf "Install VSCode from here: https://code.visualstudio.com/\n"
fi
rm -rf ~/UbuntuSetup
echo "------------------------ ENDING PROCEDURE ------------------------"
