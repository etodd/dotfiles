#!/bin/bash                                                                                                                                                                                                  
 
set -u
set -e
set -o pipefail
 
sudo apt-get update
sudo apt-get upgrade -y
 
# Development tools
sudo apt-get install -y screen vim git ssh build-essential python-dev python-pip unzip curl cmake
