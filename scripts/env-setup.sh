#!/bin/bash

# Check if zsh is already installed
apt-cache policy zsh | grep 'Installed' > /dev/null 2>&1

if [[ $? -ne 0 ]]; then
  echo 'zsh is not installed!! Please install it first.'
else
  # Backup all the existing config files
  echo 'Backing up...'
  mv $HOME/.vimrc $HOME/.vimrc.backup
  mv $HOME/.zshrc $HOME/.zshrc.backup
  mv $HOME/.bashrc $HOME/.bashrc.backup

  echo 'Updating...'
  ln -s $HOME/configs/.vimrc $HOME/.vimrc
  ln -s $HOME/configs/.zshrc $HOME/.zshrc
  ln -s $HOME/configs/.bashrc $HOME/.bashrc
  ln -s $HOME/configs/.xinitrc $HOME/.xinitrc
  ln -s $HOME/configs/.xmodmad $HOME/.xmodmap

  source $HOME/.zshrc
  echo 'Success!!'
fi
