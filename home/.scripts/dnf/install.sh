#!/bin/bash
# ==========
# Enabling all repositories and refreshing the software list
# ==========

echo "
☑	-> [1/6] Updating repositories...
"

# Enables tird-party repos
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y

# 1PASSWORD
# Adds 1Password Key
sudo rpm --import https://downloads.1password.com/linux/keys/1password.asc
# Adds 1Password Repo
sudo sh -c 'echo -e "[1password]\nname=1Password\nbaseurl=https://downloads.1password.com/linux/rpm\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=https://downloads.1password.com/linux/keys/1password.asc" > /etc/yum.repos.d/1password.repo'

# ALBERT
# Adds Albert Key
sudo rpm --import https://build.opensuse.org/projects/home:manuelschneid3r/public_key
# Adds Albert Repo
sudo dnf config-manager --add-repo https://download.opensuse.org/repositories/home:manuelschneid3r/Fedora_32/home:manuelschneid3r.repo

# PIDGIN
# sudo wget http://rpm.pidgin.im/fedora/pidgin.repo -O /etc/yum.repos.d/pidgin.repo


sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrep


sudo yum -y update
sudo dnf check-update && sudo dnf upgrade -y && sudo dnf upgrade




# ==========
# INSTALLING DNF PACKAGES
echo "
☑	-> [2/6] Installing dnf packages...
"
# ----------
# DISABLED
# Installed by default: git, curl, python
# ☑ python-dev
# ☑ python3-pip
# ☑ synaptic
# ☑ beekeeper-studio (Requires snap)
# ==========

sudo dnf install @multimedia 1password albert util-linux-user lpf-spotify-client gnome-tweak-tool geary  -y


sudo yum -y install pidgin


# ==========
# INSTALLING FLATPACK PACKAGES
echo "
☑	-> [3/6] Installing flatpack packages...
"
# ==========

sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak install com.discordapp.Discord  com.getpostman.Postman org.gnome.gitg com.visualstudio.code -y





# ==========
# DONE
# ==========
echo "
Done!
"
lpf update
