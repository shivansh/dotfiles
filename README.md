# rc-Configs
Collection of all the configuration files made to ease and speed up the significant part of my life spent on shell. Well, these serve as a means of procrastination too.

```
                  _________        ____________
______________    __  ____/_______________  __/__(_)______ ________
__  ___/  ___/    _  /    _  __ \_  __ \_  /_ __  /__  __ `/_  ___/
_  /   / /__      / /___  / /_/ /  / / /  __/ _  / _  /_/ /_(__  )
/_/    \___/      \____/  \____//_/ /_//_/    /_/  _\__, / /____/
                                                   /____/
```

On any normal day - <br>
![Workspace-Selection](workspace-selection.png)

---

## Requirements
* neovim/vim
* zsh
* [oh-my-zsh](http://ohmyz.sh/)
* [Powerline fonts](https://github.com/powerline/fonts#powerline-fonts)
* [Vim-Plug](https://github.com/junegunn/vim-plug#installation) (for plugin management)
* CTags

## Installation
The installation script is brief:
```
git clone https://github.com/shivrai/dotfiles.git ~/dotfiles
./env-setup
```
Your current configuration files (_refer next section_) will be backed up and can be referenced later by `*.backup`.

### Custom installation
For cherry-picking, update the list `rc_list` in `env-setup.sh` with all the configuration files that are required.

## ToDo
* ~~**Vim:** Fix key-bindings `<Ctrl-arrow>` in normal mode.~~ [ff6624de](https://github.com/shivrai/dotfiles/commit/ff6624debacbb7cd1b467f74f1c534c616164df9)
* Modularize vim plugin configs
