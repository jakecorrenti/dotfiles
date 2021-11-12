# dotfiles

**NOTE**: This install script assumes that you are using an ubuntu-based distribution, such as Ubuntu or Pop!_OS. However, if you would like to use this script for something like Fedora, just change apt to dnf, and change the install script for neovim and the gh cli (each install instructions can be located at their respective repositories)

### Ensure curl is installed
`$ sudo apt install curl`

### Install the basic tools and languages
`$ bash -c "$(curl -#fL raw.github.com/jakecorrenti/dotfiles/main/install.sh)"`

### Restart your terminal and then install all of the Rust tools
`$ bash -c "$(curl -#fL raw.github.com/jakecorrenti/dotfiles/main/rust_install.sh)"`
