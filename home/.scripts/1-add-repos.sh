# ==========
# Enabling all repositories and refreshing the software list
# ==========

sudo sed 's/# deb/deb/' -i /etc/apt/sources.list
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade

sudo add-apt-repository -y ppa:agornostal/ulauncher
sudo add-apt-repository -y ppa:deadsnakes/ppa
sudo add-apt-repository -y universe
sudo add-apt-repository -y ppa:teejee2008/timeshift

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade
