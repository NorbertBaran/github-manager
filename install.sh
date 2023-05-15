#!/usr/bin/bash
source .ghm/config.sh

sudo apt install gh -y

if [ -d $path ]; then
    sudo rm -r $path
fi
mkdir $path
cp -r .ghm/* $path

if [ -f $link ]; then
    sudo rm $link
fi
sudo ln -s $path/ghm.sh $link

echo "GitHub Manager installation finished. Use ghm --help to see more"