apt-cache policy zsh | grep 'Installed'
if [ $? = 1 ]; then
  sudo apt-get update -y
  sudo apt-get install zsh -y
  wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
  chsh -s `which zsh`
fi

 curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#cp -a ../.vim ~

cp ../zsh-themes/{agnoster.zsh-theme,cobalt2.zsh-theme} ~/.oh-my-zsh/themes/
mv ~/.vimrc ~/.vimrc.backup
mv ~/.zshrc ~/.zshrc.backup
mv ~/.bashrc ~/.bashrc.backup
#cp .vimrc ~ && cp .zshrc ~ # assuming zsh is installed
ln -s ~/configs/.vimrc ~/.vimrc
ln -s ~/configs/.zshrc ~/.zshrc 
ln -s ~/configs/.bashrc ~/.bashrc

source ~/.zshrc

# TODO: provide an option whether the user wants the vim plugins too

