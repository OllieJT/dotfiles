# OllieJT Dotfiles (homeshick)

Based on [Homeshick Castles](https://github.com/andsens/homeshick)

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

Clone castle with: `$HOME/.homesick/repos/homeshick/bin/homeshick clone olliejt/dotfiles`

homeshick will ask you immediately whether you want to symlink the newly cloned castle.
If you agree to that and also agree to it overwriting the existing `.zshrc` you can run
`source $HOME/.zshrc` to get your `homeshick` alias running.

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
