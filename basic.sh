#!/bin/sh

#General dependencies
sudo add-apt-repository universe
sudo apt-get update -y

#remove libreoffice
sudo apt-get purge libreoffice* -y
#sudo apt autoremove -y

# install browser
sudo apt-get install firefox 
# sudo apt-get install dillo
sudo reboot
