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

export PATH="/bin:/usr/bin:/usr/local/bin:/usr/sbin:/usr/local/sbin:/sbin:/usr/games:$HOME/.local/bin:$HOME/arc/arcanist/bin:$HOME/dotfiles/scripts"

# Set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# Load the shell dotfiles

# Customize peripherals
touchpad_id=$(xinput | grep "Synaptics TouchPad" | sed -E 's/.*id=([0-9]*).*/\1/')
xinput set-prop $touchpad_id "Device Enabled" 0
xmodmap ~/.xmodmap
xset r rate 200 60

# non shell-specific exports
export NODE_PATH=/usr/local/lib/jsctags/:$NODE_PATH
export GOPATH=$HOME/sourceCodes/personalProjects/goProjects
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
export LESS="$LESS --ignore-case -R"
export SSH_KEY_PATH="~/.ssh/id_rsa.pub"
