#!/bin/bash                                                                                                                                                                                                  
 
set -u
set -e
set -o pipefail

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 5044912E
sudo add-apt-repository "deb http://linux.dropbox.com/ubuntu precise main"
sudo apt-get update
sudo apt-get install -y dropbox
