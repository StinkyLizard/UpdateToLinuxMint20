#! /bin/bash

read -p "This part is only if you have experience any dpkg errors,press Y/N to proceed ? " user_var
if [ $user_var == "Y" ] || [ $user_var == "Yes" ] || [ $user_var == "y" ] || [ $user_var == "yes" ]
then
sudo rm /usr/share/doc/liblz4-1/changelog.Debian.gz
echo
sudo apt-get update --assume-yes
sudo apt-get autoremove --assume-yes
sudo apt-get clean --assume-yes
sudo apt-get update --assume-yes
sudo apt-get full-upgrade --assume-yes
fi
