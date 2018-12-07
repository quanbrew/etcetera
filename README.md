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

fzf htop tmux httpie yarn jq wget you-get