sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade



# ==========
# Installing packages
# REMOVE = sudo apt-get remove {package_name}
# ==========

sudo apt install synaptic preload bleachbit ulauncher gnome-tweak-tool chrome-gnome-shell chromium-browser -y

sudo snap install spotify discord whatsdesk hey-mail postman beekeeper-studio insomnia
### todo: update to stable when launched
sudo snap install 1password --edge

### Installing OMGZSH
chsh -s /usr/bin/zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"



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

echo "
	$fg_bold[white]v^v^v^v^v^v^
	$fg_bold[yellow]--> $fg_bold[red]MANUAL INSTALL DROPBOX
	$fg_bold[yellow]--> $fg_bold[white]Save to /Downloads: $fg_bold[yellow]https://www.dropbox.com/install-linux
	$fg_bold[yellow]--> $fg_bold[green]sudo dpkg -i ~/Downloads/dropbox_2020.03.04_amd64.deb
	$fg_bold[white]v^v^v^v^v^v^
"

echo "
	$fg_bold[red]v^v^v^v^v^v^
	$fg_bold[yellow]--> $fg_bold[red]MANUAL INSTALL GITHUB DESKTOP
	$fg_bold[yellow]--> $fg_bold[red]Save to /Downloads: $fg_bold[yellow]https://github.com/shiftkey/desktop/releases
	$fg_bold[yellow]--> $fg_bold[green]sudo dpkg -i ~/Downloads/GitHubDesktop-linux-2.5.7-linux1.deb
	$fg_bold[red]v^v^v^v^v^v^
"

echo "
	$fg_bold[red]v^v^v^v^v^v^
	$fg_bold[yellow]--> $fg_bold[red]MANUAL INSTALL FLATPACK
	$fg_bold[yellow]--> $fg_bold[red]Save to /Downloads: $fg_bold[yellow]https://flatpak.org/setup/Ubuntu/
	$fg_bold[yellow]--> $fg_bold[green]Don't forget flathub
	$fg_bold[red]v^v^v^v^v^v^
"
