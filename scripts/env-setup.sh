# Check if zsh is already installed
# apt-cache policy zsh | grep 'Installed'
# if [ $? = 1 ]; then
#   sudo apt-get update -y
#   sudo apt-get install zsh -y
#   wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
#   chsh -s `which zsh`
# fi

# Install vim-plug
# curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs \
#       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cp ../zsh-themes/{agnoster.zsh-theme,cobalt2.zsh-theme} $HOME/.oh-my-zsh/themes/

# Backup all the existing config files
mv $HOME/.vimrc $HOME/.vimrc.backup
mv $HOME/.zshrc $HOME/.zshrc.backup
mv $HOME/.bashrc $HOME/.bashrc.backup

ln -s $HOME/dotfiles/.vimrc $HOME/.vimrc
ln -s $HOME/dotfiles/.zshrc $HOME/.zshrc
ln -s $HOME/dotfiles/.bashrc $HOME/.bashrc
ln -s $HOME/dotfiles/.xinitrc $HOME/.xinitrc
ln -s $HOME/dotfiles/.xmodmad $HOME/.xmodmap

source $HOME/.zshrc
