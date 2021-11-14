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

# cmake
sudo dnf -y install cmake
if type -p cmake &> /dev/null; then
  echo "cmake installed" >> $log_file
else
  echo "cmake failed to install" >> $log_file
fi

# python
sudo dnf -y install python3
if type -p python3 &> /dev/null; then
  echo "python3 installed" >> $log_file
else
  echo "python3 failed to install" >> $log_file
fi

# clangd
sudo dnf -y install clang
if type -p clang &> /dev/null; then
  echo "clang installed" >> $log_file
else
  echo "clang failed to install" >> $log_file
fi

# neovim
dnf copr enable agriffis/neovim-nightly
dnf install -y neovim python3-neovim
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

# i3
rm ~/.config/i3
mv i3 ~/.config/

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

cd ~/

mv ~/dotfiles/.git ~/.config/

# github cli
sudo dnf config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo
sudo dnf install gh
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
