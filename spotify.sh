#!/bin/bash                                                                                                                                                                                                  
 
set -u
set -e
set -o pipefail

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59
sudo add-apt-repository "deb http://repository.spotify.com stable non-free"
sudo apt-get update
sudo apt-get install -y spotify-client
