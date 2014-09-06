#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;
git submodule update --init;

function doIt() {
	rsync --exclude ".git/" --exclude "*.sh" \
		--exclude "README.md" --exclude ".gitmodules" -avh --no-perms . ~;
	source ~/.bash_profile;
	xrdb -merge ~/.Xresources
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;
