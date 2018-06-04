set -ex
ETCETERA=$(cd `dirname $0`; pwd)
cd $ETCETERA
git pull
git submodule init
git submodule update
# ZSH
ln -sf $ETCETERA/oh-my-zsh $HOME/.oh-my-zsh
ln -sf $ETCETERA/.zshrc $HOME/.zshrc
cp -n $ETCETERA/.zshrc.local.sh $HOME/.zshrc.local.sh

# Vim
ln -sf $ETCETERA/.vimrc $HOME/.vimrc

# tmux
ln -sf $ETCETERA/.tmux.conf.local $HOME/.tmux.conf.local
ln -sf $ETCETERA/.tmux/.tmux.conf $HOME/.tmux.conf
