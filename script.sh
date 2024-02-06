#!/bin/bash
sudo apt update && sudo apt upgrade -y
sudo apt install zsh
sudo apt install zsh-syntax-highlighting zsh-autosuggestions
sudo apt install qterminal fonts-firacode gnome-tweaks
chsh -s /bin/zsh
curl -o ~/.zshrc https://raw.githubusercontent.com/Ahmed-Sabri/kali-terminal-in-ubuntu/main/.zshrc
source .zshrc
. .zshrc
git clone https://github.com/linuxopsys/ubuntu-to-kali-terminal.git && cd ubuntu-to-kali-terminal
tar -xvf color-schemes.tar
tar -xvf kali-dark-theme.tar
sudo rm -rf /usr/share/qtermwidget5
sudo mv -f usr/share/qtermwidget5 /usr/share
sudo mv -f usr/share/themes/Kali-Dark /usr/share/themes
exit
