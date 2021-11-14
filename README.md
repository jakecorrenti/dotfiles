# dotfiles

**NOTE**: This install script assumes that you are using fedora. However, if you would like to use this script for something like Ubuntu, just change dnf to apt, and change the install script for neovim, alacritty, and the gh cli (each install instructions can be located at their respective repositories)

### Ensure curl is installed
`$ sudo -y dnf install curl`

### Install the basic tools and languages
`$ bash -c "$(curl -#fL raw.github.com/jakecorrenti/dotfiles/main/install.sh)"`

### Restart your terminal and then install all of the Rust tools
`$ bash -c "$(curl -#fL raw.github.com/jakecorrenti/dotfiles/main/rust_install.sh)"`
