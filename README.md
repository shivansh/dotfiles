#rc-Configs
Collection of all the configuration files made to ease and speed up the significant part of my life spent on shell. Well, these serve as a means of procrastination too.

```
                  _________            ____________
______________    __  ____/_______________  __/__(_)______ ________
__  ___/  ___/    _  /    _  __ \_  __ \_  /_ __  /__  __ `/_  ___/
_  /   / /__      / /___  / /_/ /  / / /  __/ _  / _  /_/ /_(__  )
/_/    \___/      \____/  \____//_/ /_//_/    /_/  _\__, / /____/
                                                   /____/
```

##Requirements
* zsh
* [oh-my-zsh](https://github.com/powerline/fonts#powerline-fonts)
* `curl` or `wget`
* [Powerline fonts](https://github.com/powerline/fonts#powerline-fonts)
* [Vim-Plug](https://github.com/junegunn/vim-plug#installation) (for plugin management)
* neovim/vim

##Installation
* Clone the repo and run `bash env-setup.sh`. All your current configuration files will be backed up and can be referenced later by `*.backup`.
* For installing the vim plugins, run `:PlugInstall` from inside your vim buffer (if you are using vim-plug).

##ToDo
* Script for automatically updating symlinks on changing folder name.
* Fix key-bindings `<Ctrl-arrow>` in normal mode.
