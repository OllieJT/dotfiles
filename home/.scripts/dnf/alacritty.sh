#!/bin/bash
sudo dnf check-update

# ALACRITTY

mkdir $HOME/.local/apps && cd $HOME/.local/apps

# ALACRITTY -> Installs Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
rustup override set stable
rustup update stable




# ALACRITTY -> Install Dependencies
sudo dnf install cmake freetype-devel fontconfig-devel libxcb-devel g++ -y
git clone https://github.com/alacritty/alacritty.git
cd alacritty

# ALACRITTY -> Build App
cargo build --release
sudo tic -xe alacritty,alacritty-direct extra/alacritty.info

# ALACRITTY -> Make Icon
sudo cp target/release/alacritty /usr/local/bin # or anywhere else in $PATH
sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
sudo desktop-file-install extra/linux/Alacritty.desktop
sudo update-desktop-database




# ==========
# DONE
# ==========
echo "
Done!
"
