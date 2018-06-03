set -ex
CURRENT=$(pwd)
ETCETERA=$(cd `dirname $0`; pwd)
cd $ETCETERA
git pull
git submodule init
git submodule update
# ZSH
ln -sf $ETCETERA/oh-my-zsh $HOME/.oh-my-zsh
ln -sf $ETCETERA/.zshrc $HOME/.zshrc
ln -sf $ETCETERA/.zshrc.local.sh $HOME/.zshrc.local.sh

# Vim
ln -sf $ETCETERA/.vimrc $HOME/.vimrc

# tmux
ln -sf $ETCETERA/.tmux.conf.local $HOME/.tmux.conf.local
ln -sf $ETCETERA/.tmux/.tmux.conf $HOME/.tmux.conf
cd $CURRENT