#!/bin/bash                                                                                                                                                                                                  

set -u
set -e
set -o pipefail

install_core=0
install_ycm=0
install_ui=0
install_chrome=0
install_dropbox=0
install_spotify=0
install_skype=0
case "$*" in
(*core*) install_core=1
esac
case "$*" in
(*ycm*) install_ycm=1
esac
case "$*" in
(*ui*) install_ui=1
esac
case "$*" in
(*chrome*) install_chrome=1
esac
case "$*" in
(*dropbox*) install_dropbox=1
esac
case "$*" in
(*spotify*) install_spotify=1
esac
case "$*" in
(*skype*) install_skype=1
esac

if [ $install_ycm -eq 1 ]; then
	sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
	sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
	echo "deb http://download.mono-project.com/repo/debian wheezy main" | sudo tee --append /etc/apt/sources.list.d/mono-xamarin.list
fi

if [ $install_dropbox -eq 1 ]; then
	sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 5044912E
	sudo add-apt-repository "deb http://linux.dropbox.com/ubuntu precise main"
fi

if [ $install_skype -eq 1 ]; then
	sudo add-apt-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
fi

if [ $install_chrome -eq 1 ]; then
	wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
	sudo add-apt-repository "deb http://dl.google.com/linux/chrome/deb/ stable main"
fi

if [ $install_spotify -eq 1 ]; then
	sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59
	sudo add-apt-repository "deb http://repository.spotify.com stable non-free"
fi

sudo apt-get update
sudo apt-get upgrade -y

if [ $install_core -eq 1 ]; then
	# Development tools
	sudo apt-get install -y screen vim git ssh build-essential python-dev python-pip unzip curl cmake
	# Node
	curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.25.2/install.sh | bash
fi

if [ $install_ycm -eq 1 ]; then
	cd ~/.vim/bundle/YouCompleteMe
	./install.sh --clang-completer
fi

if [ $install_ui -eq 1 ]; then
	#i3
	sudo apt-get install -y xterm nautilus eog i3 scrot libglib2.0-bin vim-gtk
	# Disable nautilus desktop
	gsettings set org.gnome.desktop.background show-desktop-icons false
fi

if [ $install_dropbox -eq 1 ]; then
	sudo apt-get install -y dropbox
fi

if [ $install_skype -eq 1 ]; then
	sudo apt-get install -y skype
fi

if [ $install_chrome -eq 1 ]; then
	sudo apt-get install -y google-chrome-stable
fi

if [ $install_spotify -eq 1 ]; then
	sudo apt-get install -y --force-yes spotify-client
fi
