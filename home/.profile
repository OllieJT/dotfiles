# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022


# SET PATH

PATH=$PATH:$HOME/.bin:$HOME/.bin/ascii:$GOPATH/bin
export PATH



# MISC VARIABLES

SHELL=/bin/zsh
EDITOR=code
BROWSER=chromium
LANG=en_GB.UTF-8

export SHELL EDITOR BROWSER LANG



# DEV VARIABLES
NODE_VERSION=14.15.1
NVM_DIR="$HOME/.nvm"

export NODE_VERSION NVM_DIR



 # LOAD NVM
source ~/.nvm/nvm.sh