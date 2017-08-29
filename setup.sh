DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $DIR
git pull
git submodule init
git submodule update
$DIR/link.sh
