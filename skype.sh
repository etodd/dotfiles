#!/bin/bash                                                                                                                                                                                                  
 
set -u
set -e
set -o pipefail

sudo add-apt-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
sudo apt-get update
sudo apt-get install -y skype
