#!/bin/bash
alias sudo=doas
LIST_OF_APPS="tmux vim ssh git htop zsh"
sudo apt update
sudo apt install "$LIST_OF_APPS"

echo "Moving config files..."
cp ./.tmux.conf ./.profile ./.vimrc ./.zshrc -t $HOME

if [[ -d "$HOME/.doom.d" ]] ; then
    echo "Moving init.el to .doom.d"
    cp ./init.el -t $HOME/.doom.d
fi

read -p "Do you want to instaal tablet/laptop-modes? [y/n]" answer

if [[ "$asnwer" == "y" ]] ; then
    echo "Moving scripts..."
    sudo cp ./tablet-mode/tablet-mode.sh -t /usr/local/bin/
    sudo cp ./laptop-mode/laptop-mode.sh -t /usr/local/bin/
    sudo chmod +x /usr/local/bin/laptop-mode.sh
    sudo chmod +x /usr/local/bin/tablet-mode.sh

    echo "Creating apps"
    sudo cp ./tablet-mode/tablet-mode.desktop -t /usr/share/applications/
    sudo cp ./laptop-mode/laptop-mode.desktop -t /usr/share/applications/

    echo "Moving Icons"
    sudo mkdir /usr/share/icons/mods
    sudo cp ./icons/* -t /usr/icons/mods/
fi

echo "Done!"

if [[ "$answer" == "y" ]] ; then
    echo "Please log out and then log in"
fi
