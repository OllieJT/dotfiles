
# Homeshick autocompletion
source "$HOME/.homesick/repos/homeshick/completions/homeshick.fish"

function fish_greeting
    neofetch
end

function config
	/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME
end

function pip
	pip3
end

function gitui
	git citool
end


# set --export PATH $PATH:$HOME/.bin:$HOME/.bin/ascii:$GOPATH/bin
set --export PATH /usr/local/bin /usr/sbin /usr/.nvm/versions/node/v14.15.1/bin $PATH


# set PATH so it includes user's private bin if it exists
# if [ -d "$HOME/bin" ] ; then PATH="$HOME/bin:$PATH" fi
# if [ -d "$HOME/.local/bin" ] ; then PATH="$HOME/.local/bin:$PATH" fi
. "$HOME/.homesick/repos/homeshick/homeshick.fish"