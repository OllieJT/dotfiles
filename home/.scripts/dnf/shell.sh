#!/bin/bash
# ==========
# Enabling all repositories and refreshing the software list
# ==========

echo "
☑	-> [1/4] Updating repositories...
"

sudo yum -y update
sudo dnf check-update && sudo dnf upgrade -y && sudo dnf upgrade




# ==========
# INSTALLING DNF PACKAGES
echo "
☑	-> [2/4] Installing dnf package...
"
# ==========

sudo dnf install fish   -y




# ==========
# INSTALLING DEV PACKAGES
echo "
☑	-> [3/4] Installing dev tooling...
"
# ==========

# NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
=

# OH-MY-FISH
curl -L https://get.oh-my.fish | fish
omf install bass




# ==========
# Setting the Default Shell
echo "
☑	-> [4/4] Changing the default shell to fish...
"
# ==========

chsh -s /bin/fish





# ==========
# DONE
# ==========
echo "
Done!
"
