# OllieJT Dotfiles
Managed with a [homeshick](https://github.com/andsens/homeshick/wiki)) castle

## Ubuntu / Debian
...or any distro that uses the apt package manager.

```sh
# Install apps
sudo $HOME/.scripts/install-apt.sh

# Or directly
sudo https://raw.githubusercontent.com/OllieJT/dotfiles/master/home/.scripts/install-with-apt.sh | bash

# Confirm dotfiles connection
homeshick dotfiles link
```

## Fedora
...or any distro that uses the dnf package manager.

```sh
# Install apps
sudo $HOME/.scripts/install-dnf.sh
sudo https://raw.githubusercontent.com/OllieJT/dotfiles/master/home/.scripts/install-with-dnf.sh | bash

# Confirm dotfiles connection
homeshick dotfiles link
```





## TODO
- Add Simplenote
- Handle Github SSH auth
- Setup MX Master configuration