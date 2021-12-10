#!/bin/bash

# things to install
log_file=~/install_progress_log.txt

# git
sudo apt-get install git
if type -p git &> /dev/null; then
  echo "git installed" >> $log_file
else
  echo "git failed to install" >> $log_file
fi

# curl
sudo apt-get install curl
if type -p curl &> /dev/null; then
  echo "curl installed" >> $log_file
else
  echo "curl failed to install" >> $log_file
fi

# cmake
sudo apt-get install cmake
if type -p cmake &> /dev/null; then
  echo "cmake installed" >> $log_file
else
  echo "cmake failed to install" >> $log_file
fi

# python
sudo apt-get install python3
if type -p python3 &> /dev/null; then
  echo "python3 installed" >> $log_file
else
  echo "python3 failed to install" >> $log_file
fi

# clangd
sudo apt-get install clang
if type -p clang &> /dev/null; then
  echo "clang installed" >> $log_file
else
  echo "clang failed to install" >> $log_file
fi

# neovim
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
if type -p nvim &> /dev/null; then
  echo "neovim installed" >> $log_file
else
  echo "neovim failed to install" >> $log_file
fi

# tmux
sudo apt-get install tmux
if type -p tmux &> /dev/null; then
  echo "tmux installed" >> $log_file
else 
  echo "tmux failed to install" >> $log_file
fi

# awesome wm
sudo apt-get install awesome

# xrandr
sudo apt-get install xrandr

# autorandr
sudo apt-get install arandr

# rofi
sudo apt-get install rofi

# rust 
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
if type -p rustc &> /dev/null; then
  echo "rust installed" >> $log_file
else
  echo "rust failed to install" >> $log_file
fi

# SourceCodePro NF Font
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/SourceCodePro.zip
unzip SourceCodePro.zip -d ~/.fonts
fc-cache -fv

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

# awesome
mv awesome ~/.config/

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
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh
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
