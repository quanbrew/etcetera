NOW=$(cd `dirname $0`; pwd)
cd $NOW
git pull
git submodule init
git submodule update
ln -sf $NOW/.vimrc $HOME/.vimrc
ln -sf $NOW/.tmux.conf.local $HOME/.tmux.conf.local
ln -sf $NOW/.tmux/.tmux.conf $HOME/.tmux.conf

