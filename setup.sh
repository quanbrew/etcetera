#!/bin/bash
git pull
git submodule init
git submodule update
./link.sh
