#!/bin/bash
# ==========
# Enabling all repositories and refreshing the software list
# ==========

echo "[1/5] Updating repositories..."

# Enables all repositories
sudo sed 's/# deb/deb/' -i /etc/apt/sources.list

sudo add-apt-repository -y universe # Ubuntu
sudo add-apt-repository -y ppa:deadsnakes/ppa # Python
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
# Adds Albert Repo

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade




# ==========
# INSTALLING APT PACKAGES
echo "[2/5] Installing apt packages..."
# ----------
# DISABLED
# ☑ python-dev
# ☑ python3-pip
# ☑ synaptic
# ==========

sudo apt-get install software-properties-common ubuntu-restricted-extras flatpak -y
sudo apt-get install fish git curl beekeeper-studio python-dev python3-pip python3 -y
sudo apt-get install 1password preload pidgin pidgin-plugin-pack -y

# REMOVE = sudo apt-get remove {package_name}




# ==========
# INSTALLING FLATPACK PACKAGES
echo "[3/5] Installing flatpack packages..."
# ==========

sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak flatpack com.spotify.Client com.dropbox.Client com.discordapp.Discord  com.getpostman.Postman org.gnome.gitg com.visualstudio.code -y




# ==========
# Setting the Default Shell
echo "[4/5] Changing the default shell to fish..."
# ==========

chsh -s $SHELL
curl -L https://get.oh-my.fish | fish
fish
omf install bass




# ==========
# INSTALLING DEV PACKAGES
echo "[5/5] Installing dev tooling..."
# ==========

# NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

# ALACRITTY

mkdir ~/.local/apps
cd ~/.local/apps

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
# DONE
# ==========
echo "Done!"