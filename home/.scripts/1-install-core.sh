#!/bin/bash

# ==========
# Enabling all repositories and refreshing the software list
# ==========

sudo sed 's/# deb/deb/' -i /etc/apt/sources.list

sudo add-apt-repository -y universe # For Ubuntu
sudo add-apt-repository -y ppa:deadsnakes/ppa # For Python

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade



# ==========
# Installing packages
# REMOVE = sudo apt-get remove {package_name}
# ==========

sudo apt install software-properties-common ubuntu-restricted-extras git-all zsh python-dev python3-pip -y

# NVM
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.0/install.sh | bash

# OMGZSH
chsh -s /usr/bin/zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# OMGZSH Plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions



# ==========
# Setting the Default Shell
# ==========
chsh -s /usr/bin/zsh
$SHELL
