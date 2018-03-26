#!/bin/bash                                                                                                                                                                                                 
set -u
set -e
set -o pipefail

sudo apt update

# development tools
sudo apt install -y screen neovim git ssh build-essential python-dev python-pip unzip curl cmake

# i3
sudo apt install -y xterm nautilus eog i3 scrot libglib2.0-bin

# disable nautilus desktop
gsettings set org.gnome.desktop.background show-desktop-icons false
