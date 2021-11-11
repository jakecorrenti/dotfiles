#!/bin/bash

# things to install
log_file=~/install_progress_log.txt
sudo apt -y update

# git
sudo apt -y install git
if type -p git &> /dev/null; then
  echo "git installed" >> $log_file
else
  echo "git failed to install" >> $log_file
fi

# curl
sudo apt -y install curl
if type -p curl &> /dev/null; then
  echo "curl installed" >> $log_file
else
  echo "curl failed to install" >> $log_file
fi

# python
sudo apt -y install python3
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
sudo apt -y install clang
if type -p clang &> /dev/null; then
  echo "clang installed" >> $log_file
else
  echo "clang failed to install" >> $log_file
fi

# neovim
sudo apt -y install neovim 
if type -p nvim &> /dev/null; then
  echo "neovim installed" >> $log_file
else
  echo "neovim failed to install" >> $log_file
fi

# tmux
sudo apt -y install tmux
if type -p tmux &> /dev/null; then
  echo "tmux installed" >> $log_file
else 
  echo "tmux failed to install" >> $log_file
fi

# i3
sudo apt -y install i3 i3status dmenu 
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
sudo apt -y install zsh
if type -p zsh &> /dev/null; then
  echo "zsh installed" >> $log_file
else
  echo "zsh failed to install" >> $log_file
fi

chsh -s $(which zsh)

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

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

# dotfiles
git clone https://github.com/jakecorrenti/dotfiles.git

cd dotfiles

# neovim
rm ~/.config/nvim
mv nvim ~/.config/

# alacritty
rm ~/.config/alacritty
mv alacritty ~/.config/

# i3
rm ~/.config/i3
mv i3 ~/.config/

# .gitconfig
rm ~/.gitconfig
mv .gitconfig ~/.config/
ln -s ~/.config/.gitconfig ~/.gitignore

# tmux
rm ~/.tmux.conf
mv .tmux.conf ~/.config/
ln -s ~/.config/.tmux.conf ~/.tmux.conf

# .zshrc
rm ~/.zshrc
mv .zshrc ~/.config/
ln -s ~/.config/.zshrc ~/.zshrc

cd ~/

echo "######### SUMMARY ########"
cat $log_file
