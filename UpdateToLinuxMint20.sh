#! /bin/bash
echo "We recommend to backup your system to avoid any lost,beware of the risk involved by updating to mint 20"
echo 
echo
echo "We are going to configure the source.list.d files and the changelog.Debian file in order to update to Linux Mint 20 (part2) to avoid any problems"
read -p "Upgrade linux mint to Linux Mint 20 Y/N ? : " user_var

if [ $user_var == "Y" ] || [ $user_var == "Yes" ] || [ $user_var == "yes" ] || [ $user_var == "y" ] || [ $user_var == "YES" ]
then
echo "Please do not cancel the proccess at any given time to avoid problems!!!"
sudo rm /etc/apt/sources.list.d/official-package-repositories.list
echo "Creating new source list file..."
sudo touch /etc/apt/sources.list.d/official-package-repositories.list
echo "Copying the new repositories"
echo
echo "deb http://mirrors.evowise.com/linuxmint/packages ulyana main upstream import backport 

deb http://mirror.lnx-solutions.com/ubuntu focal main restricted universe multiverse
deb http://mirror.lnx-solutions.com/ubuntu focal-updates main restricted universe multiverse
deb http://mirror.lnx-solutions.com/ubuntu focal-backports main restricted universe multiverse

deb http://security.ubuntu.com/ubuntu/ focal-security main restricted universe multiverse
deb http://archive.canonical.com/ubuntu/ focal partner" | sudo tee -a  /etc/apt/sources.list.d/official-package-repositories.list
echo
echo
fi
echo "THE NEXT STEP WILL TAKE A WHILE DEPENDING ON THE SPEED OF YOUR INTERNET AND COMPUTER.PLEASE MAKE SURE YOU ARE READY.ELSE YOU CAN DO THE NEXT STEPS MANUALLY THROUGH THE TERMINAL!!!"
echo
read -p "We are going to configure packages and get packages.Do you want to do it manually or can we do it for you Y/N? : " user_var
if [ $user_var == "Y" ] || [ $user_var == "Yes" ] || [ $user_var == "yes" ] || [ $user_var == "y" ] || [ $user_var == "YES" ]
then
sudo apt-get update --assume-yes
sudo apt-get autoremove --assume-yes
sudo apt-get clean --assume-yes
sudo apt-get update --assume-yes
sudo apt-get full-upgrade --assume-yes
fi
echo
echo

echo "Please dont stress if you have any apt package related errors since the machine need to restart to apply some change"
echo
echo

echo "NOTE PLEASE AFTER YOU HAVE RESTARTED YOUR PC AND RECIEVE package error 1 when doing sudo apt-get update and sudo apt-get upgrade etc!!! Dont panick!!!IF YOU GOT ANY ERRORS PLEASE RUN THE SECOND PART OF THE SCRIPT"
echo
echo
echo "RUN UpdateToLinuxMint20PART2.sh if occuring any dpkg errors!"
echo
read -p "Can we REBOOT your machine for you,the machine needs to restart to make changes Y/N ? : " user_var
if [ $user_var == "Y" ] || [ $user_var == "Yes" ] || [ $user_var == "yes" ] || [ $user_var == "y" ] || [ $user_var == "YES" ]
then
sudo reboot
fi
