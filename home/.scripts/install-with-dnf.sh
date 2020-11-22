#!/bin/bash
# ==========
# Enabling all repositories and refreshing the software list
# ==========

echo "
☑	-> [1/6] Updating repositories...
"

# 1PASSWORD
# Adds 1Password Key
sudo rpm --import https://downloads.1password.com/linux/keys/1password.asc
# Adds 1Password Repo
sudo sh -c 'echo -e "[1password]\nname=1Password\nbaseurl=https://downloads.1password.com/linux/rpm\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=https://downloads.1password.com/linux/keys/1password.asc" > /etc/yum.repos.d/1password.repo'

# ALBERT
# Adds Albert Key
sudo rpm --import https://build.opensuse.org/projects/home:manuelschneid3r/public_key
# Adds Albert Repo
dnf config-manager --add-repo https://download.opensuse.org/repositories/home:manuelschneid3r/Fedora_32/home:manuelschneid3r.repo

# PIDGIN
sudo wget http://rpm.pidgin.im/fedora/pidgin.repo -O /etc/yum.repos.d/pidgin.repo
sudo yum -y update
sudo yum -y install pidgin

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrep



dnf check-update
dnf upgrade -y
dnf system-upgrade




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

dnf copr enable pschyska/alacritty

sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y

sudo dnf install @multimedia 1password albert fish util-linux-user alacritty -y



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