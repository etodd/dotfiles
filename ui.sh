#!/bin/bash                                                                                                                                                                                                  
 
set -u
set -e
set -o pipefail

# Spotify repo
sudo bash -c 'echo deb http://repository.spotify.com stable non-free >> /etc/apt/sources.list'
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59

sudo apt-get update
sudo apt-get upgrade -y
 
#i3
sudo apt-get install i3
 
# Chrome
sudo apt-get install -y libxss1
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb
rm google-chrome*.deb
 
# Spotify
sudo apt-get install -y spotify-client
 
# Dropbox
wget https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_1.6.0_amd64.deb -O dropbox.deb
sudo dpkg -i dropbox.deb
rm dropbox.deb

sudo apt-get install filezilla

sudo apt-get install gimp
