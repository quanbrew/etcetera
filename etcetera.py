#!/usr/bin/env python3
import argparse
import os
import subprocess
import shutil

from os.path import join
from pathlib import Path

ETC_PATH = os.path.dirname(os.path.realpath(__file__))
HOME = Path.home()

LINK_PATHS = [
    '.vimrc',
    '.tmux.conf',
    '.zshrc',
    '.oh-my-zsh',
    '.tmux.conf.local',
]

COPY_FILES = [
    '.zshrc.local.sh',
]


def run(command, cwd=ETC_PATH):
    print(command)
    subprocess.run(command, cwd=cwd, stdout=subprocess.PIPE)


def remove():
    for item in LINK_PATHS:
        run(['rm', join(HOME, item)])

    for item in COPY_FILES:
        run(['rm', join(HOME, item)])

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

    for item in LINK_PATHS:
        run(['ln', '-sf', join(ETC_PATH, item), join(HOME, item)])

    for item in COPY_FILES:
        src = join(ETC_PATH, item)
        dest = join(HOME, item)
        if not os.path.exists(dest):
            print(f'copy {src} to {dest}')
            shutil.copyfile(src, dest)


if __name__ == '__main__':
    main()
