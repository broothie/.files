#! /bin/zsh
set +e

git clone https://github.com/broothie/.files.git "$HOME/.files"
zsh "$HOME/.files/dotfiles-init"
