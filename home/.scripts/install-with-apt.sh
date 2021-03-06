#!/bin/bash
# ==========
# Enabling all repositories and refreshing the software list
# ==========

echo "
☑	-> [1/6] Updating repositories...
"

# Enables all repositories
# sudo sed 's/# deb/deb/' -i /etc/apt/sources.list

sudo add-apt-repository -y universe # Ubuntu
sudo add-apt-repository -y ppa:deadsnakes/ppa focal # Python
sudo add-apt-repository -y ppa:fish-shell/release-3 # Fish

# 1PASSWORD
# Adds 1Password Key
sudo apt-key --keyring /usr/share/keyrings/1password.gpg adv --keyserver keyserver.ubuntu.com --recv-keys 3FEF9748469ADBE15DA7CA80AC2D62742012EA22
# Adds 1Password Repo
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/1password.gpg] https://downloads.1password.com/linux/debian edge main' | sudo tee /etc/apt/sources.list.d/1password.list

# BEEKEEPER_STUDIO
# Adds Beekeeper Studio Key
wget --quiet -O - https://bintray.com/user/downloadSubjectPublicKey?username=bintray | sudo apt-key add -
# Adds Beekeeper Studio Repo
echo "deb https://dl.bintray.com/beekeeper-studio/releases disco main" | sudo tee /etc/apt/sources.list.d/beekeeper-studio.list

# ALBERT
# Adds Albert Key
echo 'deb http://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_20.10/ /' | sudo tee /etc/apt/sources.list.d/home:manuelschneid3r.list
# Adds Albert Repo
curl -fsSL https://download.opensuse.org/repositories/home:manuelschneid3r/xUbuntu_20.10/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_manuelschneid3r.gpg > /dev/null



sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade




# ==========
# INSTALLING APT PACKAGES
echo "
☑	-> [2/6] Installing apt packages...
"
# ----------
# DISABLED
# ☑ python-dev
# ☑ python3-pip
# ☑ synaptic
# ==========

sudo apt-get install software-properties-common ubuntu-restricted-extras flatpak -y
sudo apt-get install fish git curl beekeeper-studio python-dev python3-pip python3 -y
sudo apt-get install 1password albert preload pidgin pidgin-plugin-pack -y

# REMOVE = sudo apt-get remove {package_name}




# ==========
# INSTALLING FLATPACK PACKAGES
echo "
☑	-> [3/6] Installing flatpack packages...
"
# ==========

sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak install com.spotify.Client com.dropbox.Client com.discordapp.Discord  com.getpostman.Postman org.gnome.gitg com.visualstudio.code -y




# ==========
# INSTALLING DEV PACKAGES
echo "
☑	-> [4/6] Installing dev tooling...
"
# ==========

# NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

# ALACRITTY

mkdir $HOME/.local/apps
cd $HOME/.local/apps

# ALACRITTY -> Installs Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
rustup override set stable
rustup update stable

# ALACRITTY -> Install Dependencies
sudo apt-get install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev -y

git clone https://github.com/alacritty/alacritty.git
cd alacritty

# ALACRITTY -> Build App
cargo build --release
sudo tic -xe alacritty,alacritty-direct extra/alacritty.info

# ALACRITTY -> Make Icon
sudo cp target/release/alacritty /usr/local/bin # or anywhere else in $PATH
sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
sudo desktop-file-install extra/linux/Alacritty.desktop
sudo update-desktop-database




# ==========
# INSTALLING HOMESHICK
echo "
☑	-> [5/6] Installing Homeshick Castle
"
# ==========

# HOMESHICK -> Install
cd $HOME
git clone https://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick

# HOMESHICK -> Clone Castle
$HOME/.homesick/repos/homeshick/bin/homeshick clone olliejt/dotfiles
printf '\nsource "$HOME/.homesick/repos/homeshick/homeshick.sh"' >> $HOME/.bashrc

# HOMESHICK -> Symlink
homeshick dotfiles link




# ==========
# Setting the Default Shell
echo "
☑	-> [6/6] Changing the default shell to fish...
"
# ==========

chsh -s $SHELL
curl -L https://get.oh-my.fish | fish
fish
omf install bass





# ==========
# DONE
# ==========
echo "
Done!
"