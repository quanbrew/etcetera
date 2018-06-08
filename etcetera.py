#!/usr/bin/env python3
import argparse
import os
import subprocess
import shutil


from pathlib import Path

ETC_PATH = os.path.dirname(os.path.realpath(__file__))
HOME = Path.home()

LINK_PATHS = [
    '.vimrc',
    '.tmux.conf',
    '.zshrc',
    '.oh-my-zsh',
    '.tmux.conf.local',
    '.vim',
]

COPY_FILES = [
    '.zshrc.local.sh',
]


def join(*args):
    return os.path.join(*list(map(str, args)))


def run(command, cwd=ETC_PATH):
    print(command)
    subprocess.run(command, cwd=cwd, stdout=subprocess.PIPE)


def remove():
    for item in LINK_PATHS:
        run(['rm', join(HOME, item)])

    for item in COPY_FILES:
        run(['rm', join(HOME, item)])


def copy(src, dest):
    print('copy {} to {}'.format(src, dest))
    shutil.copyfile(str(src), str(dest))


def install_vim_plug():
    src = join(ETC_PATH, 'vim-plug', 'plug.vim')
    dest = join(ETC_PATH, '.vim', 'autoload', 'plug.vim')
    run(['mkdir', '-p', os.path.dirname(dest)])
    copy(src, dest)

def main():
    parser = argparse.ArgumentParser(description='Dot files manager')
    parser.add_argument('--rm', action='store_true', dest='remove', help='Unlink and remove dot files install by etcetera')
    args = parser.parse_args()

    if args.remove:
        remove()
        return

    run(['git', 'pull'])
    run(['git', 'submodule', 'init'])
    run(['git', 'submodule', 'update'])
    run(['cp', join(ETC_PATH, '.tmux', '.tmux.conf'), join(ETC_PATH, '.tmux.conf')])
    install_vim_plug()

    for item in LINK_PATHS:
        run(['ln', '-sfn', join(ETC_PATH, item), join(HOME, item)])

    for item in COPY_FILES:
        src = join(ETC_PATH, item)
        dest = join(HOME, item)
        if not os.path.exists(dest):
            copy(src, dest)
        else:
            print('file {} exists, skip'.format(src))


if __name__ == '__main__':
    main()
