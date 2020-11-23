#!/bin/bash
# ==========
# Enabling all repositories and refreshing the software list
# ==========



# ==========
# INSTALLING HOMESHICK
echo "
☑	-> Installing Homeshick Castle
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
# DONE
# ==========
echo "
Done! homeshick dotfiles link
"
