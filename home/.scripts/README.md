# OllieJT Dotfiles (homeshick)

Based on [Homeshick](https://github.com/andsens/homeshick)

## Todo

 - Find todo manager
 - Handle github SSH auth
 - Install Flatpack
 - Setup / Repair for MX Master Mouse

## Install

homeshick is installed to your own home directory and does not require root privileges to be installed.

``` sh
git clone https://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
```

To invoke homeshick, source the `homeshick.sh` script from your rc-script:

``` sh
# from sh and its derivates (bash, dash, ksh, zsh etc.)
printf '\nsource "$HOME/.homesick/repos/homeshick/homeshick.sh"' >> $HOME/.zshrc
```

## Reminders

### Creating new scripts

Repair file permissions for a script with: `chmod +x script_name.sh`

### Run a script

Place this .scripts folder int he home directory and run:

``` sh
	~/.scripts/1-add-repos.sh
	~/.scripts/2-install-dependencies.sh
	~/.scripts/3-install-auto.sh
```
