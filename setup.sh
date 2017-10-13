cd $(dirname $0)
git pull
git submodule init
git submodule update
ln -sf .vimrc $HOME/.vimrc
ln -sf .tmux.conf.local $HOME/.tmux.conf.local
ln -sf .tmux/.tmux.conf $HOME/.tmux.conf

