#!/bin/bash

# things to install
log_file=~/install_progress_log.txt


# bat (cargo)
cargo install bat
if type -p bat &> /dev/null; then
  echo "bat installed" >> $log_file
else
  echo "bat failed to install" >> $log_file
fi

# exa (cargo)
cargo install exa
if type -p exa &> /dev/null; then
  echo "exa installed" >> $log_file
else
  echo "exa failed to install" >> $log_file
fi

# delta (cargo)
cargo install git-delta
if type -p delta &> /dev/null; then
  echo "delta installed" >> $log_file
else
  echo "delta failed to install" >> $log_file
fi

# ripgrep (cargo)
cargo install ripgrep
if type -p rg &> /dev/null; then
  echo "ripgrep installed" >> $log_file
else
  echo "ripgrep failed to install" >> $log_file
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

dnf install cmake freetype-devel fontconfig-devel libxcb-devel libxkbcommon-devel g++

cargo build --release

sudo cp target/release/alacritty /usr/local/bin # or anywhere else in $PATH
sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
sudo desktop-file-install extra/linux/Alacritty.desktop
sudo update-desktop-database

cd ~/

cd ~/dotfiles

rm ~/.config/alacritty
mv alacritty ~/.config/

cd ~/
rm -rf ~/dotfiles

echo "######### SUMMARY ########"
cat $log_file
rm $log_file
