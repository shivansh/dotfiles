#!/usr/bin/env bash
# Script to replicate shell environment of @shivansh.
# NOTE: Some segments have been adapted from "oh-my-zsh/tools/install.sh".

main() {
  # Use colors, but only if connected to a terminal, and that terminal
  # supports them.
  if which tput >/dev/null 2>&1; then
    ncolors=$(tput colors)
  fi
  if [ -t 1 ] && [ -n "$ncolors" ] && [ "$ncolors" -ge 8 ]; then
    RED="$(tput setaf 1)"
    GREEN="$(tput setaf 2)"
    YELLOW="$(tput setaf 3)"
    BLUE="$(tput setaf 4)"
    NORMAL="$(tput sgr0)"
  else
    RED=""
    GREEN=""
    YELLOW=""
    BLUE=""
    NORMAL=""
  fi

  # Only enable exit-on-error after the non-critical colorization stuff,
  # which may fail on systems lacking tput or terminfo.
  set -euo pipefail

  # Place all the required rc files here
  rcList=(".bashrc" ".zshrc" ".profile"
          ".aliases" ".exports" ".functions"
          "powerlevel9k-setup"
          ".conkyrc" "conky-i3bar"
          ".vimrc" ".vim"
          ".xinitrc" ".xmodmap"
          ".gitconfig" ".gitignore_global"); # TODO: fonts/ and .i3/ ??
  backupDir=".backup.configs" # TODO Check for naming conflicts.

  CHECK_ZSH_INSTALLED=$(grep /zsh$ /etc/shells | wc -l)
  if [ ! $CHECK_ZSH_INSTALLED -ge 1 ]; then
    printf "${YELLOW}Zsh is not installed!${NORMAL} Please install zsh first!\n"
    exit 1
  fi
  unset CHECK_ZSH_INSTALLED

  printf "${GREEN}Found zsh!!${NORMAL} Backing up...\n"
  rm -rf "$HOME/$backupDir"
  mkdir -p "$HOME/$backupDir"

  # Check if Oh-My-Zsh exists
  if [[ ! -d "$ZSH" ]]; then
    printf "Installing Oh-My-Zsh\n"
    sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
  else
    # If this user's login shell is not already "zsh", attempt to switch.
    # NOTE: This check is covered by the install script in the above if block.
    TEST_CURRENT_SHELL=$(expr "$SHELL" : '.*/\(.*\)')
    if [[ "$TEST_CURRENT_SHELL" != "zsh" ]]; then
      # If this platform provides a "chsh" command (not Cygwin), do it, man!
      if hash chsh >/dev/null 2>&1; then
        printf "${BLUE}Time to change your default shell to zsh!${NORMAL}\n"
        chsh -s $(grep /zsh$ /etc/shells | tail -1)
        # Else, suggest the user do so manually.
      else
        printf "I can't change your shell automatically because this system does not have chsh.\n"
        printf "${BLUE}Please manually change your default shell to zsh!${NORMAL}\n"
      fi
    fi
  fi

  for rc in "${rcList[@]}"; do
    if [[ -f "$rc" || -L "$rc" ]]; then
      # Remove existing rc files after backing up.
      [[ -f "$HOME/$rc" ]] && mv "$HOME/$rc" "$HOME/$backupDir"
      rm -rf "$HOME/$rc"
    fi
    ln -sf "$(pwd)/$rc" "$HOME/$rc"
  done

  # Setup custom zsh theme.
  rm -rf "$HOME/.oh-my-zsh/custom/themes/powerlevel9k" && \
  ln -sf "$(pwd)/zsh-themes/powerlevel9k" \
    "$HOME/.oh-my-zsh/custom/themes/powerlevel9k"
  # Setup neovim.
  rm -rf "$HOME/.nvimrc" && ln -sf "$(pwd)/.vimrc" "$HOME/.nvimrc"

  printf "${GREEN}Setup successful!${NORMAL}\n"
  env zsh
}

main
