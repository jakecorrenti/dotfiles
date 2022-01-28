#!/bin/bash

# things to install
log_file=~/install_progress_log.txt

# git
sudo pacman -S install -y git
if type -p git &> /dev/null; then
  echo "git installed" >> $log_file
else
  echo "git failed to install" >> $log_file
fi

# curl
sudo pacman -S install -y curl
if type -p curl &> /dev/null; then
  echo "curl installed" >> $log_file
else
  echo "curl failed to install" >> $log_file
fi

# golang
wget https://dl.google.com/go/go1.17.5.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.17.5.linux-amd64.tar.gz
rm go1.17.5.linux-amd64.tar.gz
echo "PATH=$PATH:/usr/local/go/bin" >> ~/.profile
echo "GOPATH=$HOME/go" >> ~/.profile
source ~/.profile
if type -p go &> /dev/null; then
  echo "golang installed" >> $log_file
else
  echo "golang failed to install" >> $log_file
fi

# htop
sudo pacman -S install -y htop
if type -p htop &> /dev/null; then
  echo "htop installed" >> $log_file
else
  echo "htop failed to install" >> $log_file
fi

# neofetch
sudo pacman -S install -y neofetch
if type -p neofetch &> /dev/null; then
  echo "neofetch installed" >> $log_file
else
  echo "neofetch failed to install" >> $log_file
fi

# cmake
sudo pacman -S install -y cmake
if type -p cmake &> /dev/null; then
  echo "cmake installed" >> $log_file
else
  echo "cmake failed to install" >> $log_file
fi

# python
sudo pacman -S install -y python3
if type -p python3 &> /dev/null; then
  echo "python3 installed" >> $log_file
else
  echo "python3 failed to install" >> $log_file
fi

# clangd
sudo pacman -S install -y clang
if type -p clang &> /dev/null; then
  echo "clang installed" >> $log_file
else
  echo "clang failed to install" >> $log_file
fi

# neovim
sudo pacman -S neovim
if type -p nvim &> /dev/null; then
  echo "neovim installed" >> $log_file
else
  echo "neovim failed to install" >> $log_file
fi

# tmux
sudo pacman -S install -y tmux
if type -p tmux &> /dev/null; then
  echo "tmux installed" >> $log_file
else 
  echo "tmux failed to install" >> $log_file
fi

# awesome wm
sudo pacman -S install -y i3

# xrandr
sudo pacman -S install -y xrandr

# autorandr
sudo pacman -S install -y arandr

# rofi
sudo pacman -S install -y rofi

# packer.nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# rust 
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
if type -p rustc &> /dev/null; then
  echo "rust installed" >> $log_file
else
  echo "rust failed to install" >> $log_file
fi

# ensure that the wifi is updated for fedora
# sudo apt-get -y update iwlax2xx-firmware

# SourceCodePro NF Font
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/SourceCodePro.zip
unzip SourceCodePro.zip -d ~/.fonts
fc-cache -fv

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cd ~/

# dotfiles
git clone https://github.com/jakecorrenti/dotfiles.git

cd dotfiles

# neovim
rm ~/.config/nvim
mv nvim ~/.config/

# .gitconfig
rm ~/.gitconfig
mv .gitconfig ~/.config/
ln -s ~/.config/.gitconfig ~/.gitconfig

# tmux
rm ~/.tmux.conf
mv .tmux.conf ~/.config/
ln -s ~/.config/.tmux.conf ~/.tmux.conf

# .bashrc
rm ~/.bashrc
mv .bashrc ~/.config/
ln -s ~/.config/.bashrc ~/.bashrc

# zshrc
rm ~/.zshrc
mv .zshrc ~/.config/
ln -s ~/.config/.zshrc ~/.zshrc

# awesome
mv i3 ~/.config/

# readme
mv README.md ~/.config/

# rofi
mv rofi ~/.config/

# resolution change script
mv resolution_change.sh ~/.config/
ln -s ~/.config/resolution_change.sh ~/resolution_change.sh

# install scripts
mv install.sh ~/.config/
mv rust_install.sh ~/.config/

cd ~/

mv ~/dotfiles/.git ~/.config/

# github cli
sudo pacman -S github-cli
if type -p gh &> /dev/null; then
  echo "github cli installed" >> $log_file
else
  echo "github cli failed to install" >> $log_file
fi
gh auth login

echo "######### SUMMARY ########"
cat $log_file
rm $log_file

echo "######## NOTE ########"
echo "restart your terminal before doing rust install script"
