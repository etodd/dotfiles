#!/bin/bash                                                                                                                                                                                                  
 
set -u
set -e
set -o pipefail

sudo apt-get update
sudo apt-get upgrade -y
 
#i3
sudo apt-get install xserver-xorg lightdm nautilus i3 scrot network-manager
 
# Chrome
sudo apt-get install -y libxss1
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb || true # This will fail if dependencies are not already met
sudo apt-get install -f # Install Chrome dependencies
sudo dpkg -i google-chrome*.deb # Now install the Chrome deb again
rm google-chrome*.deb
 
# Disable nautilus desktop
gsettings set org.gnome.desktop.background show-desktop-icons false
