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
sudo apt-get install fish git curl beekeeper-studio -y
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
echo "[5/5] Downloading NVM..."
# ==========

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash




# ==========
# DONE
# ==========
echo "Done!"