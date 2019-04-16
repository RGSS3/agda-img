#!/bin/bash
apt install emacs -y
export INSTALLATION_PATH=~/SDK
cabal update
cabal install alex happy cpphs
cabal install --allow-newer Agda
agda-mode setup
agda-mode compile
mkdir -p $INSTALLATION_PATH
git clone https://github.com/agda/agda-stdlib.git $INSTALLATION_PATH/agda-stdlib/
rm INSTALLATION_PATH/agda-stdlib/src/index.agda
mkdir ~/.agda
echo "$INSTALLATION_PATH/agda-stdlib/standard-library.agda-lib" >> ~/.agda/libraries
echo "standard-library" >> ~/.agda/defaults
