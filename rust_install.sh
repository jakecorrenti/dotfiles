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

cd ~/
rm -rf ~/dotfiles

echo "######### SUMMARY ########"
cat $log_file
rm $log_files
