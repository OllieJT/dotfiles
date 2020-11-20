# OllieJT Dotfiles
Managed with a [homeshick](https://github.com/andsens/homeshick/wiki)) castle

## TODO
- Add Simplenote
- Handle Github SSH auth
- Setup MX Master configuration

## 1. Install Git
```sh
sudo apt install git-all git-gui -y
```
## 2. Install Synaptic Package Manager
```sh
sudo apt install synaptic -y
```

## 3. Install Homeshick
Clone homeshick to your home directory:
```sh
git clone https://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
```
Clone this castle into homeshick:
```sh
$HOME/.homesick/repos/homeshick/bin/homeshick clone olliejt/dotfiles
```
Make sure homeshick is accessible from the terminal:
```sh
printf '\nsource "$HOME/.homesick/repos/homeshick/homeshick.sh"' >> $HOME/.zshrc
```
You can now have homeshick symlink all the dotfiles, but you may have to do this again after installing apps...
```sh
homeshick dotfiles link
```

## 4. Install Core Apps
This script installs apps and libraries that I use on all my setups.
``` sh
	~/.scripts/1-install-core.sh
```

## 5. Install Additional Apps
This script installs apps that I use on most setups - it might need tweaking depending on the distro.
``` sh
	~/.scripts/2-install-additional.sh
```
