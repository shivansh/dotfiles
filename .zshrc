ZSH_THEME="powerlevel10k/powerlevel10k"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
# Disable marking untracked files under VCS as dirty. This makes repository
# status check for large repositories much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git extract autojump gpg-agent ssh-agent)

# Hotkeys: support for jumping words in terminal using Ctrl + (left/right)
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word

set -o noclobber  # avoid accidental overwrite by redirection
set -o ignoreeof

source $HOME/.powerlevel9k-setup
source $ZSH/oh-my-zsh.sh
[ -f "$HOME/.fzf.zsh" ] && source "$HOME/.fzf.zsh"

for file in $HOME/.{functions,aliases}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file
