# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash, include .bashrc if it exists
if [ -n "$BASH_VERSION" ]; then
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

export PATH=/usr/local/bin:/bin:/usr/bin:/usr/sbin:/usr/local/sbin:/sbin:$HOME/.local/bin:$HOME/Library/Python/3.7/bin:$HOME/dotfiles/scripts

# Set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ]; then
    PATH="$HOME/bin:$PATH"
fi

# non shell-specific exports
export GOPATH=$HOME/code/go_projects
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
export LESS="$LESS --ignore-case -R"
export SSH_KEY_PATH="~/.ssh/id_rsa.pub"
