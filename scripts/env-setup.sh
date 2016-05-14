# TODO: Take into account whether zsh is installed or not.
# Find a way of checking whether zsh is installed.

mv ~/.vimrc ~/.vimrc.backup && mv ~/.zshrc ~/.zshrc.backup
cp .vimrc ~ && cp .zshrc ~ # assuming zsh is installed

source ~/.zshrc

# TODO: provide an option whether the user wants the vim plugins too

cp .vim ~
