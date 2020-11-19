sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade



# ==========
# Installing packages
# REMOVE = sudo apt-get remove {package_name}
# ==========

sudo apt install software-properties-common ubuntu-restricted-extras git-all zsh python-dev python3-pip -y

# OMGZSH
chsh -s /usr/bin/zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


# NVM
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.0/install.sh | bash



# ==========
# Setting the Default Shell
# ==========
chsh -s /usr/bin/zsh
$SHELL
