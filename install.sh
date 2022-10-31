#!/bin/bash

sudo pacman -S git
sudo pacman -S curl
sudo pacman -S btop
sudo pacman -S neofetch
sudo pacman -S cmake
sudo pacman -S python3
sudo pacman -S clang
sudo pacman -S neovim
sudo pacman -S github-cli
gh auth login
sudo pacman -S tmux
sudo pacman -S i3-gaps
sudo pacman -S i3status
sudo pacman -S arandr
sudo pacman -S rofi
sudo pacman -S btrfs-progs
sudo pacman -S conmon
sudo pacman -S cni-plugins
sudo pacman -S containers-common
sudo pacman -S crun
sudo pacman -S device-mapper
sudo pacman -S glib2
sudo pacman -S glibc
sudo pacman -S go
sudo pacman -S gpgme
sudo pacman -S iptables
sudo pacman -S libassuan
sudo pacman -S libgpg-error
sudo pacman -S libseccomp
sudo pacman -S make
sudo pacman -S pkgconfig
sudo pacman -S libsystemd
sudo pacman -S go-md2man
sudo pacman -S capnproto
sudo pacman -S slirp4netns
sudo pacman -S catatonit
sudo pacman -S unzip
sudo pacman -S nitrogen

# SourceCodePro NF Font
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/SourceCodePro.zip
unzip SourceCodePro.zip -d ~/.fonts
fc-cache -fv

wget https://dl.google.com/go/go1.19.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.19.linux-amd64.tar.gz
rm go1.19.linux-amd64.tar.gz
echo "PATH=$PATH:/usr/local/go/bin" >> ~/.profile
echo "GOPATH=$HOME/go" >> ~/.profile
source ~/.profile

git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

git clone https://github.com/jakecorrenti/dotfiles.git
cd dotfiles

mv nvim ~/.config/

rm -rf ~/.config/i3
mv i3 ~/.config/i3

mv .gitconfig ~/.config/
ln -s ~/.config/.gitconfig ~/.gitconfig

mv .tmux.conf ~/.config/
ln -s ~/.config/.tmux.conf ~/.tmux.conf

rm ~/.bashrc
mv .bashrc ~/.config/
ln -s ~/.config/.bashrc ~/.bashrc

mv README.md ~/.config/

mv rofi ~/.config/

mv resolution_change.sh ~/.config/
ln -s ~/.config/resolution_change.sh ~/resolution_change.sh

mv install.sh ~/.config/
mv rust_install.sh ~/.config/

cd ~/

mv ~/dotfiles/.git ~/.config/

cd ~/

git clone https://github.com/containers/conmon
cd conmon
export GOCACHE="$(mktemp -d)"
make
sudo make podman

cd

git clone https://github.com/opencontainers/runc.git $GOPATH/src/github.com/opencontainers/runc
cd $GOPATH/src/github.com/opencontainers/runc
make BUILDTAGS="selinux seccomp"
sudo cp runc /usr/bin/runc

cd

sudo mkdir -p /etc/containers
sudo curl -L -o /etc/containers/registries.conf https://src.fedoraproject.org/rpms/containers-common/raw/main/f/registries.conf
sudo curl -L -o /etc/containers/policy.json https://src.fedoraproject.org/rpms/containers-common/raw/main/f/default-policy.json

git clone https://github.com/containers/podman/
cd podman
make BUILDTAGS="selinux seccomp"
sudo make install PREFIX=/usr

cd ~/go/src/github.com
mkdir containers
cd containers
gh repo clone podman
cd podman
sudo touch /etc/subuid /etc/subgid
sudo chmod 644 /etc/subuid /etc/subgid
sudo usermod --add-subuids 100000-165535 --add-subgids 100000-165535 jakecorrenti
podman system migrate

cd ~/
gh repo clone dotfiles
cd dotfiles

sudo cp rofi-power-menu /usr/bin/

rm -rf ~/.config/kitty
mv kitty ~/.config/kitty
cd ~/
rm -rf dotfiles/

echo "######## NOTE ########"
echo "restart your terminal before doing rust install script"
