for file in $HOME/.{exports,functions}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# Set zsh theme specific configuration variables
ZSH_THEME="powerlevel9k/powerlevel9k"
source $HOME/powerlevel9k-setup

# Hotkeys: support for jumping words in terminal using Ctrl + (left/right)
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word

# Use noclobber to avoid accidental file overwriting by redirection
set -o noclobber
set -o ignoreeof

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# Disable marking untracked files under VCS as dirty. This makes repository
# status check for large repositories much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git extract colored-man-pages autojump colorize zsh-syntax-highlighting zsh-autosuggestions gpg-agent ssh-agent vi-mode)

source $ZSH/oh-my-zsh.sh

# Override aliases defined by oh-my-zsh
[ -r "$HOME/.aliases" ] && [ -f "$HOME/.aliases" ] && source "$HOME/.aliases"
