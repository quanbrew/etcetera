#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


cd $DIR
ln -sf $DIR/.vimrc $HOME/.vimrc
ln -sf $DIR/.tmux.conf.local $HOME/.vimrc
ln -sf $DIR/.tmux.conf $HOME/.tmux.conf




