#!/bin/bash                                                                                                                                                                                                  
 
set -u
set -e
set -o pipefail

# Spotify repo
sudo bash -c 'echo deb http://repository.spotify.com stable non-free >> /etc/apt/sources.list'
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59

sudo apt-get update

# Spotify
sudo apt-get install -y spotify-client

# Dropbox
wget https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_1.6.0_amd64.deb -O dropbox.deb
sudo dpkg -i dropbox.deb
rm dropbox.deb

sudo apt-get install filezilla gimp inkscape blender audacity
