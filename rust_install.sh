#!/bin/bash

# things to install
log_file=~/install_progress_log.txt

# rust 
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
if type -p rustc &> /dev/null; then
  echo "rust installed" >> $log_file
else
  echo "rust failed to install" >> $log_file
fi

# bat (cargo)
sudo apt -y install bat
if type -p bat &> /dev/null; then
  echo "bat installed" >> $log_file
else
  echo "bat failed to install" >> $log_file
fi

# exa (cargo)
sudo apt -y install exa
if type -p bat &> /dev/null; then
  echo "exa installed" >> $log_file
else
  echo "exa failed to install" >> $log_file
fi

# delta (cargo)
sudo apt -y install delta-git
if type -p delta &> /dev/null; then
  echo "delta-git installed" >> $log_file
else
  echo "delta-git failed to install" >> $log_file
fi

# ripgrep (cargo)
sudo apt -y install ripgrep
if type -p rg &> /dev/null; then
  echo "delta-git installed" >> $log_file
else
  echo "delta-git failed to install" >> $log_file
fi

# cargo-watch (cargo)
cargo install cargo-watch
if type -p cargo-watch &> /dev/null; then
  echo "cargo-watch installed" >> $log_file
else
  echo "cargo-watch failed to install" >> $log_file
fi

# alacritty 
git clone https://github.com/alacritty/alacritty.git
cd alacritty

rustup override set stable
rustup update stable

apt-get install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3

cargo build --release

sudo cp target/release/alacritty /usr/local/bin # or anywhere else in $PATH
sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
sudo desktop-file-install extra/linux/Alacritty.desktop
sudo update-desktop-database

cd ~/

cd ~/dotfiles

rm ~/.config/alacritty
mv alacritty ~/.config/
