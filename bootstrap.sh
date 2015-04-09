#!/usr/bin/env bash


# move into dotfiles working dir
cd "$(dirname "${BASH_SOURCE}")";

# update dotfiles
git pull origin master;

# check if test
if [ "$1" == "--test" ]; then
	TO_DIR="./test/"
else
	TO_DIR="~"
fi

# copy files
rsync --exclude ".git/" --exclude ".gitignore" --exclude ".DS_Store" --exclude "bootstrap.sh" \
      --exclude "README.md" --exclude "LICENSE" --exclude "test/" -av . $TO_DIR;


exit 0
