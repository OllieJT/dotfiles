#!/bin/bash

# ==========
# Enabling all repositories and refreshing the software list
# ==========

sudo add-apt-repository -y ppa:agornostal/ulauncher
sudo add-apt-repository -y ppa:teejee2008/timeshift


sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade



# ==========
# Installing packages
# REMOVE = sudo apt-get remove {package_name}
# ==========

sudo apt install preload bleachbit ulauncher gnome-tweak-tool chrome-gnome-shell chromium-browser flatpak -y

sudo snap install whatsdesk hey-mail beekeeper-studio insomnia
sudo snap install 1password --edge ### todo: update to stable when launched

# Flatpaks
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

sudo flatpak flatpack com.spotify.Client com.dropbox.Client com.discordapp.Discord  com.getpostman.Postman -y

# ==========
# Installing Python Packages
# ==========

pip3 install pygithub



# ==========
# Setting up Easy RSA
# ==========
# sudo apt install easy-rsa -y
# mkdir ~/.config/easy-rsa
# ln -s /usr/share/easy-rsa/* ~/.config/easy-rsa/
# chmod 700 ~/.config/easy-rsa/


# ==========
# Manual Installations
# sudo dpkg -i package_name.deb
# ==========


# echo "$fg_bold[red]v^v^v^v^v^v^
# $fg_bold[yellow]--> $fg_bold[red]MANUAL INSTALL GITHUB DESKTOP
# $fg_bold[yellow]--> $fg_bold[red]Save to /Downloads: $fg_bold[yellow]https://github.com/shiftkey/desktop/releases
# $fg_bold[yellow]--> $fg_bold[green]sudo dpkg -i ~/Downloads/GitHubDesktop-linux-2.5.7-linux1.deb
# $fg_bold[red]v^v^v^v^v^v^"