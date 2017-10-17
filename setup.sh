NOW=$(dirname $0)
cd $NOW
git pull
git submodule init
git submodule update
ln -sf .vimrc $NOW/.vimrc
ln -sf .tmux.conf.local $NOW/.tmux.conf.local
ln -sf .tmux/.tmux.conf $NOW/.tmux/.tmux.conf

