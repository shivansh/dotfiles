# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

export PATH="/bin:/usr/bin:/usr/local/bin:/usr/sbin:/usr/local/sbin:/sbin:/usr/games:$HOME/arc/arcanist/bin:$HOME/dotfiles/scripts"

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# Load the shell dotfiles

# customize peripherals
touchpad_id=$(bash -c $'xinput | grep "Synaptics TouchPad" | awk \'{print $6}\' | grep -o \'[0-9]*\'')
xinput set-prop $touchpad_id "Device Enabled" 0
unset touchpad_id
xmodmap ~/.xmodmap
xset r rate 200 40

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
