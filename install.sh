#! /bin/bash

set -euo pipefail

echo "Symlinking dotfiles . . ."

script_path="$( cd "$(dirname "$0")" ; pwd -P )"

ln -sfv $script_path/.gitignore_global ~/.gitignore_global
ln -sfv $script_path/.rspec ~/.rspec
ln -sfv $script_path/.tern-config ~/.tern-config
ln -sfv $script_path/.tmux.conf ~/.tmux.conf
ln -sfv $script_path/.zshrc ~/.zshrc
ln -sfv $script_path/init.vim ~/.config/nvim/
ln -sfv $script_path/.psqlrc ~/.psqlrc
