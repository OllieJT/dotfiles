# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022


# SET PATH


PATH=$HOME/.cargo/bin:$PATH:$HOME/.bin:$HOME/.bin/ascii:$GOPATH/bin

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

export PATH



# MISC VARIABLES

export QT_QPA_PLATFORMTHEME="qt5ct"
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
SHELL=/bin/fish
EDITOR=code
BROWSER=firefox
LANG=en_GB.UTF-8

export SHELL EDITOR BROWSER LANG



# DEV VARIABLES
NODE_VERSION=14.15.1
NVM_DIR="$HOME/.nvm"

export NODE_VERSION NVM_DIR



 # LOAD NVM
# source ~/.nvm/nvm.sh