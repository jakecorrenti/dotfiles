#!/bin/bash

# things to install
log_file=~/install_progress_log.txt
sudo dnf -y update

# git
sudo dnf -y install git
if type -p git &> /dev/null; then
  echo "git installed" >> $log_file
else
  echo "git failed to install" >> $log_file
fi

# curl
sudo dnf -y install curl
if type -p curl &> /dev/null; then
  echo "curl installed" >> $log_file
else
  echo "curl failed to install" >> $log_file
fi

# python
sudo dnf -y install python3
if type -p python3 &> /dev/null; then
  echo "python3 installed" >> $log_file
else
  echo "python3 failed to install" >> $log_file
fi

# rust 
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
if type -p rustc &> /dev/null; then
  echo "rust installed" >> $log_file
else
  echo "rust failed to install" >> $log_file
fi

# clangd
sudo dnf -y install clang
if type -p clang &> /dev/null; then
  echo "clang installed" >> $log_file
else
  echo "clang failed to install" >> $log_file
fi

# neovim
sudo dnf -y install neovim python3-neovim
if type -p nvim &> /dev/null; then
  echo "neovim installed" >> $log_file
else
  echo "neovim failed to install" >> $log_file
fi

# tmux
sudo dnf -y install tmux
if type -p tmux &> /dev/null; then
  echo "tmux installed" >> $log_file
else 
  echo "tmux failed to install" >> $log_file
fi

# i3
sudo dnf -y install i3 i3status dmenu 
if type -p i3 &> /dev/null; then
  echo "i3 installed" >> $log_file
else
  echo "i3 failed to install" >> $log_file
fi

if type -p i3status &> /dev/null; then
  echo "i3status installed" >> $log_file
else
  echo "i3status failed to install" >> $log_file
fi

if type -p dmenu &> /dev/null; then
  echo "dmenu installed" >> $log_file
else
  echo "dmenu failed to install" >> $log_file
fi

# zsh
sudo dnf -y install zsh
if type -p zsh &> /dev/null; then
  echo "zsh installed" >> $log_file
else
  echo "zsh failed to install" >> $log_file
fi

chsh -s $(which zsh)

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# bat (cargo)
sudo dnf -y install bat
if type -p bat &> /dev/null; then
  echo "bat installed" >> $log_file
else
  echo "bat failed to install" >> $log_file
fi

# exa (cargo)
sudo dnf -y install exa
if type -p bat &> /dev/null; then
  echo "exa installed" >> $log_file
else
  echo "exa failed to install" >> $log_file
fi

# delta (cargo)
sudo dnf -y install delta-git
if type -p delta &> /dev/null; then
  echo "delta-git installed" >> $log_file
else
  echo "delta-git failed to install" >> $log_file
fi

# ripgrep (cargo)
sudo dnf -y install ripgrep
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

sudo dnf -y install cmake freetype-devel fontconfig-devel libxcb-devel libxkbcommon-devel g++

cargo build --release

sudo cp target/release/alacritty /usr/local/bin # or anywhere else in $PATH
sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
sudo desktop-file-install extra/linux/Alacritty.desktop
sudo update-desktop-database

cd ~/

# dotfiles
  # neovim
  # .gitconfig
  # tmux
  # .zshrc
  # alacritty
  # i3
