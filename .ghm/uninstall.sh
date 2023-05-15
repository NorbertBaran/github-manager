#!/usr/bin/bash
config=/home/$USER/.ghm/config.sh
source $config

read -p "Do you really want to uninstall ghm? [y/n]: " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
if [ -d $path ]; then
    sudo rm -r $path
fi

if [ -f $link ]; then
    sudo rm $link
fi

read -p "GitHub Manager uses GitHub CLI do you also want to remove it? [y/n]: " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
sudo apt remove gh
sudo apt autoremove