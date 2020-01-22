# FIXME: ~/.profile isn't loading by default in OSX.
source $HOME/.profile

ZSH_THEME="powerlevel9k/powerlevel9k"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# Disable marking untracked files under VCS as dirty. This makes repository
# status check for large repositories much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git extract colored-man-pages autojump gpg-agent ssh-agent sudo)

# Hotkeys: support for jumping words in terminal using Ctrl + (left/right)
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word

# Use noclobber to avoid accidental file overwriting by redirection
set -o noclobber
set -o ignoreeof

for file in $HOME/.{exports,functions,aliases}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

source $HOME/powerlevel9k-setup
source $ZSH/oh-my-zsh.sh
[ -f "$HOME/.fzf.zsh" ] && source "$HOME/.fzf.zsh"

# Initialize the completion system.
# Ref:
# - https://github.com/wting/autojump/issues/178#issuecomment-13388627
# - http://zsh.sourceforge.net/Doc/Release/Completion-System.html
autoload -U compinit && compinit
