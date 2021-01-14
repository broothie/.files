
cd "$HOME/.files"

git commit -am "${1:-updates}"
git push
