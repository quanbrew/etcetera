# etcetera

This project includes [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) and [gpakosz/.tmux](https://github.com/gpakosz/.tmux), see that projects README respectively to learn more.

## Install and update

```shell
# Install fzf first
git clone https://github.com/quanbrew/etcetera.git .etcetera 
./.etcetera/etcetera.py
chsh -s $(which zsh) # optional
```

Open vim (at least version 8): `PlugInstall`

### Remove all configure

```shell
./.etcetera/etcetera.py --rm
```

## Recommend Programs

`ctags fzf htop tmux httpie yarn jq wget you-get p7zip`

## vim

<kbd>space</kbd>: vim **leader** key.

<kbd>leader</kbd> + <kbd>N</kbd>: toggle line number display.

<kbd>leader</kbd> + <kbd>P</kbd>: enable paste mode.

<kbd>leader</kbd> + <kbd>/</kbd>: commit it.

<kbd>leader</kbd> + <kbd>t</kbd>: toggle tagbar.

<kbd>leader</kbd> + <kbd>w</kbd>: write file with sudo.

## Plugin

* [surround.vim](https://github.com/tpope/vim-surround)
* [vim-sneak](https://github.com/justinmk/vim-sneak)
